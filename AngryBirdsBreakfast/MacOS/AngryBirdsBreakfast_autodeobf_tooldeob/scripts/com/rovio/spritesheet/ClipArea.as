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
      
      public function ClipArea(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         super();
         this._x = param1;
         this._y = param2;
         this._width = param3;
         this._height = param4;
         this._pivotX = param5;
         this._pivotY = param6;
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
