package §#Z§
{
   import §&§.§""F§;
   import §0"D§.§,4§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6J§ extends DisplayObject
   {
      
      private static var §7!o§:Point = new Point();
      
      private static var §5y§:Matrix = new Matrix();
       
      
      private var §try§:Boolean;
      
      protected var §3!-§:§,4§;
      
      protected var §&"a§:Boolean = true;
      
      protected var §>#k§:Boolean = true;
      
      private var §!!S§:Number = 0.0;
      
      private var §=7§:Number = 0.0;
      
      private var §5#n§:uint = 16777215;
      
      public function §6J§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§try§ = param3 != 16777215;
         this.§3!-§ = new §,4§(this.§9z§,param4);
         this.initializeVertexData(param1,param2);
         this.§3!-§.§#"]§(param3);
         this.§5#n§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§3!-§.setPosition(0,0,0);
         this.§3!-§.setPosition(1,param1,0);
         this.§3!-§.setPosition(2,0,param2);
         this.§3!-§.setPosition(3,param1,param2);
      }
      
      public function get §"#7§() : int
      {
         return 1;
      }
      
      public function get §9z§() : int
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
            this.§3!-§.getPosition(this.§9z§ - 1,§7!o§);
            param2.setTo(0,0,§7!o§.x,§7!o§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§3!-§.getPosition(this.§9z§ - 1,§7!o§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§7!o§.x * _loc3_,§7!o§.y * _loc4_);
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
            §?P§(param1,§5y§);
            this.§3!-§.getBounds(§5y§,0,this.§9z§,param2);
         }
         return param2;
      }
      
      public function §-#v§(param1:int) : uint
      {
         return this.§3!-§.§1w§(param1);
      }
      
      public function §@#-§(param1:int, param2:uint) : void
      {
         this.§3!-§.§>!l§(param1,param2);
         this.§&"a§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§try§ = true;
         }
         else
         {
            this.§try§ = this.§3!-§.tinted;
         }
      }
      
      public function §0t§(param1:int) : Number
      {
         return this.§3!-§.§;"g§(param1);
      }
      
      public function §`!j§(param1:int, param2:Number) : void
      {
         this.§3!-§.§>f§(param1,param2);
         this.§&"a§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§try§ = true;
         }
         else
         {
            this.§try§ = this.§3!-§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§3!-§.§1w§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§9z§ - 1;
         while(_loc2_ >= 0)
         {
            this.§@#-§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§try§ = true;
         }
         else
         {
            this.§try§ = this.§3!-§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§try§ = true;
         }
         else
         {
            this.§try§ = this.§3!-§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§,4§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§3!-§.copyTo(param1,param2,0,this.§9z§,true,true,false,param4);
      }
      
      override public function render(param1:§""F§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §[$1§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§try§;
      }
   }
}
