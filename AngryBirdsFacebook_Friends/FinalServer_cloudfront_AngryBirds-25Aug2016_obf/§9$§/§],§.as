package §9$§
{
   import §4"D§.§,#@§;
   import §^a§.§'"1§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §],§ extends DisplayObject
   {
      
      private static var §4"r§:Point = new Point();
      
      private static var §5#e§:Matrix = new Matrix();
       
      
      private var §&#<§:Boolean;
      
      protected var §'#B§:§,#@§;
      
      protected var §,#f§:Boolean = true;
      
      protected var §`"!§:Boolean = true;
      
      private var §[O§:Number = 0.0;
      
      private var §[;§:Number = 0.0;
      
      private var §@#!§:uint = 16777215;
      
      public function §],§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§&#<§ = param3 != 16777215;
         this.§'#B§ = new §,#@§(this.§%"t§,param4);
         this.initializeVertexData(param1,param2);
         this.§'#B§.§1"%§(param3);
         this.§@#!§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§'#B§.setPosition(0,0,0);
         this.§'#B§.setPosition(1,param1,0);
         this.§'#B§.setPosition(2,0,param2);
         this.§'#B§.setPosition(3,param1,param2);
      }
      
      public function get §=v§() : int
      {
         return 1;
      }
      
      public function get §%"t§() : int
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
            this.§'#B§.getPosition(this.§%"t§ - 1,§4"r§);
            param2.setTo(0,0,§4"r§.x,§4"r§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§'#B§.getPosition(this.§%"t§ - 1,§4"r§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§4"r§.x * _loc3_,§4"r§.y * _loc4_);
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
            §"i§(param1,§5#e§);
            this.§'#B§.getBounds(§5#e§,0,this.§%"t§,param2);
         }
         return param2;
      }
      
      public function §-!3§(param1:int) : uint
      {
         return this.§'#B§.§'$8§(param1);
      }
      
      public function §@y§(param1:int, param2:uint) : void
      {
         this.§'#B§.§&9§(param1,param2);
         this.§,#f§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§&#<§ = true;
         }
         else
         {
            this.§&#<§ = this.§'#B§.tinted;
         }
      }
      
      public function §1"&§(param1:int) : Number
      {
         return this.§'#B§.§%#o§(param1);
      }
      
      public function §`#p§(param1:int, param2:Number) : void
      {
         this.§'#B§.§@u§(param1,param2);
         this.§,#f§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§&#<§ = true;
         }
         else
         {
            this.§&#<§ = this.§'#B§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§'#B§.§'$8§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§%"t§ - 1;
         while(_loc2_ >= 0)
         {
            this.§@y§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§&#<§ = true;
         }
         else
         {
            this.§&#<§ = this.§'#B§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§&#<§ = true;
         }
         else
         {
            this.§&#<§ = this.§'#B§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§,#@§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§'#B§.copyTo(param1,param2,0,this.§%"t§,true,true,false,param4);
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §^N§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§&#<§;
      }
   }
}
