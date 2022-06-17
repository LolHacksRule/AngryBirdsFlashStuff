package §,#e§
{
   import §"#k§.§79§;
   import §8#p§.§>!B§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!`§ extends DisplayObject
   {
      
      private static var §-2§:Point = new Point();
      
      private static var §>"P§:Matrix = new Matrix();
       
      
      private var §!!h§:Boolean;
      
      protected var §?#9§:§>!B§;
      
      protected var §9"2§:Boolean = true;
      
      protected var §'#0§:Boolean = true;
      
      private var §%#k§:Number = 0.0;
      
      private var §?F§:Number = 0.0;
      
      private var §?$D§:uint = 16777215;
      
      public function §;!`§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§!!h§ = param3 != 16777215;
         this.§?#9§ = new §>!B§(this.§?"I§,param4);
         this.initializeVertexData(param1,param2);
         this.§?#9§.§""g§(param3);
         this.§?$D§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§?#9§.setPosition(0,0,0);
         this.§?#9§.setPosition(1,param1,0);
         this.§?#9§.setPosition(2,0,param2);
         this.§?#9§.setPosition(3,param1,param2);
      }
      
      public function get § w§() : int
      {
         return 1;
      }
      
      public function get §?"I§() : int
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
            this.§?#9§.getPosition(this.§?"I§ - 1,§-2§);
            param2.setTo(0,0,§-2§.x,§-2§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§?#9§.getPosition(this.§?"I§ - 1,§-2§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§-2§.x * _loc3_,§-2§.y * _loc4_);
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
            §0#n§(param1,§>"P§);
            this.§?#9§.getBounds(§>"P§,0,this.§?"I§,param2);
         }
         return param2;
      }
      
      public function §""@§(param1:int) : uint
      {
         return this.§?#9§.§,!u§(param1);
      }
      
      public function §'![§(param1:int, param2:uint) : void
      {
         this.§?#9§.§3"6§(param1,param2);
         this.§9"2§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§!!h§ = true;
         }
         else
         {
            this.§!!h§ = this.§?#9§.tinted;
         }
      }
      
      public function §]#J§(param1:int) : Number
      {
         return this.§?#9§.§=#4§(param1);
      }
      
      public function §-#@§(param1:int, param2:Number) : void
      {
         this.§?#9§.§="<§(param1,param2);
         this.§9"2§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§!!h§ = true;
         }
         else
         {
            this.§!!h§ = this.§?#9§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§?#9§.§,!u§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§?"I§ - 1;
         while(_loc2_ >= 0)
         {
            this.§'![§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§!!h§ = true;
         }
         else
         {
            this.§!!h§ = this.§?#9§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§!!h§ = true;
         }
         else
         {
            this.§!!h§ = this.§?#9§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§>!B§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§?#9§.copyTo(param1,param2,0,this.§?"I§,true,true,false,param4);
      }
      
      override public function render(param1:§79§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §?!w§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§!!h§;
      }
   }
}
