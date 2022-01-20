package §`!n§
{
   import §%%§.§,!<§;
   import §>!a§.§;!V§;
   import §>!a§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § !i§ extends DisplayObject
   {
      
      private static var §!!?§:Vector3D = new Vector3D();
      
      private static var §2!F§:Point = new Point();
      
      private static var §9X§:Matrix = new Matrix();
       
      
      protected var §@Y§:§;!V§;
      
      private var §;!]§:Number = 0.0;
      
      private var §&F§:Number = 0.0;
      
      private var §>O§:uint = 16777215;
      
      public function § !i§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§@Y§ = new §;!V§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§>O§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§@Y§.§'g§(param4);
         this.§@Y§.setPosition(0,0,0);
         this.§@Y§.setPosition(1,param1,0);
         this.§@Y§.setPosition(2,0,param2);
         this.§@Y§.setPosition(3,param1,param2);
         this.§@Y§.§4S§(param3);
         this.§;!]§ = param1;
         this.§&F§ = param2;
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
               this.§@Y§.§ g§(_loc7_,§!!?§);
               _loc3_ = _loc3_ < §!!?§.x ? Number(_loc3_) : Number(§!!?§.x);
               _loc4_ = _loc4_ > §!!?§.x ? Number(_loc4_) : Number(§!!?§.x);
               _loc5_ = _loc5_ < §!!?§.y ? Number(_loc5_) : Number(§!!?§.y);
               _loc6_ = _loc6_ > §!!?§.y ? Number(_loc6_) : Number(§!!?§.y);
               _loc7_++;
            }
         }
         else
         {
            §'!C§(param1,§9X§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§@Y§.§ g§(_loc7_,§!!?§);
               transformCoords(§9X§,§!!?§.x,§!!?§.y,§2!F§);
               _loc3_ = _loc3_ < §2!F§.x ? Number(_loc3_) : Number(§2!F§.x);
               _loc4_ = _loc4_ > §2!F§.x ? Number(_loc4_) : Number(§2!F§.x);
               _loc5_ = _loc5_ < §2!F§.y ? Number(_loc5_) : Number(§2!F§.y);
               _loc6_ = _loc6_ > §2!F§.y ? Number(_loc6_) : Number(§2!F§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4!4§(param1:int) : uint
      {
         return this.§@Y§.§"!+§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§@Y§.§3!c§(param1,param2);
      }
      
      public function §^x§(param1:int) : Number
      {
         return this.§@Y§.§[!L§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§@Y§.§7!,§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§>O§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§>O§ != param1)
         {
            this.§>O§ = param1;
            this.§@Y§.§4S§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§;!V§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@Y§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§,!<§, param2:Number) : void
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
      
      public function get §+!W§() : Number
      {
         return this.§;!]§;
      }
      
      public function get §?Z§() : Number
      {
         return this.§&F§;
      }
   }
}
