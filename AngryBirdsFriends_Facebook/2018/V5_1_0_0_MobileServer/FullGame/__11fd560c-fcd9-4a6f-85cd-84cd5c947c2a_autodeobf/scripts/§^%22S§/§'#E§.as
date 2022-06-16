package §^"S§
{
   import §5!D§.§`e§;
   import §?"e§.§[!Z§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'#E§ extends DisplayObject
   {
      
      private static var §5$-§:Point = new Point();
      
      private static var §5#^§:Matrix = new Matrix();
       
      
      private var §[#v§:Boolean;
      
      protected var §3!n§:§`e§;
      
      protected var §&#?§:Boolean = true;
      
      protected var §,[§:Boolean = true;
      
      private var §>A§:Number = 0.0;
      
      private var §%!0§:Number = 0.0;
      
      private var § !J§:uint = 16777215;
      
      public function §'#E§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§[#v§ = param3 != 16777215;
         this.§3!n§ = new §`e§(this.§7#%§,param4);
         this.initializeVertexData(param1,param2);
         this.§3!n§.§%#t§(param3);
         this.§ !J§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§3!n§.setPosition(0,0,0);
         this.§3!n§.setPosition(1,param1,0);
         this.§3!n§.setPosition(2,0,param2);
         this.§3!n§.setPosition(3,param1,param2);
      }
      
      public function get §,!Y§() : int
      {
         return 1;
      }
      
      public function get §7#%§() : int
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
            this.§3!n§.getPosition(this.§7#%§ - 1,§5$-§);
            param2.setTo(0,0,§5$-§.x,§5$-§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§3!n§.getPosition(this.§7#%§ - 1,§5$-§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§5$-§.x * _loc3_,§5$-§.y * _loc4_);
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
            §3[§(param1,§5#^§);
            this.§3!n§.getBounds(§5#^§,0,this.§7#%§,param2);
         }
         return param2;
      }
      
      public function §&!x§(param1:int) : uint
      {
         return this.§3!n§.§0M§(param1);
      }
      
      public function §5!@§(param1:int, param2:uint) : void
      {
         this.§3!n§.§;$>§(param1,param2);
         this.§&#?§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§[#v§ = true;
         }
         else
         {
            this.§[#v§ = this.§3!n§.tinted;
         }
      }
      
      public function §6#B§(param1:int) : Number
      {
         return this.§3!n§.§3#M§(param1);
      }
      
      public function §?#s§(param1:int, param2:Number) : void
      {
         this.§3!n§.§1G§(param1,param2);
         this.§&#?§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§[#v§ = true;
         }
         else
         {
            this.§[#v§ = this.§3!n§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§3!n§.§0M§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§7#%§ - 1;
         while(_loc2_ >= 0)
         {
            this.§5!@§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§[#v§ = true;
         }
         else
         {
            this.§[#v§ = this.§3!n§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§[#v§ = true;
         }
         else
         {
            this.§[#v§ = this.§3!n§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§`e§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§3!n§.copyTo(param1,param2,0,this.§7#%§,true,true,false,param4);
      }
      
      override public function render(param1:§[!Z§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §;J§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§[#v§;
      }
   }
}
