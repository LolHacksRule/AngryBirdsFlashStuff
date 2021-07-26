package com.rovio.spritesheet
{
   public class ClipArea
   {
       
      
      private var _x:int;
      
      private var _y:int;
      
      private var _width:int;
      
      private var _height:int;
      
      private var _pivotX:int;
      
      private var _pivotY:int;
      
      public function ClipArea(x:int, y:int, width:int, height:int, pivotX:int, pivotY:int)
      {
         super();
         this._x = x;
         this._y = y;
         this._width = width;
         this._height = height;
         this._pivotX = pivotX;
         this._pivotY = pivotY;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this._pivotX;
      }
      
      public function get pivotY() : int
      {
         return this._pivotY;
      }
   }
}
