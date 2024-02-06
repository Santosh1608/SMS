import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import courseService from "./courseService";

const initialState = {
  courses: [],
  errors: [],
  loading: false,
};

export const getCourses = createAsyncThunk(
  "courses/list",
  async (query, thunkAPI) => {
    try {
      return await courseService.getCourses(query);
    } catch (error) {
      console.log(error);
      return thunkAPI.rejectWithValue(error.response.data);
    }
  }
);

const courseSlice = createSlice({
  name: "course",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      .addCase(getCourses.pending, (state) => {
        state.loading = true;
      })
      .addCase(getCourses.fulfilled, (state, action) => {
        state.loading = false;
        state.courses = action.payload;
        state.errors = [];
      })
      .addCase(getCourses.rejected, (state, action) => {
        state.loading = false;
        state.errors = action.payload;
      });
  },
});

const { reducer } = courseSlice;

export default reducer;
