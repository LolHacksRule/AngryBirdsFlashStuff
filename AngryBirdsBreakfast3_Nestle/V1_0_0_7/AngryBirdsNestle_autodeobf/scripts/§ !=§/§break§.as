package § !=§
{
   import §=D§.§3a§;
   import §=D§.transformCoords;
   import §`V§.§^M§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §break§ extends DisplayObject
   {
      
      private static var §+"-§:Vector3D = new Vector3D();
      
      private static var §2""§:Point = new Point();
      
      private static var §7!y§:Matrix = new Matrix();
       
      
      protected var §[h§:§3a§;
      
      private var §,X§:Number = 0.0;
      
      private var §4'§:Number = 0.0;
      
      private var § a§:uint = 16777215;
      
      public function §break§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§[h§ = new §3a§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§ a§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§[h§.§1I§(param4);
         this.§[h§.setPosition(0,0,0);
         this.§[h§.setPosition(1,param1,0);
         this.§[h§.setPosition(2,0,param2);
         this.§[h§.setPosition(3,param1,param2);
         this.§[h§.§%Y§(param3);
         this.§,X§ = param1;
         this.§4'§ = param2;
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
               this.§[h§.§+!r§(_loc7_,§+"-§);
               _loc3_ = _loc3_ < §+"-§.x ? Number(_loc3_) : Number(§+"-§.x);
               _loc4_ = _loc4_ > §+"-§.x ? Number(_loc4_) : Number(§+"-§.x);
               _loc5_ = _loc5_ < §+"-§.y ? Number(_loc5_) : Number(§+"-§.y);
               _loc6_ = _loc6_ > §+"-§.y ? Number(_loc6_) : Number(§+"-§.y);
               _loc7_++;
            }
         }
         else
         {
            §@!-§(param1,§7!y§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§[h§.§+!r§(_loc7_,§+"-§);
               transformCoords(§7!y§,§+"-§.x,§+"-§.y,§2""§);
               _loc3_ = _loc3_ < §2""§.x ? Number(_loc3_) : Number(§2""§.x);
               _loc4_ = _loc4_ > §2""§.x ? Number(_loc4_) : Number(§2""§.x);
               _loc5_ = _loc5_ < §2""§.y ? Number(_loc5_) : Number(§2""§.y);
               _loc6_ = _loc6_ > §2""§.y ? Number(_loc6_) : Number(§2""§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §2e§(param1:int) : uint
      {
         return this.§[h§.§9b§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§[h§.§2%§(param1,param2);
      }
      
      public function § !5§(param1:int) : Number
      {
         return this.§[h§.§0!8§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§[h§.§0a§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§ a§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§ a§ != param1)
         {
            this.§ a§ = param1;
            this.§[h§.§%Y§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§3a§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[h§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§^M§, param2:Number) : void
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
      
      public function get §4"!§() : Number
      {
         return this.§,X§;
      }
      
      public function get §29§() : Number
      {
         return this.§4'§;
      }
   }
}
