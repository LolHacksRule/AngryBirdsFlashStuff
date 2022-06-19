package §!!R§
{
   import §7W§.§4!8§;
   import §<!M§.§;Z§;
   import §<!M§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §^!4§ extends DisplayObject
   {
      
      private static var §#c§:Vector3D = new Vector3D();
      
      private static var §2T§:Point = new Point();
      
      private static var §9]§:Matrix = new Matrix();
       
      
      protected var §6h§:§;Z§;
      
      private var §?!N§:Number = 0.0;
      
      private var §7_§:Number = 0.0;
      
      private var §^0§:uint = 16777215;
      
      public function §^!4§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§6h§ = new §;Z§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§^0§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§6h§.setPremultipliedAlpha(param4);
         this.§6h§.setPosition(0,0,0);
         this.§6h§.setPosition(1,param1,0);
         this.§6h§.setPosition(2,0,param2);
         this.§6h§.setPosition(3,param1,param2);
         this.§6h§.§-o§(param3);
         this.§?!N§ = param1;
         this.§7_§ = param2;
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
               this.§6h§.§+0§(_loc7_,§#c§);
               _loc3_ = _loc3_ < §#c§.x ? Number(_loc3_) : Number(§#c§.x);
               _loc4_ = _loc4_ > §#c§.x ? Number(_loc4_) : Number(§#c§.x);
               _loc5_ = _loc5_ < §#c§.y ? Number(_loc5_) : Number(§#c§.y);
               _loc6_ = _loc6_ > §#c§.y ? Number(_loc6_) : Number(§#c§.y);
               _loc7_++;
            }
         }
         else
         {
            §,r§(param1,§9]§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§6h§.§+0§(_loc7_,§#c§);
               transformCoords(§9]§,§#c§.x,§#c§.y,§2T§);
               _loc3_ = _loc3_ < §2T§.x ? Number(_loc3_) : Number(§2T§.x);
               _loc4_ = _loc4_ > §2T§.x ? Number(_loc4_) : Number(§2T§.x);
               _loc5_ = _loc5_ < §2T§.y ? Number(_loc5_) : Number(§2T§.y);
               _loc6_ = _loc6_ > §2T§.y ? Number(_loc6_) : Number(§2T§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §8=§(param1:int) : uint
      {
         return this.§6h§.§3!R§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§6h§.§^W§(param1,param2);
      }
      
      public function §+V§(param1:int) : Number
      {
         return this.§6h§.§,!B§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§6h§.§5!<§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§^0§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§^0§ != param1)
         {
            this.§^0§ = param1;
            this.§6h§.§-o§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§;Z§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§6h§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§4!8§, param2:Number) : void
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
      
      public function get §90§() : Number
      {
         return this.§?!N§;
      }
      
      public function get §5P§() : Number
      {
         return this.§7_§;
      }
   }
}
