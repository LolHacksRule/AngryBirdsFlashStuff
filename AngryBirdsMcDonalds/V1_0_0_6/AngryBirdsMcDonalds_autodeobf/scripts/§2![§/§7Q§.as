package §2![§
{
   import §6!J§.§%!k§;
   import §6!J§.transformCoords;
   import §=!K§.§>[§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §7Q§ extends DisplayObject
   {
      
      private static var §<[§:Vector3D = new Vector3D();
      
      private static var §-!e§:Point = new Point();
      
      private static var §[N§:Matrix = new Matrix();
       
      
      protected var §^`§:§%!k§;
      
      private var §"3§:Number = 0.0;
      
      private var §@x§:Number = 0.0;
      
      private var §?[§:uint = 16777215;
      
      public function §7Q§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§^`§ = new §%!k§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§?[§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§^`§.setPremultipliedAlpha(param4);
         this.§^`§.setPosition(0,0,0);
         this.§^`§.setPosition(1,param1,0);
         this.§^`§.setPosition(2,0,param2);
         this.§^`§.setPosition(3,param1,param2);
         this.§^`§.§^!Y§(param3);
         this.§"3§ = param1;
         this.§@x§ = param2;
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
               this.§^`§.§5B§(_loc7_,§<[§);
               _loc3_ = _loc3_ < §<[§.x ? Number(_loc3_) : Number(§<[§.x);
               _loc4_ = _loc4_ > §<[§.x ? Number(_loc4_) : Number(§<[§.x);
               _loc5_ = _loc5_ < §<[§.y ? Number(_loc5_) : Number(§<[§.y);
               _loc6_ = _loc6_ > §<[§.y ? Number(_loc6_) : Number(§<[§.y);
               _loc7_++;
            }
         }
         else
         {
            §+o§(param1,§[N§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§^`§.§5B§(_loc7_,§<[§);
               transformCoords(§[N§,§<[§.x,§<[§.y,§-!e§);
               _loc3_ = _loc3_ < §-!e§.x ? Number(_loc3_) : Number(§-!e§.x);
               _loc4_ = _loc4_ > §-!e§.x ? Number(_loc4_) : Number(§-!e§.x);
               _loc5_ = _loc5_ < §-!e§.y ? Number(_loc5_) : Number(§-!e§.y);
               _loc6_ = _loc6_ > §-!e§.y ? Number(_loc6_) : Number(§-!e§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §['§(param1:int) : uint
      {
         return this.§^`§.§,1§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§^`§.§;!D§(param1,param2);
      }
      
      public function §%<§(param1:int) : Number
      {
         return this.§^`§.§,!g§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§^`§.§9!S§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§?[§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§?[§ != param1)
         {
            this.§?[§ = param1;
            this.§^`§.§^!Y§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§%!k§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§^`§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§>[§, param2:Number) : void
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
      
      public function get §+A§() : Number
      {
         return this.§"3§;
      }
      
      public function get §#f§() : Number
      {
         return this.§@x§;
      }
   }
}
