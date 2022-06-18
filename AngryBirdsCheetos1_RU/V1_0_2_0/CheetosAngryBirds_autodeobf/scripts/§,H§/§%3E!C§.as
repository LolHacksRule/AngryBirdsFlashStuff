package §,H§
{
   import §&b§.transformCoords;
   import §&b§.§true§;
   import §2!P§.§@9§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §>!C§ extends DisplayObject
   {
      
      private static var §28§:Vector3D = new Vector3D();
      
      private static var §81§:Point = new Point();
      
      private static var § g§:Matrix = new Matrix();
       
      
      protected var §4!P§:§true§;
      
      private var §]!;§:Number = 0.0;
      
      private var §!!1§:Number = 0.0;
      
      private var §-!Z§:uint = 16777215;
      
      public function §>!C§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§4!P§ = new §true§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§-!Z§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§4!P§.setPremultipliedAlpha(param4);
         this.§4!P§.setPosition(0,0,0);
         this.§4!P§.setPosition(1,param1,0);
         this.§4!P§.setPosition(2,0,param2);
         this.§4!P§.setPosition(3,param1,param2);
         this.§4!P§.§&r§(param3);
         this.§]!;§ = param1;
         this.§!!1§ = param2;
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
               this.§4!P§.§=a§(_loc7_,§28§);
               _loc3_ = _loc3_ < §28§.x ? Number(_loc3_) : Number(§28§.x);
               _loc4_ = _loc4_ > §28§.x ? Number(_loc4_) : Number(§28§.x);
               _loc5_ = _loc5_ < §28§.y ? Number(_loc5_) : Number(§28§.y);
               _loc6_ = _loc6_ > §28§.y ? Number(_loc6_) : Number(§28§.y);
               _loc7_++;
            }
         }
         else
         {
            §implements§(param1,§ g§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§4!P§.§=a§(_loc7_,§28§);
               transformCoords(§ g§,§28§.x,§28§.y,§81§);
               _loc3_ = _loc3_ < §81§.x ? Number(_loc3_) : Number(§81§.x);
               _loc4_ = _loc4_ > §81§.x ? Number(_loc4_) : Number(§81§.x);
               _loc5_ = _loc5_ < §81§.y ? Number(_loc5_) : Number(§81§.y);
               _loc6_ = _loc6_ > §81§.y ? Number(_loc6_) : Number(§81§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §"!1§(param1:int) : uint
      {
         return this.§4!P§.§#3§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§4!P§.§2!5§(param1,param2);
      }
      
      public function §8!R§(param1:int) : Number
      {
         return this.§4!P§.§3!V§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§4!P§.§4!§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§-!Z§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§-!Z§ != param1)
         {
            this.§-!Z§ = param1;
            this.§4!P§.§&r§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§true§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§4!P§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§@9§, param2:Number) : void
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
      
      public function get §]!`§() : Number
      {
         return this.§]!;§;
      }
      
      public function get §<!=§() : Number
      {
         return this.§!!1§;
      }
   }
}
