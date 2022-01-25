package §`!B§
{
   import §1Q§.§=!6§;
   import §1Q§.transformCoords;
   import §=!d§.§`J§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §]!J§ extends DisplayObject
   {
      
      private static var § n§:Vector3D = new Vector3D();
      
      private static var §0!S§:Point = new Point();
      
      private static var §9!b§:Matrix = new Matrix();
       
      
      protected var §[n§:§=!6§;
      
      private var §&9§:Number = 0.0;
      
      private var §1!F§:Number = 0.0;
      
      private var §7!y§:uint = 16777215;
      
      public function §]!J§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§[n§ = new §=!6§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§7!y§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§[n§.§9"+§(param4);
         this.§[n§.setPosition(0,0,0);
         this.§[n§.setPosition(1,param1,0);
         this.§[n§.setPosition(2,0,param2);
         this.§[n§.setPosition(3,param1,param2);
         this.§[n§.§"6§(param3);
         this.§&9§ = param1;
         this.§1!F§ = param2;
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
               this.§[n§.§4s§(_loc7_,§ n§);
               _loc3_ = _loc3_ < § n§.x ? Number(_loc3_) : Number(§ n§.x);
               _loc4_ = _loc4_ > § n§.x ? Number(_loc4_) : Number(§ n§.x);
               _loc5_ = _loc5_ < § n§.y ? Number(_loc5_) : Number(§ n§.y);
               _loc6_ = _loc6_ > § n§.y ? Number(_loc6_) : Number(§ n§.y);
               _loc7_++;
            }
         }
         else
         {
            §6"7§(param1,§9!b§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§[n§.§4s§(_loc7_,§ n§);
               transformCoords(§9!b§,§ n§.x,§ n§.y,§0!S§);
               _loc3_ = _loc3_ < §0!S§.x ? Number(_loc3_) : Number(§0!S§.x);
               _loc4_ = _loc4_ > §0!S§.x ? Number(_loc4_) : Number(§0!S§.x);
               _loc5_ = _loc5_ < §0!S§.y ? Number(_loc5_) : Number(§0!S§.y);
               _loc6_ = _loc6_ > §0!S§.y ? Number(_loc6_) : Number(§0!S§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §6!Y§(param1:int) : uint
      {
         return this.§[n§.§0"4§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§[n§.§70§(param1,param2);
      }
      
      public function §?!>§(param1:int) : Number
      {
         return this.§[n§.§26§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§[n§.§&'§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§7!y§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§7!y§ != param1)
         {
            this.§7!y§ = param1;
            this.§[n§.§"6§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§=!6§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[n§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§`J§, param2:Number) : void
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
      
      public function get §9!7§() : Number
      {
         return this.§&9§;
      }
      
      public function get §3!Y§() : Number
      {
         return this.§1!F§;
      }
   }
}
