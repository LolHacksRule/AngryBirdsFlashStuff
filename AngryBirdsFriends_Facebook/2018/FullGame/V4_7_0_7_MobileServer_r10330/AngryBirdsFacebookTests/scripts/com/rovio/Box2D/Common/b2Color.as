package com.rovio.Box2D.Common
{
   import com.rovio.Box2D.Common.Math.b2Math;
   
   public class b2Color
   {
       
      
      private var _r:uint = 0;
      
      private var _g:uint = 0;
      
      private var _b:uint = 0;
      
      public function b2Color(rr:Number, gg:Number, bb:Number)
      {
         super();
         this._r = uint(255 * b2Math.Clamp(rr,0,1));
         this._g = uint(255 * b2Math.Clamp(gg,0,1));
         this._b = uint(255 * b2Math.Clamp(bb,0,1));
      }
      
      public function Set(rr:Number, gg:Number, bb:Number) : void
      {
         this._r = uint(255 * b2Math.Clamp(rr,0,1));
         this._g = uint(255 * b2Math.Clamp(gg,0,1));
         this._b = uint(255 * b2Math.Clamp(bb,0,1));
      }
      
      public function set r(rr:Number) : void
      {
         this._r = uint(255 * b2Math.Clamp(rr,0,1));
      }
      
      public function set g(gg:Number) : void
      {
         this._g = uint(255 * b2Math.Clamp(gg,0,1));
      }
      
      public function set b(bb:Number) : void
      {
         this._b = uint(255 * b2Math.Clamp(bb,0,1));
      }
      
      public function get color() : uint
      {
         return this._r << 16 | this._g << 8 | this._b;
      }
   }
}
