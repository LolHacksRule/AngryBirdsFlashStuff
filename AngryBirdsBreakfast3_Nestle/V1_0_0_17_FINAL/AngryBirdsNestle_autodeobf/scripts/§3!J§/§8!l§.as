package §3!J§
{
   import §!!!§.§<@§;
   import §^!^§.§#!_§;
   import §^!^§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §8!l§ extends DisplayObject
   {
      
      private static var §6"-§:Vector3D = new Vector3D();
      
      private static var §7>§:Point = new Point();
      
      private static var §-!B§:Matrix = new Matrix();
       
      
      protected var §2!^§:§#!_§;
      
      private var §<"4§:Number = 0.0;
      
      private var §%!?§:Number = 0.0;
      
      private var §[#§:uint = 16777215;
      
      public function §8!l§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§2!^§ = new §#!_§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§[#§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§2!^§.§3!A§(param4);
         this.§2!^§.setPosition(0,0,0);
         this.§2!^§.setPosition(1,param1,0);
         this.§2!^§.setPosition(2,0,param2);
         this.§2!^§.setPosition(3,param1,param2);
         this.§2!^§.§2N§(param3);
         this.§<"4§ = param1;
         this.§%!?§ = param2;
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
               this.§2!^§.§['§(_loc7_,§6"-§);
               _loc3_ = _loc3_ < §6"-§.x ? Number(_loc3_) : Number(§6"-§.x);
               _loc4_ = _loc4_ > §6"-§.x ? Number(_loc4_) : Number(§6"-§.x);
               _loc5_ = _loc5_ < §6"-§.y ? Number(_loc5_) : Number(§6"-§.y);
               _loc6_ = _loc6_ > §6"-§.y ? Number(_loc6_) : Number(§6"-§.y);
               _loc7_++;
            }
         }
         else
         {
            §else §(param1,§-!B§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§2!^§.§['§(_loc7_,§6"-§);
               transformCoords(§-!B§,§6"-§.x,§6"-§.y,§7>§);
               _loc3_ = _loc3_ < §7>§.x ? Number(_loc3_) : Number(§7>§.x);
               _loc4_ = _loc4_ > §7>§.x ? Number(_loc4_) : Number(§7>§.x);
               _loc5_ = _loc5_ < §7>§.y ? Number(_loc5_) : Number(§7>§.y);
               _loc6_ = _loc6_ > §7>§.y ? Number(_loc6_) : Number(§7>§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §=!6§(param1:int) : uint
      {
         return this.§2!^§.§9!,§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§2!^§.§,!;§(param1,param2);
      }
      
      public function §-v§(param1:int) : Number
      {
         return this.§2!^§.§2!4§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§2!^§.§'7§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§[#§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§[#§ != param1)
         {
            this.§[#§ = param1;
            this.§2!^§.§2N§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§#!_§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2!^§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§<@§, param2:Number) : void
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
      
      public function get §3!$§() : Number
      {
         return this.§<"4§;
      }
      
      public function get §![§() : Number
      {
         return this.§%!?§;
      }
   }
}
