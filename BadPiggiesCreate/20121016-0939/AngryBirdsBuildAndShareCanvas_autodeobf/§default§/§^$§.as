package §default§
{
   import §3W§.§>!-§;
   import §3W§.transformCoords;
   import §6p§.§5!W§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §^$§ extends DisplayObject
   {
      
      private static var §6!X§:Vector3D = new Vector3D();
      
      private static var §?!`§:Point = new Point();
      
      private static var §,C§:Matrix = new Matrix();
       
      
      protected var §8!m§:§>!-§;
      
      private var §`o§:Number = 0.0;
      
      private var §6!d§:Number = 0.0;
      
      private var §;!`§:uint = 16777215;
      
      public function §^$§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§8!m§ = new §>!-§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§;!`§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§8!m§.§&B§(param4);
         this.§8!m§.setPosition(0,0,0);
         this.§8!m§.setPosition(1,param1,0);
         this.§8!m§.setPosition(2,0,param2);
         this.§8!m§.setPosition(3,param1,param2);
         this.§8!m§.§[_§(param3);
         this.§`o§ = param1;
         this.§6!d§ = param2;
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
               this.§8!m§.§9!l§(_loc7_,§6!X§);
               _loc3_ = _loc3_ < §6!X§.x ? Number(_loc3_) : Number(§6!X§.x);
               _loc4_ = _loc4_ > §6!X§.x ? Number(_loc4_) : Number(§6!X§.x);
               _loc5_ = _loc5_ < §6!X§.y ? Number(_loc5_) : Number(§6!X§.y);
               _loc6_ = _loc6_ > §6!X§.y ? Number(_loc6_) : Number(§6!X§.y);
               _loc7_++;
            }
         }
         else
         {
            §5!m§(param1,§,C§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§8!m§.§9!l§(_loc7_,§6!X§);
               transformCoords(§,C§,§6!X§.x,§6!X§.y,§?!`§);
               _loc3_ = _loc3_ < §?!`§.x ? Number(_loc3_) : Number(§?!`§.x);
               _loc4_ = _loc4_ > §?!`§.x ? Number(_loc4_) : Number(§?!`§.x);
               _loc5_ = _loc5_ < §?!`§.y ? Number(_loc5_) : Number(§?!`§.y);
               _loc6_ = _loc6_ > §?!`§.y ? Number(_loc6_) : Number(§?!`§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §+!0§(param1:int) : uint
      {
         return this.§8!m§.§2" §(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§8!m§.§ "9§(param1,param2);
      }
      
      public function §'!M§(param1:int) : Number
      {
         return this.§8!m§.§&!-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§8!m§.§]!G§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§;!`§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§;!`§ != param1)
         {
            this.§;!`§ = param1;
            this.§8!m§.§[_§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§>!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§8!m§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
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
      
      public function get §?!k§() : Number
      {
         return this.§`o§;
      }
      
      public function get § !_§() : Number
      {
         return this.§6!d§;
      }
   }
}
