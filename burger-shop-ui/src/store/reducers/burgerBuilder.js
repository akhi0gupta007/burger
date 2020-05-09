import * as actionTypes from "../actions/actionTypes";
import  {updateObject} from '../../shared/utility';

const initialState = {
  ingredients: null,
  totalPrice: 4,
  error:false,

};

const INGREDIENT_PRICES = {
    salad: 0.5,
    cheese: 0.4,
    meat: 1.3,
    bacon: 0.7,
    building:false
  };
  
const addIngredient = (state,action) => {
  const updatedIngredient = {[action.ingredientName]: state.ingredients[action.ingredientName] + 1};
  const updatedIngredients = updateObject(state.ingredients,updatedIngredient);
  const updatedState = {
    ingredients:updatedIngredients,
    totalPrice : state.totalPrice + INGREDIENT_PRICES[action.ingredientName],
    building:true
  }
  return updateObject(state,updatedState);
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case actionTypes.ADD_INGREDIENT: return addIngredient(state,action);    //other cases can be optimised too
    case actionTypes.REMOVE_INGREDIENT:
      return {
        ...state,
        ingredients: {
          ...state.ingredients,
          [action.ingredientName]: state.ingredients[action.ingredientName] - 1,
        },
        totalPrice : state.totalPrice - INGREDIENT_PRICES[action.ingredientName],
        building:true
      };

    case actionTypes.SET_INGREDIENTS:
        return {
          ...state,
          ingredients: { //some transformation to change sort order, salad on top
            salad : action.ingredients.salad,
            bacon : action.ingredients.bacon,
            cheese : action.ingredients.cheese,
            meat: action.ingredients.meat
          },
          totalPrice:4,
          error:true,
          building:false
       };

     case actionTypes.FETCH_INGREDIENTS_FAILED:
       return {
         ...state,
         error:true
       };  

    default:
      return state;
  }
};

export default reducer;
