package §!6§
{
   import §#"l§.§ #b§;
   import §]"P§.§4!9§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4";§ extends DisplayObject
   {
      
      private static var §!"Z§:Point = new Point();
      
      private static var §0$-§:Matrix = new Matrix();
       
      
      private var §-#+§:Boolean;
      
      protected var §[#7§:§ #b§;
      
      protected var §,!y§:Boolean = true;
      
      protected var §8!!§:Boolean = true;
      
      private var §]#H§:Number = 0.0;
      
      private var §46§:Number = 0.0;
      
      private var §[l§:uint = 16777215;
      
      public function §4";§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§-#+§ = param3 != 16777215;
         this.§[#7§ = new § #b§(this.§#!c§,param4);
         this.initializeVertexData(param1,param2);
         this.§[#7§.§4"D§(param3);
         this.§[l§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§[#7§.setPosition(0,0,0);
         this.§[#7§.setPosition(1,param1,0);
         this.§[#7§.setPosition(2,0,param2);
         this.§[#7§.setPosition(3,param1,param2);
      }
      
      public function get §""#§() : int
      {
         return 1;
      }
      
      public function get §#!c§() : int
      {
         return 4;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         if(param1 == this)
         {
            this.§[#7§.getPosition(this.§#!c§ - 1,§!"Z§);
            param2.setTo(0,0,§!"Z§.x,§!"Z§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§[#7§.getPosition(this.§#!c§ - 1,§!"Z§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§!"Z§.x * _loc3_,§!"Z§.y * _loc4_);
            if(_loc3_ < 0)
            {
               param2.width *= -1;
               param2.x -= param2.width;
            }
            if(_loc4_ < 0)
            {
               param2.height *= -1;
               param2.y -= param2.height;
            }
         }
         else
         {
            §!"?§(param1,§0$-§);
            this.§[#7§.getBounds(§0$-§,0,this.§#!c§,param2);
         }
         return param2;
      }
      
      public function §'#I§(param1:int) : uint
      {
         return this.§[#7§.§]>§(param1);
      }
      
      public function §0!k§(param1:int, param2:uint) : void
      {
         this.§[#7§.§96§(param1,param2);
         this.§,!y§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§-#+§ = true;
         }
         else
         {
            this.§-#+§ = this.§[#7§.tinted;
         }
      }
      
      public function §"#1§(param1:int) : Number
      {
         return this.§[#7§.§0#R§(param1);
      }
      
      public function §@!"§(param1:int, param2:Number) : void
      {
         this.§[#7§.§@!^§(param1,param2);
         this.§,!y§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§-#+§ = true;
         }
         else
         {
            this.§-#+§ = this.§[#7§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§[#7§.§]>§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§#!c§ - 1;
         while(_loc2_ >= 0)
         {
            this.§0!k§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§-#+§ = true;
         }
         else
         {
            this.§-#+§ = this.§[#7§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§-#+§ = true;
         }
         else
         {
            this.§-#+§ = this.§[#7§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§ #b§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§[#7§.copyTo(param1,param2,0,this.§#!c§,true,true,false,param4);
      }
      
      override public function render(param1:§4!9§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §-"[§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§-#+§;
      }
   }
}
