package §&!v§
{
   import §9+§.§]"+§;
   import §>l§.§%"O§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0"s§ extends DisplayObject
   {
      
      private static var §4!r§:Point = new Point();
      
      private static var §<#k§:Matrix = new Matrix();
       
      
      private var §5#D§:Boolean;
      
      protected var §4Z§:§%"O§;
      
      protected var §%!#§:Boolean = true;
      
      protected var §2#x§:Boolean = true;
      
      private var §%!Q§:Number = 0.0;
      
      private var §5[§:Number = 0.0;
      
      private var §'"V§:uint = 16777215;
      
      public function §0"s§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§5#D§ = param3 != 16777215;
         this.§4Z§ = new §%"O§(this.§!!f§,param4);
         this.initializeVertexData(param1,param2);
         this.§4Z§.§3$;§(param3);
         this.§'"V§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         this.§4Z§.setPosition(0,0,0);
         this.§4Z§.setPosition(1,param1,0);
         this.§4Z§.setPosition(2,0,param2);
         this.§4Z§.setPosition(3,param1,param2);
      }
      
      public function get §="&§() : int
      {
         return 1;
      }
      
      public function get §!!f§() : int
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
            this.§4Z§.getPosition(this.§!!f§ - 1,§4!r§);
            param2.setTo(0,0,§4!r§.x,§4!r§.y);
         }
         else if(param1 == parent && rotation == 0)
         {
            _loc3_ = this.scaleX;
            _loc4_ = this.scaleY;
            this.§4Z§.getPosition(this.§!!f§ - 1,§4!r§);
            param2.setTo(x - pivotX * _loc3_,y - pivotY * _loc4_,§4!r§.x * _loc3_,§4!r§.y * _loc4_);
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
            §='§(param1,§<#k§);
            this.§4Z§.getBounds(§<#k§,0,this.§!!f§,param2);
         }
         return param2;
      }
      
      public function §]#^§(param1:int) : uint
      {
         return this.§4Z§.§=#U§(param1);
      }
      
      public function §-#K§(param1:int, param2:uint) : void
      {
         this.§4Z§.§?e§(param1,param2);
         this.§%!#§ = true;
         if(param2 != 16777215 || alpha != 1)
         {
            this.§5#D§ = true;
         }
         else
         {
            this.§5#D§ = this.§4Z§.tinted;
         }
      }
      
      public function §+"<§(param1:int) : Number
      {
         return this.§4Z§.§[+§(param1);
      }
      
      public function §3!r§(param1:int, param2:Number) : void
      {
         this.§4Z§.§+$2§(param1,param2);
         this.§%!#§ = true;
         if(param2 != 1 || this.color != 16777215)
         {
            this.§5#D§ = true;
         }
         else
         {
            this.§5#D§ = this.§4Z§.tinted;
         }
      }
      
      public function get color() : uint
      {
         return this.§4Z§.§=#U§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:int = this.§!!f§ - 1;
         while(_loc2_ >= 0)
         {
            this.§-#K§(_loc2_,param1);
            _loc2_--;
         }
         if(param1 != 16777215 || alpha != 1)
         {
            this.§5#D§ = true;
         }
         else
         {
            this.§5#D§ = this.§4Z§.tinted;
         }
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if(param1 < 1 || this.color != 16777215)
         {
            this.§5#D§ = true;
         }
         else
         {
            this.§5#D§ = this.§4Z§.tinted;
         }
      }
      
      public function copyVertexDataTo(param1:§%"O§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         this.§4Z§.copyTo(param1,param2,0,this.§!!f§,true,true,false,param4);
      }
      
      override public function render(param1:§]"+§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get §=">§() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get tinted() : Boolean
      {
         return this.§5#D§;
      }
   }
}
