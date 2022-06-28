package §_-uY§
{
   import §_-0Ea§.§_-zM§;
   import §_-UD§.§_-9f§;
   import §_-UD§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-2p§ extends DisplayObject
   {
      
      private static var §_-0Dq§:Vector3D = new Vector3D();
      
      private static var §_-kf§:Point = new Point();
      
      private static var §_-6w§:Matrix = new Matrix();
       
      
      protected var §_-BF§:§_-9f§;
      
      private var §_-01Z§:Number = 0.0;
      
      private var §_-tH§:Number = 0.0;
      
      private var §_-Un§:uint = 16777215;
      
      public function §_-2p§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§_-BF§ = new §_-9f§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§_-Un§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§_-BF§.setPremultipliedAlpha(param4);
         this.§_-BF§.setPosition(0,0,0);
         this.§_-BF§.setPosition(1,param1,0);
         this.§_-BF§.setPosition(2,0,param2);
         this.§_-BF§.setPosition(3,param1,param2);
         this.§_-BF§.§_-I9§(param3);
         this.§_-01Z§ = param1;
         this.§_-tH§ = param2;
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
               this.§_-BF§.§_-03l§(_loc7_,§_-0Dq§);
               _loc3_ = _loc3_ < §_-0Dq§.x ? Number(_loc3_) : Number(§_-0Dq§.x);
               _loc4_ = _loc4_ > §_-0Dq§.x ? Number(_loc4_) : Number(§_-0Dq§.x);
               _loc5_ = _loc5_ < §_-0Dq§.y ? Number(_loc5_) : Number(§_-0Dq§.y);
               _loc6_ = _loc6_ > §_-0Dq§.y ? Number(_loc6_) : Number(§_-0Dq§.y);
               _loc7_++;
            }
         }
         else
         {
            §_-mP§(param1,§_-6w§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§_-BF§.§_-03l§(_loc7_,§_-0Dq§);
               transformCoords(§_-6w§,§_-0Dq§.x,§_-0Dq§.y,§_-kf§);
               _loc3_ = _loc3_ < §_-kf§.x ? Number(_loc3_) : Number(§_-kf§.x);
               _loc4_ = _loc4_ > §_-kf§.x ? Number(_loc4_) : Number(§_-kf§.x);
               _loc5_ = _loc5_ < §_-kf§.y ? Number(_loc5_) : Number(§_-kf§.y);
               _loc6_ = _loc6_ > §_-kf§.y ? Number(_loc6_) : Number(§_-kf§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §_-pz§(param1:int) : uint
      {
         return this.§_-BF§.§_-01U§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§_-BF§.§_-fh§(param1,param2);
      }
      
      public function §_-J6§(param1:int) : Number
      {
         return this.§_-BF§.§_-nB§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§_-BF§.§_-it§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§_-Un§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§_-Un§ != param1)
         {
            this.§_-Un§ = param1;
            this.§_-BF§.§_-I9§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§_-9f§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§_-BF§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
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
      
      public function get §_-ZD§() : Number
      {
         return this.§_-01Z§;
      }
      
      public function get §_-u4§() : Number
      {
         return this.§_-tH§;
      }
   }
}
