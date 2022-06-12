package §`L§
{
   import §+<§.§^"9§;
   import §+<§.transformCoords;
   import §-!+§.§,7§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §=!x§ extends DisplayObject
   {
      
      private static var §]!<§:Vector3D = new Vector3D();
      
      private static var §<!@§:Point = new Point();
      
      private static var §7V§:Matrix = new Matrix();
       
      
      protected var §'B§:§^"9§;
      
      private var §4!8§:Number = 0.0;
      
      private var §[!p§:Number = 0.0;
      
      private var §>N§:uint = 16777215;
      
      public function §=!x§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§'B§ = new §^"9§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§>N§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§'B§.§64§(param4);
         this.§'B§.setPosition(0,0,0);
         this.§'B§.setPosition(1,param1,0);
         this.§'B§.setPosition(2,0,param2);
         this.§'B§.setPosition(3,param1,param2);
         this.§'B§.§4!V§(param3);
         this.§4!8§ = param1;
         this.§[!p§ = param2;
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
               this.§'B§.§@!0§(_loc7_,§]!<§);
               _loc3_ = _loc3_ < §]!<§.x ? Number(_loc3_) : Number(§]!<§.x);
               _loc4_ = _loc4_ > §]!<§.x ? Number(_loc4_) : Number(§]!<§.x);
               _loc5_ = _loc5_ < §]!<§.y ? Number(_loc5_) : Number(§]!<§.y);
               _loc6_ = _loc6_ > §]!<§.y ? Number(_loc6_) : Number(§]!<§.y);
               _loc7_++;
            }
         }
         else
         {
            §=q§(param1,§7V§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§'B§.§@!0§(_loc7_,§]!<§);
               transformCoords(§7V§,§]!<§.x,§]!<§.y,§<!@§);
               _loc3_ = _loc3_ < §<!@§.x ? Number(_loc3_) : Number(§<!@§.x);
               _loc4_ = _loc4_ > §<!@§.x ? Number(_loc4_) : Number(§<!@§.x);
               _loc5_ = _loc5_ < §<!@§.y ? Number(_loc5_) : Number(§<!@§.y);
               _loc6_ = _loc6_ > §<!@§.y ? Number(_loc6_) : Number(§<!@§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §;!P§(param1:int) : uint
      {
         return this.§'B§.§-!C§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§'B§.§=;§(param1,param2);
      }
      
      public function § !U§(param1:int) : Number
      {
         return this.§'B§.§""$§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§'B§.§ !`§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§>N§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§>N§ != param1)
         {
            this.§>N§ = param1;
            this.§'B§.§4!V§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§^"9§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§'B§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§,7§, param2:Number) : void
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
      
      public function get §8Q§() : Number
      {
         return this.§4!8§;
      }
      
      public function get §^!,§() : Number
      {
         return this.§[!p§;
      }
   }
}
