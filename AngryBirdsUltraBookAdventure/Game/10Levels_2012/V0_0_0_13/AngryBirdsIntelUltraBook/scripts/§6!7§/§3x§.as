package §6!7§
{
   import §0P§.RenderSupport;
   import §8g§.VertexData;
   import §8g§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §3x§ extends DisplayObject
   {
      
      private static var §4!2§:Vector3D = new Vector3D();
      
      private static var §1!c§:Point = new Point();
      
      private static var §18§:Matrix = new Matrix();
       
      
      protected var §;H§:VertexData;
      
      private var §"!N§:Number = 0.0;
      
      private var §6>§:Number = 0.0;
      
      private var §1!T§:uint = 16777215;
      
      public function §3x§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§;H§ = new VertexData(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§1!T§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§;H§.setPremultipliedAlpha(param4);
         this.§;H§.setPosition(0,0,0);
         this.§;H§.setPosition(1,param1,0);
         this.§;H§.setPosition(2,0,param2);
         this.§;H§.setPosition(3,param1,param2);
         this.§;H§.§2!]§(param3);
         this.§"!N§ = param1;
         this.§6>§ = param2;
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
               this.§;H§.§?!#§(_loc7_,§4!2§);
               _loc3_ = _loc3_ < §4!2§.x ? Number(_loc3_) : Number(§4!2§.x);
               _loc4_ = _loc4_ > §4!2§.x ? Number(_loc4_) : Number(§4!2§.x);
               _loc5_ = _loc5_ < §4!2§.y ? Number(_loc5_) : Number(§4!2§.y);
               _loc6_ = _loc6_ > §4!2§.y ? Number(_loc6_) : Number(§4!2§.y);
               _loc7_++;
            }
         }
         else
         {
            §[!4§(param1,§18§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§;H§.§?!#§(_loc7_,§4!2§);
               transformCoords(§18§,§4!2§.x,§4!2§.y,§1!c§);
               _loc3_ = _loc3_ < §1!c§.x ? Number(_loc3_) : Number(§1!c§.x);
               _loc4_ = _loc4_ > §1!c§.x ? Number(_loc4_) : Number(§1!c§.x);
               _loc5_ = _loc5_ < §1!c§.y ? Number(_loc5_) : Number(§1!c§.y);
               _loc6_ = _loc6_ > §1!c§.y ? Number(_loc6_) : Number(§1!c§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §[n§(param1:int) : uint
      {
         return this.§;H§.§3<§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§;H§.§-!Z§(param1,param2);
      }
      
      public function §^!a§(param1:int) : Number
      {
         return this.§;H§.§9Z§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§;H§.§2X§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§1!T§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§1!T§ != param1)
         {
            this.§1!T§ = param1;
            this.§;H§.§2!]§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§;H§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
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
      
      public function get §5l§() : Number
      {
         return this.§"!N§;
      }
      
      public function get §<z§() : Number
      {
         return this.§6>§;
      }
   }
}
