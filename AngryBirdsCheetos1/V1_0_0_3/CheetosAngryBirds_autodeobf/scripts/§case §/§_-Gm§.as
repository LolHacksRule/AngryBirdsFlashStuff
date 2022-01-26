package §case §
{
   import §_-KM§.§_-H9§;
   import §_-kC§.§_-DS§;
   import §_-kC§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-Gm§ extends DisplayObject
   {
      
      private static var §_-l9§:Vector3D = new Vector3D();
      
      private static var §_-rh§:Point = new Point();
      
      private static var §_-1g§:Matrix = new Matrix();
       
      
      protected var §_-eQ§:§_-DS§;
      
      private var §_-fG§:Number = 0.0;
      
      private var §_-BA§:Number = 0.0;
      
      private var §_-iw§:uint = 16777215;
      
      public function §_-Gm§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§_-eQ§ = new §_-DS§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§_-iw§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§_-eQ§.setPremultipliedAlpha(param4);
         this.§_-eQ§.setPosition(0,0,0);
         this.§_-eQ§.setPosition(1,param1,0);
         this.§_-eQ§.setPosition(2,0,param2);
         this.§_-eQ§.setPosition(3,param1,param2);
         this.§_-eQ§.§_-43§(param3);
         this.§_-fG§ = param1;
         this.§_-BA§ = param2;
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
               this.§_-eQ§.§_-6N§(_loc7_,§_-l9§);
               _loc3_ = _loc3_ < §_-l9§.x ? Number(_loc3_) : Number(§_-l9§.x);
               _loc4_ = _loc4_ > §_-l9§.x ? Number(_loc4_) : Number(§_-l9§.x);
               _loc5_ = _loc5_ < §_-l9§.y ? Number(_loc5_) : Number(§_-l9§.y);
               _loc6_ = _loc6_ > §_-l9§.y ? Number(_loc6_) : Number(§_-l9§.y);
               _loc7_++;
            }
         }
         else
         {
            §_-P4§(param1,§_-1g§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§_-eQ§.§_-6N§(_loc7_,§_-l9§);
               transformCoords(§_-1g§,§_-l9§.x,§_-l9§.y,§_-rh§);
               _loc3_ = _loc3_ < §_-rh§.x ? Number(_loc3_) : Number(§_-rh§.x);
               _loc4_ = _loc4_ > §_-rh§.x ? Number(_loc4_) : Number(§_-rh§.x);
               _loc5_ = _loc5_ < §_-rh§.y ? Number(_loc5_) : Number(§_-rh§.y);
               _loc6_ = _loc6_ > §_-rh§.y ? Number(_loc6_) : Number(§_-rh§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §_-KT§(param1:int) : uint
      {
         return this.§_-eQ§.§_-K0§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§_-eQ§.§_-sT§(param1,param2);
      }
      
      public function §_-SF§(param1:int) : Number
      {
         return this.§_-eQ§.§_-kE§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§_-eQ§.§_-Hi§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§_-iw§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§_-iw§ != param1)
         {
            this.§_-iw§ = param1;
            this.§_-eQ§.§_-43§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§_-DS§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§_-eQ§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§_-H9§, param2:Number) : void
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
      
      public function get §_-vu§() : Number
      {
         return this.§_-fG§;
      }
      
      public function get §_-1W§() : Number
      {
         return this.§_-BA§;
      }
   }
}
