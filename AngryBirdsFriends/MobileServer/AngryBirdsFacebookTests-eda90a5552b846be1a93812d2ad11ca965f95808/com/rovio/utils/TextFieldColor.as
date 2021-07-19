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
      
      public function TextFieldColor(textField:TextField, textColor:uint = 0, selectionColor:uint = 0, selectedColor:uint = 0)
      {
         super();
         this.mTextField = textField;
         this.mColorMatrixFilter = new ColorMatrixFilter();
         this.mTextColor = textColor;
         this.mSelectionColor = selectionColor;
         this.mSelectedColor = selectedColor;
         this.updateFilter();
      }
      
      public function set textField(tf:TextField) : void
      {
         this.mTextField = tf;
      }
      
      public function get textField() : TextField
      {
         return this.mTextField;
      }
      
      public function set textColor(c:uint) : void
      {
         this.mTextColor = c;
         this.updateFilter();
      }
      
      public function get textColor() : uint
      {
         return this.mTextColor;
      }
      
      public function set selectionColor(c:uint) : void
      {
         this.mSelectionColor = c;
         this.updateFilter();
      }
      
      public function get selectionColor() : uint
      {
         return this.mSelectionColor;
      }
      
      public function set selectedColor(c:uint) : void
      {
         this.mSelectedColor = c;
         this.updateFilter();
      }
      
      public function get selectedColor() : uint
      {
         return this.mSelectedColor;
      }
      
      private function updateFilter() : void
      {
         this.mTextField.textColor = 16711680;
         var o:Array = this.splitRGB(this.mSelectionColor);
         var r:Array = this.splitRGB(this.mTextColor);
         var g:Array = this.splitRGB(this.mSelectedColor);
         var ro:int = o[0];
         var go:int = o[1];
         var bo:int = o[2];
         var rr:Number = (r[0] - 255 - o[0]) * mByteToPerc + 1;
         var rg:Number = (r[1] - 255 - o[1]) * mByteToPerc + 1;
         var rb:Number = (r[2] - 255 - o[2]) * mByteToPerc + 1;
         var gr:Number = (g[0] - 255 - o[0]) * mByteToPerc + 1 - rr;
         var gg:Number = (g[1] - 255 - o[1]) * mByteToPerc + 1 - rg;
         var gb:Number = (g[2] - 255 - o[2]) * mByteToPerc + 1 - rb;
         this.mColorMatrixFilter.matrix = [rr,gr,0,0,ro,rg,gg,0,0,go,rb,gb,0,0,bo,0,0,0,1,0];
         this.mTextField.filters = [this.mColorMatrixFilter];
      }
      
      private function splitRGB(color:uint) : Array
      {
         return [color >> 16 & 255,color >> 8 & 255,color & 255];
      }
      
      public function dispose() : void
      {
         this.mColorMatrixFilter = null;
         this.mTextField.filters = [];
         this.mTextField = null;
      }
   }
}
