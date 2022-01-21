package §&c§
{
   import § %§.§3!e§;
   import §=G§.§#!N§;
   import §=G§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §2!]§ extends DisplayObject
   {
      
      private static var §#I§:Vector3D = new Vector3D();
      
      private static var §2E§:Point = new Point();
      
      private static var §"!3§:Matrix = new Matrix();
       
      
      protected var §5!L§:§#!N§;
      
      private var §"n§:Number = 0.0;
      
      private var §^!=§:Number = 0.0;
      
      private var §9!X§:uint = 16777215;
      
      public function §2!]§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§5!L§ = new §#!N§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§9!X§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§5!L§.setPremultipliedAlpha(param4);
         this.§5!L§.setPosition(0,0,0);
         this.§5!L§.setPosition(1,param1,0);
         this.§5!L§.setPosition(2,0,param2);
         this.§5!L§.setPosition(3,param1,param2);
         this.§5!L§.§=!]§(param3);
         this.§"n§ = param1;
         this.§^!=§ = param2;
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
               this.§5!L§.§@&§(_loc7_,§#I§);
               _loc3_ = _loc3_ < §#I§.x ? Number(_loc3_) : Number(§#I§.x);
               _loc4_ = _loc4_ > §#I§.x ? Number(_loc4_) : Number(§#I§.x);
               _loc5_ = _loc5_ < §#I§.y ? Number(_loc5_) : Number(§#I§.y);
               _loc6_ = _loc6_ > §#I§.y ? Number(_loc6_) : Number(§#I§.y);
               _loc7_++;
            }
         }
         else
         {
            §1d§(param1,§"!3§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§5!L§.§@&§(_loc7_,§#I§);
               transformCoords(§"!3§,§#I§.x,§#I§.y,§2E§);
               _loc3_ = _loc3_ < §2E§.x ? Number(_loc3_) : Number(§2E§.x);
               _loc4_ = _loc4_ > §2E§.x ? Number(_loc4_) : Number(§2E§.x);
               _loc5_ = _loc5_ < §2E§.y ? Number(_loc5_) : Number(§2E§.y);
               _loc6_ = _loc6_ > §2E§.y ? Number(_loc6_) : Number(§2E§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4c§(param1:int) : uint
      {
         return this.§5!L§.§-!]§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§5!L§.§%;§(param1,param2);
      }
      
      public function §0b§(param1:int) : Number
      {
         return this.§5!L§.§@5§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§5!L§.§`r§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§9!X§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§9!X§ != param1)
         {
            this.§9!X§ = param1;
            this.§5!L§.§=!]§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§#!N§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§5!L§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§3!e§, param2:Number) : void
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
      
      public function get §';§() : Number
      {
         return this.§"n§;
      }
      
      public function get §!!C§() : Number
      {
         return this.§^!=§;
      }
   }
}
