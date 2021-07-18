package § N§
{
   import §+§.§0&§;
   import §+§.transformCoords;
   import §5Z§.§4]§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6!O§ extends DisplayObject
   {
      
      private static var § &§:Vector3D = new Vector3D();
      
      private static var §7,§:Point = new Point();
      
      private static var §"!§:Matrix = new Matrix();
       
      
      protected var §"!F§:§0&§;
      
      private var §=!0§:Number = 0.0;
      
      private var §?2§:Number = 0.0;
      
      private var §1!#§:uint = 16777215;
      
      public function §6!O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§"!F§ = new §0&§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§1!#§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§"!F§.setPremultipliedAlpha(param4);
         this.§"!F§.setPosition(0,0,0);
         this.§"!F§.setPosition(1,param1,0);
         this.§"!F§.setPosition(2,0,param2);
         this.§"!F§.setPosition(3,param1,param2);
         this.§"!F§.§!X§(param3);
         this.§=!0§ = param1;
         this.§?2§ = param2;
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
               this.§"!F§.§#I§(_loc7_,§ &§);
               _loc3_ = _loc3_ < § &§.x ? Number(_loc3_) : Number(§ &§.x);
               _loc4_ = _loc4_ > § &§.x ? Number(_loc4_) : Number(§ &§.x);
               _loc5_ = _loc5_ < § &§.y ? Number(_loc5_) : Number(§ &§.y);
               _loc6_ = _loc6_ > § &§.y ? Number(_loc6_) : Number(§ &§.y);
               _loc7_++;
            }
         }
         else
         {
            §>!B§(param1,§"!§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§"!F§.§#I§(_loc7_,§ &§);
               transformCoords(§"!§,§ &§.x,§ &§.y,§7,§);
               _loc3_ = _loc3_ < §7,§.x ? Number(_loc3_) : Number(§7,§.x);
               _loc4_ = _loc4_ > §7,§.x ? Number(_loc4_) : Number(§7,§.x);
               _loc5_ = _loc5_ < §7,§.y ? Number(_loc5_) : Number(§7,§.y);
               _loc6_ = _loc6_ > §7,§.y ? Number(_loc6_) : Number(§7,§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §6u§(param1:int) : uint
      {
         return this.§"!F§.§^3§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§"!F§.§'O§(param1,param2);
      }
      
      public function §5#§(param1:int) : Number
      {
         return this.§"!F§.§^S§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§"!F§.§3!@§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§1!#§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§1!#§ != param1)
         {
            this.§1!#§ = param1;
            this.§"!F§.§!X§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§0&§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"!F§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§4]§, param2:Number) : void
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
      
      public function get §?+§() : Number
      {
         return this.§=!0§;
      }
      
      public function get §>!3§() : Number
      {
         return this.§?2§;
      }
   }
}
