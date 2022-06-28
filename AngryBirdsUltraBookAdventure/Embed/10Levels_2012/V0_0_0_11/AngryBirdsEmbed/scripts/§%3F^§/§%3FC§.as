package §?^§
{
   import §&p§.§`G§;
   import §8f§.§+!A§;
   import §8f§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §?C§ extends DisplayObject
   {
      
      private static var §%!,§:Vector3D = new Vector3D();
      
      private static var §8b§:Point = new Point();
      
      private static var §-!#§:Matrix = new Matrix();
       
      
      protected var §5!@§:§+!A§;
      
      private var §2!B§:Number = 0.0;
      
      private var §2!0§:Number = 0.0;
      
      private var §#!A§:uint = 16777215;
      
      public function §?C§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§5!@§ = new §+!A§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§#!A§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§5!@§.setPremultipliedAlpha(param4);
         this.§5!@§.setPosition(0,0,0);
         this.§5!@§.setPosition(1,param1,0);
         this.§5!@§.setPosition(2,0,param2);
         this.§5!@§.setPosition(3,param1,param2);
         this.§5!@§.§3!>§(param3);
         this.§2!B§ = param1;
         this.§2!0§ = param2;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc7_:int = 0;
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = -Number.MAX_VALUE;
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         if(param1 == this)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§5!@§.§"[§(_loc7_,§%!,§);
               _loc3_ = _loc3_ < §%!,§.x ? Number(_loc3_) : Number(§%!,§.x);
               _loc4_ = _loc4_ > §%!,§.x ? Number(_loc4_) : Number(§%!,§.x);
               _loc5_ = _loc5_ < §%!,§.y ? Number(_loc5_) : Number(§%!,§.y);
               _loc6_ = _loc6_ > §%!,§.y ? Number(_loc6_) : Number(§%!,§.y);
               _loc7_++;
            }
         }
         else
         {
            §<^§(param1,§-!#§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§5!@§.§"[§(_loc7_,§%!,§);
               transformCoords(§-!#§,§%!,§.x,§%!,§.y,§8b§);
               _loc3_ = _loc3_ < §8b§.x ? Number(_loc3_) : Number(§8b§.x);
               _loc4_ = _loc4_ > §8b§.x ? Number(_loc4_) : Number(§8b§.x);
               _loc5_ = _loc5_ < §8b§.y ? Number(_loc5_) : Number(§8b§.y);
               _loc6_ = _loc6_ > §8b§.y ? Number(_loc6_) : Number(§8b§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function § Z§(param1:int) : uint
      {
         return this.§5!@§.§3,§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§5!@§.§<+§(param1,param2);
      }
      
      public function § w§(param1:int) : Number
      {
         return this.§5!@§.§=1§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§5!@§.§`!'§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§#!A§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§#!A§ != param1)
         {
            this.§#!A§ = param1;
            this.§5!@§.§3!>§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§+!A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§5!@§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get initialWidth() : Number
      {
         return this.§2!B§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§2!0§;
      }
   }
}
