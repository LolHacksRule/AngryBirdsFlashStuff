package §,!q§
{
   import §-!Y§.§,!f§;
   import §-$§.§6"5§;
   import §-$§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §#!H§ extends DisplayObject
   {
      
      private static var §>H§:Vector3D = new Vector3D();
      
      private static var §3!1§:Point = new Point();
      
      private static var §@Z§:Matrix = new Matrix();
       
      
      protected var §;<§:§6"5§;
      
      private var §3p§:Number = 0.0;
      
      private var §%!U§:Number = 0.0;
      
      private var § ! §:uint = 16777215;
      
      public function §#!H§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§;<§ = new §6"5§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§ ! § = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§;<§.§3"4§(param4);
         this.§;<§.setPosition(0,0,0);
         this.§;<§.setPosition(1,param1,0);
         this.§;<§.setPosition(2,0,param2);
         this.§;<§.setPosition(3,param1,param2);
         this.§;<§.§>!=§(param3);
         this.§3p§ = param1;
         this.§%!U§ = param2;
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
               this.§;<§.§&§(_loc7_,§>H§);
               _loc3_ = _loc3_ < §>H§.x ? Number(_loc3_) : Number(§>H§.x);
               _loc4_ = _loc4_ > §>H§.x ? Number(_loc4_) : Number(§>H§.x);
               _loc5_ = _loc5_ < §>H§.y ? Number(_loc5_) : Number(§>H§.y);
               _loc6_ = _loc6_ > §>H§.y ? Number(_loc6_) : Number(§>H§.y);
               _loc7_++;
            }
         }
         else
         {
            §&!n§(param1,§@Z§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§;<§.§&§(_loc7_,§>H§);
               transformCoords(§@Z§,§>H§.x,§>H§.y,§3!1§);
               _loc3_ = _loc3_ < §3!1§.x ? Number(_loc3_) : Number(§3!1§.x);
               _loc4_ = _loc4_ > §3!1§.x ? Number(_loc4_) : Number(§3!1§.x);
               _loc5_ = _loc5_ < §3!1§.y ? Number(_loc5_) : Number(§3!1§.y);
               _loc6_ = _loc6_ > §3!1§.y ? Number(_loc6_) : Number(§3!1§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §-!l§(param1:int) : uint
      {
         return this.§;<§.§,!X§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§;<§.§"N§(param1,param2);
      }
      
      public function §%!G§(param1:int) : Number
      {
         return this.§;<§.§ 3§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§;<§.§6!L§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§ ! §;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§ ! § != param1)
         {
            this.§ ! § = param1;
            this.§;<§.§>!=§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§6"5§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§;<§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§,!f§, param2:Number) : void
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
      
      public function get §5![§() : Number
      {
         return this.§3p§;
      }
      
      public function get §5"!§() : Number
      {
         return this.§%!U§;
      }
   }
}
