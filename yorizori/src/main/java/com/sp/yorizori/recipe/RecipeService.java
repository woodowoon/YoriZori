package com.sp.yorizori.recipe;

import java.util.List;
import java.util.Map;

public interface RecipeService {
	// 레시피 등록
	public void insertRecipe(Recipe dto, String pathname) throws Exception;
	
	// 레시피 리스트
	public int dataCount(Map<String, Object> map);
	public List<Recipe> listRecipeFeed(Map<String, Object> map);
	public boolean isFollow(Map<String, Object> map);
	
	// article
	public Recipe readRecipe(int recipeNum);
	public Recipe preReadRecipe(Map<String, Object> map);
	public Recipe nextReadRecipe(Map<String, Object> map);
	
	// 좋아요
	public void insertRecipeLike(Map<String, Object> map) throws Exception;
	public void deleteRecipeLike(Map<String, Object> map) throws Exception;
	public int RecipeLikeCount(int recipeNum);
	public boolean isRecipeLike(Map<String, Object> map);
	
	public void updateHitCount(int recipeNum) throws Exception;
	
	// article 재료 리스트
	public List<Recipe> readRecipeingredient(int recipeNum);
	public List<Recipe> readRecipeseasoning(int recipeNum);
	
	// 삭제
	public void deleteRecipe(int recipeNum, String userId, int role) throws Exception;
	
	// 카테고리 리스트
	public List<Recipe> listcaseCategory(Map<String, Object> map);
	public List<Recipe> listcountryCategory(Map<String, Object> map);
	public List<Recipe> listingredient(Map<String, Object> map);
	public List<Recipe> listingredient(int ingredientCode);
	
	// 수정
	public void updateRecipe(Recipe dto) throws Exception;
	public void updateRecipePhoto(Recipe dto) throws Exception;
	public void updateRecipeingredientList(Recipe dto) throws Exception;
}
