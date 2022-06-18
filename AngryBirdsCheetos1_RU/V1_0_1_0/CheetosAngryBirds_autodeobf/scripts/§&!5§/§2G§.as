package §&!5§
{
   import §"4§.§+s§;
   import §%W§.§ true§;
   import §%W§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §2G§ extends DisplayObject
   {
      
      private static var §"c§:Vector3D = new Vector3D();
      
      private static var §[!=§:Point = new Point();
      
      private static var §?!9§:Matrix = new Matrix();
       
      
      protected var § !,§:§ true§;
      
      private var §2=§:Number = 0.0;
      
      private var §"Z§:Number = 0.0;
      
      private var §93§:uint = 16777215;
      
      public function §2G§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§ !,§ = new § true§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§93§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§ !,§.setPremultipliedAlpha(param4);
         this.§ !,§.setPosition(0,0,0);
         this.§ !,§.setPosition(1,param1,0);
         this.§ !,§.setPosition(2,0,param2);
         this.§ !,§.setPosition(3,param1,param2);
         this.§ !,§.§ x§(param3);
         this.§2=§ = param1;
         this.§"Z§ = param2;
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
               this.§ !,§.§>G§(_loc7_,§"c§);
               _loc3_ = _loc3_ < §"c§.x ? Number(_loc3_) : Number(§"c§.x);
               _loc4_ = _loc4_ > §"c§.x ? Number(_loc4_) : Number(§"c§.x);
               _loc5_ = _loc5_ < §"c§.y ? Number(_loc5_) : Number(§"c§.y);
               _loc6_ = _loc6_ > §"c§.y ? Number(_loc6_) : Number(§"c§.y);
               _loc7_++;
            }
         }
         else
         {
            §@!X§(param1,§?!9§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§ !,§.§>G§(_loc7_,§"c§);
               transformCoords(§?!9§,§"c§.x,§"c§.y,§[!=§);
               _loc3_ = _loc3_ < §[!=§.x ? Number(_loc3_) : Number(§[!=§.x);
               _loc4_ = _loc4_ > §[!=§.x ? Number(_loc4_) : Number(§[!=§.x);
               _loc5_ = _loc5_ < §[!=§.y ? Number(_loc5_) : Number(§[!=§.y);
               _loc6_ = _loc6_ > §[!=§.y ? Number(_loc6_) : Number(§[!=§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §1C§(param1:int) : uint
      {
         return this.§ !,§.§]?§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§ !,§.§35§(param1,param2);
      }
      
      public function §4w§(param1:int) : Number
      {
         return this.§ !,§.§"!+§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§ !,§.§8H§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§93§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§93§ != param1)
         {
            this.§93§ = param1;
            this.§ !,§.§ x§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§ true§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ !,§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§+s§, param2:Number) : void
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
      
      public function get §+7§() : Number
      {
         return this.§2=§;
      }
      
      public function get §@!1§() : Number
      {
         return this.§"Z§;
      }
   }
}
