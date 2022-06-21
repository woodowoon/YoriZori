package com.sp.yorizori.recipe;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.yorizori.common.FileManager;
import com.sp.yorizori.common.dao.CommonDAO;

@Service("recipe.recipeService")
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertRecipe(Recipe dto, String pathname) throws Exception {
		try {
			int seq = dao.selectOne("recipe.recipeseq");
			dto.setRecipeNum(seq);
			
			String saveFilename = fileManager.doFileUpload(dto.getSelectFile(), pathname);
			if(saveFilename != null) {
				dto.setImageFilename(saveFilename);
				
				dao.insertData("recipe.insertRecipe", dto);
				dao.insertData("recipe.insertRecipePhoto", dto);
				
				for (Integer insertingredient : dto.getIngredientCodes()) {
					dto.setIngredientCode(insertingredient);
					
					dao.insertData("recipe.insertingredientList", dto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Override
	public List<Recipe> listcaseCategory(Map<String, Object> map) {
		
		List<Recipe> listcaseCategory = null;
		
		try {
			listcaseCategory = dao.selectList("recipe.listcaseCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listcaseCategory;
	}

	@Override
	public List<Recipe> listcountryCategory(Map<String, Object> map) {
		List<Recipe> listcountryCategory = null;
		
		try {
			listcountryCategory = dao.selectList("recipe.listcountryCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listcountryCategory;
	}

	@Override
	public List<Recipe> listingredient(Map<String, Object> map) {
		List<Recipe> listingredient = null;
		
		try {
			listingredient = dao.selectList("recipe.listingredient", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listingredient;
	}

	@Override
	public List<Recipe> listingredient(int ingredientCode) {
		List<Recipe> list = null;
		
		try {
			list = dao.selectList("recipe.listingredient", ingredientCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("recipe.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<Recipe> listRecipeFeed(Map<String, Object> map) {
		List<Recipe> list = null;
		
		try {
			list = dao.selectList("recipe.listRecipeFeed", map);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public boolean isFollow(Map<String, Object> map) {
		boolean b = false;
		try {
			int result = dao.selectOne("recipe.isFollow", map);
			if(result > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	@Override
	public Recipe readRecipe(int recipeNum) {
		
		Recipe dto = null;
		
		try {
			dto = dao.selectOne("recipe.readRecipe", recipeNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void insertRecipeLike(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("recipe.insertRecipeLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteRecipeLike(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("recipe.deleteRecipeLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public int RecipeLikeCount(int recipeNum) {
		int result = 0;
		
		try {
			result = dao.selectOne("recipe.recipeLikeCount");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean isRecipeLike(Map<String, Object> map) {
		boolean b = false;
		
		try {
			int result = dao.selectOne("recipe.isRecipeLike", map);
			
			if(result > 0) {
				b = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}

	@Override
	public void updateHitCount(int recipeNum) throws Exception {
		try {
			dao.updateData("recipe.updateHitCount", recipeNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Recipe> readRecipeingredient(int recipeNum) {
		List<Recipe> list = null;
		
		try {
			list = dao.selectList("recipe.readRecipeingredient", recipeNum);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void updateRecipe(Recipe dto, String pathname) throws Exception {
		
	}

	@Override
	public void deleteRecipe(int recipeNum, String userId, int role) throws Exception {
		try {
			Recipe dto = readRecipe(recipeNum);
			if(dto == null || (role > 0 && ! dto.getUserId().equals(userId))) {
				return;
			}
			
			dao.deleteData("recipe.deleteRecipe", recipeNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public Recipe preReadRecipe(Map<String, Object> map) {
		Recipe dto = null;
		
		try {
			dto = dao.selectOne("recipe.preReadRecipe", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public Recipe nextReadRecipe(Map<String, Object> map) {
		Recipe dto = null;
		
		try {
			dto = dao.selectOne("recipe.nextReadRecipe", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
}
