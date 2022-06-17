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
	public Recipe readRecip(int num) {
		// TODO Auto-generated method stub
		return null;
	}

}
