package §->§
{
   import §&I§.§?!§;
   import §<§.§?!5§;
   import §<§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §7d§ extends DisplayObject
   {
      
      private static var §6z§:Vector3D = new Vector3D();
      
      private static var §2n§:Point = new Point();
      
      private static var §0j§:Matrix = new Matrix();
       
      
      protected var §#f§:§?!5§;
      
      private var §&]§:Number = 0.0;
      
      private var §3!5§:Number = 0.0;
      
      private var §[N§:uint = 16777215;
      
      public function §7d§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§#f§ = new §?!5§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§[N§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§#f§.setPremultipliedAlpha(param4);
         this.§#f§.setPosition(0,0,0);
         this.§#f§.setPosition(1,param1,0);
         this.§#f§.setPosition(2,0,param2);
         this.§#f§.setPosition(3,param1,param2);
         this.§#f§.§2K§(param3);
         this.§&]§ = param1;
         this.§3!5§ = param2;
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
               this.§#f§.§>9§(_loc7_,§6z§);
               _loc3_ = _loc3_ < §6z§.x ? Number(_loc3_) : Number(§6z§.x);
               _loc4_ = _loc4_ > §6z§.x ? Number(_loc4_) : Number(§6z§.x);
               _loc5_ = _loc5_ < §6z§.y ? Number(_loc5_) : Number(§6z§.y);
               _loc6_ = _loc6_ > §6z§.y ? Number(_loc6_) : Number(§6z§.y);
               _loc7_++;
            }
         }
         else
         {
            § I§(param1,§0j§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§#f§.§>9§(_loc7_,§6z§);
               transformCoords(§0j§,§6z§.x,§6z§.y,§2n§);
               _loc3_ = _loc3_ < §2n§.x ? Number(_loc3_) : Number(§2n§.x);
               _loc4_ = _loc4_ > §2n§.x ? Number(_loc4_) : Number(§2n§.x);
               _loc5_ = _loc5_ < §2n§.y ? Number(_loc5_) : Number(§2n§.y);
               _loc6_ = _loc6_ > §2n§.y ? Number(_loc6_) : Number(§2n§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §?9§(param1:int) : uint
      {
         return this.§#f§.§<`§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§#f§.§>`§(param1,param2);
      }
      
      public function §>h§(param1:int) : Number
      {
         return this.§#f§.§;!8§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§#f§.§!]§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§[N§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§[N§ != param1)
         {
            this.§[N§ = param1;
            this.§#f§.§2K§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§?!5§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#f§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§?!§, param2:Number) : void
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
         return this.§&]§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§3!5§;
      }
   }
}
