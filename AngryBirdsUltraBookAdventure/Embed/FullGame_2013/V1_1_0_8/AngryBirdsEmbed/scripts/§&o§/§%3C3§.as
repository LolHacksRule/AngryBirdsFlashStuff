package §&o§
{
   import §'j§.§3!!§;
   import §'j§.transformCoords;
   import §=!0§.§2N§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §<3§ extends DisplayObject
   {
      
      private static var §8`§:Vector3D = new Vector3D();
      
      private static var §#w§:Point = new Point();
      
      private static var §2$§:Matrix = new Matrix();
       
      
      protected var §,Y§:§3!!§;
      
      private var §'v§:Number = 0.0;
      
      private var §>Z§:Number = 0.0;
      
      private var §2!;§:uint = 16777215;
      
      public function §<3§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§,Y§ = new §3!!§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§2!;§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§,Y§.§5!3§(param4);
         this.§,Y§.setPosition(0,0,0);
         this.§,Y§.setPosition(1,param1,0);
         this.§,Y§.setPosition(2,0,param2);
         this.§,Y§.setPosition(3,param1,param2);
         this.§,Y§.§^$§(param3);
         this.§'v§ = param1;
         this.§>Z§ = param2;
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
               this.§,Y§.§#!6§(_loc7_,§8`§);
               _loc3_ = _loc3_ < §8`§.x ? Number(_loc3_) : Number(§8`§.x);
               _loc4_ = _loc4_ > §8`§.x ? Number(_loc4_) : Number(§8`§.x);
               _loc5_ = _loc5_ < §8`§.y ? Number(_loc5_) : Number(§8`§.y);
               _loc6_ = _loc6_ > §8`§.y ? Number(_loc6_) : Number(§8`§.y);
               _loc7_++;
            }
         }
         else
         {
            §&M§(param1,§2$§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§,Y§.§#!6§(_loc7_,§8`§);
               transformCoords(§2$§,§8`§.x,§8`§.y,§#w§);
               _loc3_ = _loc3_ < §#w§.x ? Number(_loc3_) : Number(§#w§.x);
               _loc4_ = _loc4_ > §#w§.x ? Number(_loc4_) : Number(§#w§.x);
               _loc5_ = _loc5_ < §#w§.y ? Number(_loc5_) : Number(§#w§.y);
               _loc6_ = _loc6_ > §#w§.y ? Number(_loc6_) : Number(§#w§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4p§(param1:int) : uint
      {
         return this.§,Y§.§+!#§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§,Y§.§[V§(param1,param2);
      }
      
      public function §6!D§(param1:int) : Number
      {
         return this.§,Y§.§7Q§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§,Y§.§0z§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§2!;§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§2!;§ != param1)
         {
            this.§2!;§ = param1;
            this.§,Y§.§^$§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§3!!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§,Y§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§2N§, param2:Number) : void
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
         return this.§'v§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§>Z§;
      }
   }
}
