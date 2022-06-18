package §;q§
{
   import §2c§.§&H§;
   import §2c§.transformCoords;
   import §;%§.§8S§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §-!>§ extends DisplayObject
   {
      
      private static var §>s§:Vector3D = new Vector3D();
      
      private static var §#_§:Point = new Point();
      
      private static var §?!3§:Matrix = new Matrix();
       
      
      protected var §2!@§:§&H§;
      
      private var §#!E§:Number = 0.0;
      
      private var §#!'§:Number = 0.0;
      
      private var §&!@§:uint = 16777215;
      
      public function §-!>§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§2!@§ = new §&H§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§&!@§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§2!@§.setPremultipliedAlpha(param4);
         this.§2!@§.setPosition(0,0,0);
         this.§2!@§.setPosition(1,param1,0);
         this.§2!@§.setPosition(2,0,param2);
         this.§2!@§.setPosition(3,param1,param2);
         this.§2!@§.§%!;§(param3);
         this.§#!E§ = param1;
         this.§#!'§ = param2;
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
               this.§2!@§.§-+§(_loc7_,§>s§);
               _loc3_ = _loc3_ < §>s§.x ? Number(_loc3_) : Number(§>s§.x);
               _loc4_ = _loc4_ > §>s§.x ? Number(_loc4_) : Number(§>s§.x);
               _loc5_ = _loc5_ < §>s§.y ? Number(_loc5_) : Number(§>s§.y);
               _loc6_ = _loc6_ > §>s§.y ? Number(_loc6_) : Number(§>s§.y);
               _loc7_++;
            }
         }
         else
         {
            §&Z§(param1,§?!3§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§2!@§.§-+§(_loc7_,§>s§);
               transformCoords(§?!3§,§>s§.x,§>s§.y,§#_§);
               _loc3_ = _loc3_ < §#_§.x ? Number(_loc3_) : Number(§#_§.x);
               _loc4_ = _loc4_ > §#_§.x ? Number(_loc4_) : Number(§#_§.x);
               _loc5_ = _loc5_ < §#_§.y ? Number(_loc5_) : Number(§#_§.y);
               _loc6_ = _loc6_ > §#_§.y ? Number(_loc6_) : Number(§#_§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4!C§(param1:int) : uint
      {
         return this.§2!@§.§^B§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§2!@§.§9! §(param1,param2);
      }
      
      public function §'%§(param1:int) : Number
      {
         return this.§2!@§.§7A§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§2!@§.§?!5§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§&!@§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§&!@§ != param1)
         {
            this.§&!@§ = param1;
            this.§2!@§.§%!;§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§&H§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2!@§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§8S§, param2:Number) : void
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
      
      public function get initialWidth() : Number
      {
         return this.§#!E§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§#!'§;
      }
   }
}
