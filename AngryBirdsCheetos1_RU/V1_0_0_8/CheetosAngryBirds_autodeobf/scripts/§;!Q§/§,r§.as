package §;!Q§
{
   import §-!§.§3!5§;
   import §9!V§.§3!B§;
   import §9!V§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §,r§ extends DisplayObject
   {
      
      private static var §&N§:Vector3D = new Vector3D();
      
      private static var §7![§:Point = new Point();
      
      private static var §@-§:Matrix = new Matrix();
       
      
      protected var §[!L§:§3!B§;
      
      private var §7r§:Number = 0.0;
      
      private var §[!H§:Number = 0.0;
      
      private var § e§:uint = 16777215;
      
      public function §,r§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§[!L§ = new §3!B§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§ e§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§[!L§.setPremultipliedAlpha(param4);
         this.§[!L§.setPosition(0,0,0);
         this.§[!L§.setPosition(1,param1,0);
         this.§[!L§.setPosition(2,0,param2);
         this.§[!L§.setPosition(3,param1,param2);
         this.§[!L§.§]e§(param3);
         this.§7r§ = param1;
         this.§[!H§ = param2;
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
               this.§[!L§.§&X§(_loc7_,§&N§);
               _loc3_ = _loc3_ < §&N§.x ? Number(_loc3_) : Number(§&N§.x);
               _loc4_ = _loc4_ > §&N§.x ? Number(_loc4_) : Number(§&N§.x);
               _loc5_ = _loc5_ < §&N§.y ? Number(_loc5_) : Number(§&N§.y);
               _loc6_ = _loc6_ > §&N§.y ? Number(_loc6_) : Number(§&N§.y);
               _loc7_++;
            }
         }
         else
         {
            §@!X§(param1,§@-§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§[!L§.§&X§(_loc7_,§&N§);
               transformCoords(§@-§,§&N§.x,§&N§.y,§7![§);
               _loc3_ = _loc3_ < §7![§.x ? Number(_loc3_) : Number(§7![§.x);
               _loc4_ = _loc4_ > §7![§.x ? Number(_loc4_) : Number(§7![§.x);
               _loc5_ = _loc5_ < §7![§.y ? Number(_loc5_) : Number(§7![§.y);
               _loc6_ = _loc6_ > §7![§.y ? Number(_loc6_) : Number(§7![§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §"!Z§(param1:int) : uint
      {
         return this.§[!L§.§,!5§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§[!L§.§5z§(param1,param2);
      }
      
      public function §;^§(param1:int) : Number
      {
         return this.§[!L§.§^>§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§[!L§.§6!B§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§ e§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§ e§ != param1)
         {
            this.§ e§ = param1;
            this.§[!L§.§]e§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§3!B§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[!L§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§3!5§, param2:Number) : void
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
      
      public function get §+_§() : Number
      {
         return this.§7r§;
      }
      
      public function get §1!V§() : Number
      {
         return this.§[!H§;
      }
   }
}
