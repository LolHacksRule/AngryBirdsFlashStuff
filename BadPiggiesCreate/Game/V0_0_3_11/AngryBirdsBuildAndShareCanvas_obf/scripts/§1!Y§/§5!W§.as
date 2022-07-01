package §1!Y§
{
   import §0P§.§1!O§;
   import §=v§.§+r§;
   import §=v§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §5!W§ extends DisplayObject
   {
      
      private static var §1#§:Vector3D = new Vector3D();
      
      private static var §^h§:Point = new Point();
      
      private static var §<"#§:Matrix = new Matrix();
       
      
      protected var §#!I§:§+r§;
      
      private var §-"-§:Number = 0.0;
      
      private var §[@§:Number = 0.0;
      
      private var §8!r§:uint = 16777215;
      
      public function §5!W§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§#!I§ = new §+r§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§8!r§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§#!I§.setPremultipliedAlpha(param4);
         this.§#!I§.setPosition(0,0,0);
         this.§#!I§.setPosition(1,param1,0);
         this.§#!I§.setPosition(2,0,param2);
         this.§#!I§.setPosition(3,param1,param2);
         this.§#!I§.§'!a§(param3);
         this.§-"-§ = param1;
         this.§[@§ = param2;
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
               this.§#!I§.§]>§(_loc7_,§1#§);
               _loc3_ = _loc3_ < §1#§.x ? Number(_loc3_) : Number(§1#§.x);
               _loc4_ = _loc4_ > §1#§.x ? Number(_loc4_) : Number(§1#§.x);
               _loc5_ = _loc5_ < §1#§.y ? Number(_loc5_) : Number(§1#§.y);
               _loc6_ = _loc6_ > §1#§.y ? Number(_loc6_) : Number(§1#§.y);
               _loc7_++;
            }
         }
         else
         {
            §2![§(param1,§<"#§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§#!I§.§]>§(_loc7_,§1#§);
               transformCoords(§<"#§,§1#§.x,§1#§.y,§^h§);
               _loc3_ = _loc3_ < §^h§.x ? Number(_loc3_) : Number(§^h§.x);
               _loc4_ = _loc4_ > §^h§.x ? Number(_loc4_) : Number(§^h§.x);
               _loc5_ = _loc5_ < §^h§.y ? Number(_loc5_) : Number(§^h§.y);
               _loc6_ = _loc6_ > §^h§.y ? Number(_loc6_) : Number(§^h§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §9v§(param1:int) : uint
      {
         return this.§#!I§.§[!K§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§#!I§.§#J§(param1,param2);
      }
      
      public function §4!@§(param1:int) : Number
      {
         return this.§#!I§.§;!s§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§#!I§.§;8§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§8!r§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§8!r§ != param1)
         {
            this.§8!r§ = param1;
            this.§#!I§.§'!a§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§+r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#!I§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§1!O§, param2:Number) : void
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
      
      public function get §+"-§() : Number
      {
         return this.§-"-§;
      }
      
      public function get §9;§() : Number
      {
         return this.§[@§;
      }
   }
}
