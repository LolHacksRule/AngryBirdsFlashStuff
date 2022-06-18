package §3§
{
   import §9![§.§%!L§;
   import §9![§.transformCoords;
   import §94§.§#!a§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §2?§ extends DisplayObject
   {
      
      private static var §'M§:Vector3D = new Vector3D();
      
      private static var §2i§:Point = new Point();
      
      private static var § !"§:Matrix = new Matrix();
       
      
      protected var §5h§:§%!L§;
      
      private var §>P§:Number = 0.0;
      
      private var §'q§:Number = 0.0;
      
      private var §9y§:uint = 16777215;
      
      public function §2?§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§5h§ = new §%!L§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§9y§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§5h§.§7T§(param4);
         this.§5h§.setPosition(0,0,0);
         this.§5h§.setPosition(1,param1,0);
         this.§5h§.setPosition(2,0,param2);
         this.§5h§.setPosition(3,param1,param2);
         this.§5h§.§%!8§(param3);
         this.§>P§ = param1;
         this.§'q§ = param2;
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
               this.§5h§.§;+§(_loc7_,§'M§);
               _loc3_ = _loc3_ < §'M§.x ? Number(_loc3_) : Number(§'M§.x);
               _loc4_ = _loc4_ > §'M§.x ? Number(_loc4_) : Number(§'M§.x);
               _loc5_ = _loc5_ < §'M§.y ? Number(_loc5_) : Number(§'M§.y);
               _loc6_ = _loc6_ > §'M§.y ? Number(_loc6_) : Number(§'M§.y);
               _loc7_++;
            }
         }
         else
         {
            §8!V§(param1,§ !"§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§5h§.§;+§(_loc7_,§'M§);
               transformCoords(§ !"§,§'M§.x,§'M§.y,§2i§);
               _loc3_ = _loc3_ < §2i§.x ? Number(_loc3_) : Number(§2i§.x);
               _loc4_ = _loc4_ > §2i§.x ? Number(_loc4_) : Number(§2i§.x);
               _loc5_ = _loc5_ < §2i§.y ? Number(_loc5_) : Number(§2i§.y);
               _loc6_ = _loc6_ > §2i§.y ? Number(_loc6_) : Number(§2i§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4!6§(param1:int) : uint
      {
         return this.§5h§.§@§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§5h§.§<!K§(param1,param2);
      }
      
      public function §8;§(param1:int) : Number
      {
         return this.§5h§.§4!5§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§5h§.§&!J§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§9y§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§9y§ != param1)
         {
            this.§9y§ = param1;
            this.§5h§.§%!8§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§%!L§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§5h§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§#!a§, param2:Number) : void
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
      
      public function get §%!B§() : Number
      {
         return this.§>P§;
      }
      
      public function get §]!'§() : Number
      {
         return this.§'q§;
      }
   }
}
