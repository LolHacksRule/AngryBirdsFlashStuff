package §]!6§
{
   import §8!#§.§-!§;
   import §8j§.§=§;
   import §8j§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §8D§ extends DisplayObject
   {
      
      private static var §0c§:Vector3D = new Vector3D();
      
      private static var §1+§:Point = new Point();
      
      private static var §'i§:Matrix = new Matrix();
       
      
      protected var §'U§:§=§;
      
      private var §,-§:Number = 0.0;
      
      private var §5i§:Number = 0.0;
      
      private var §`E§:uint = 16777215;
      
      public function §8D§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§'U§ = new §=§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§`E§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§'U§.setPremultipliedAlpha(param4);
         this.§'U§.setPosition(0,0,0);
         this.§'U§.setPosition(1,param1,0);
         this.§'U§.setPosition(2,0,param2);
         this.§'U§.setPosition(3,param1,param2);
         this.§'U§.§'K§(param3);
         this.§,-§ = param1;
         this.§5i§ = param2;
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
               this.§'U§.§]h§(_loc7_,§0c§);
               _loc3_ = _loc3_ < §0c§.x ? Number(_loc3_) : Number(§0c§.x);
               _loc4_ = _loc4_ > §0c§.x ? Number(_loc4_) : Number(§0c§.x);
               _loc5_ = _loc5_ < §0c§.y ? Number(_loc5_) : Number(§0c§.y);
               _loc6_ = _loc6_ > §0c§.y ? Number(_loc6_) : Number(§0c§.y);
               _loc7_++;
            }
         }
         else
         {
            §5D§(param1,§'i§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§'U§.§]h§(_loc7_,§0c§);
               transformCoords(§'i§,§0c§.x,§0c§.y,§1+§);
               _loc3_ = _loc3_ < §1+§.x ? Number(_loc3_) : Number(§1+§.x);
               _loc4_ = _loc4_ > §1+§.x ? Number(_loc4_) : Number(§1+§.x);
               _loc5_ = _loc5_ < §1+§.y ? Number(_loc5_) : Number(§1+§.y);
               _loc6_ = _loc6_ > §1+§.y ? Number(_loc6_) : Number(§1+§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §8!8§(param1:int) : uint
      {
         return this.§'U§.§?U§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§'U§.§78§(param1,param2);
      }
      
      public function §2C§(param1:int) : Number
      {
         return this.§'U§.§>!?§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§'U§.§=;§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§`E§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§`E§ != param1)
         {
            this.§`E§ = param1;
            this.§'U§.§'K§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§=§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§'U§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§-!§, param2:Number) : void
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
         return this.§,-§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§5i§;
      }
   }
}
