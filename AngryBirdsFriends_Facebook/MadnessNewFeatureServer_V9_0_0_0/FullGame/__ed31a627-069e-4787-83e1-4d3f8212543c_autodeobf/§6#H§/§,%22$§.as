package §6#H§
{
   import §'!j§.§^$$§;
   import §,#=§.§0C§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,"$§ extends DisplayObject
   {
      
      private static var §5"Z§:Point = new Point();
      
      private static var §-#[§:Matrix = new Matrix();
       
      
      private var §9$@§:Boolean;
      
      protected var §0$9§:§0C§;
      
      protected var §@!&§:Boolean = true;
      
      protected var §8#c§:Boolean = true;
      
      private var §6$<§:Number = 0.0;
      
      private var §[$%§:Number = 0.0;
      
      private var §0!j§:uint = 16777215;
      
      public function §,"$§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§9$@§ = param3 != 16777215;
         this.§0$9§ = new §0C§(this.§-V§,param4);
         this.initializeVertexData(param1,param2);
         this.§0$9§.§=!N§(param3);
         this.§0!j§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§0$9§.setPosition(0,0,0);
         this.§0$9§.setPosition(1,param1,0);
         this.§0$9§.setPosition(2,0,param2);
         this.§0$9§.setPosition(3,param1,param2);
      }
      
      public function get §1U§() : int
      {
         return 1;
      }
      
      public function get §-V§() : int
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
            this.§0$9§.getPosition(this.§-V§ - 1,§5"Z§);
            param2.setTo(0,0,§5"Z§.x,§5"Z§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§0$9§.getPosition(this.§-V§ - 1,§5"Z§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§5"Z§.x * _loc3_,§5"Z§.y * _loc4_);
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
            §+#W§(param1,§-#[§);
            this.§0$9§.getBounds(§-#[§,0,this.§-V§,param2);
         }
         return param2;
      }
      
      public function §&"_§(param1:int) : uint
      {
         return this.§0$9§.§?y§(param1);
      }
      
      public function §%#s§(param1:int, param2:uint) : void
      {
         this.§0$9§.§@<§(param1,param2);
         this.§@!&§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§9$@§ = true;
         }
         else
         {
            this.§9$@§ = this.§0$9§.tinted;
         }
      }
      
      public function §7`§(param1:int) : Number
      {
         return this.§0$9§.§#!W§(param1);
      }
      
      public function §9"[§(param1:int, param2:Number) : void
      {
         this.§0$9§.§;"<§(param1,param2);
         this.§@!&§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§9$@§ = true;
         }
         else
         {
            this.§9$@§ = this.§0$9§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§0$9§.§?y§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§-V§ - 1;
         while(_loc2_ >= 0)
         {
            this.§%#s§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§9$@§ = true;
         }
         else
         {
            this.§9$@§ = this.§0$9§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§9$@§ = true;
         }
         else
         {
            this.§9$@§ = this.§0$9§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§0C§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§0$9§.copyTo(param1,param2,0,this.§-V§,true,true,false,param4);
      }
      
      override public function render(param1:§^$$§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §@Z§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§9$@§;
      }
   }
}
