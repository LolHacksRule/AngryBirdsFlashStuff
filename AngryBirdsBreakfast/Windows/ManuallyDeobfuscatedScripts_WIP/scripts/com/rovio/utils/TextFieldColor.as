package com.rovio.utils
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class TextFieldColor
   {
      
      private static const mByteToPerc:Number = 1 / 255;
       
      
      private var mTextField:TextField;
      
      private var mTextColor:uint;
      
      private var mSelectedColor:uint;
      
      private var mSelectionColor:uint;
      
      private var mColorMatrixFilter:ColorMatrixFilter;
      
      public function TextFieldColor(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.mTextField = param1;
         this.mColorMatrixFilter = new ColorMatrixFilter();
         this.mTextColor = param2;
         this.mSelectionColor = param3;
         this.mSelectedColor = param4;
         this.updateFilter();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.mTextField = param1;
      }
      
      public function get textField() : TextField
      {
         return this.mTextField;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.mTextColor = param1;
         this.updateFilter();
      }
      
      public function get textColor() : uint
      {
         return this.mTextColor;
      }
      
      public function set selectionColor(param1:uint) : void
      {
         this.mSelectionColor = param1;
         this.updateFilter();
      }
      
      public function get selectionColor() : uint
      {
         return this.mSelectionColor;
      }
      
      public function set selectedColor(param1:uint) : void
      {
         this.mSelectedColor = param1;
         this.updateFilter();
      }
      
      public function get selectedColor() : uint
      {
         return this.mSelectedColor;
      }
      
      private function updateFilter() : void
      {
         this.mTextField.textColor = 16711680;
         var _loc1_:Array = this.splitRGB(this.mSelectionColor);
         var _loc2_:Array = this.splitRGB(this.mTextColor);
         var _loc3_:Array = this.splitRGB(this.mSelectedColor);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * mByteToPerc + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * mByteToPerc + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * mByteToPerc + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * mByteToPerc + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * mByteToPerc + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * mByteToPerc + 1 - _loc9_;
         this.mColorMatrixFilter.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.mTextField.filters = [this.mColorMatrixFilter];
      }
      
      private function splitRGB(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.mColorMatrixFilter = null;
         this.mTextField.filters = [];
         this.mTextField = null;
      }
   }
}
