package §]!v§
{
   import §+!F§.§<!l§;
   import §8!8§.§`g§;
   import §8!8§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §+!`§ extends DisplayObject
   {
      
      private static var §8!S§:Vector3D = new Vector3D();
      
      private static var §!'§:Point = new Point();
      
      private static var §"5§:Matrix = new Matrix();
       
      
      protected var §`!a§:§`g§;
      
      private var §^5§:Number = 0.0;
      
      private var §7"?§:Number = 0.0;
      
      private var §@K§:uint = 16777215;
      
      public function §+!`§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§`!a§ = new §`g§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§@K§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§`!a§.§6!!§(param4);
         this.§`!a§.setPosition(0,0,0);
         this.§`!a§.setPosition(1,param1,0);
         this.§`!a§.setPosition(2,0,param2);
         this.§`!a§.setPosition(3,param1,param2);
         this.§`!a§.§]B§(param3);
         this.§^5§ = param1;
         this.§7"?§ = param2;
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
               this.§`!a§.§!%§(_loc7_,§8!S§);
               _loc3_ = _loc3_ < §8!S§.x ? Number(_loc3_) : Number(§8!S§.x);
               _loc4_ = _loc4_ > §8!S§.x ? Number(_loc4_) : Number(§8!S§.x);
               _loc5_ = _loc5_ < §8!S§.y ? Number(_loc5_) : Number(§8!S§.y);
               _loc6_ = _loc6_ > §8!S§.y ? Number(_loc6_) : Number(§8!S§.y);
               _loc7_++;
            }
         }
         else
         {
            §["+§(param1,§"5§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§`!a§.§!%§(_loc7_,§8!S§);
               transformCoords(§"5§,§8!S§.x,§8!S§.y,§!'§);
               _loc3_ = _loc3_ < §!'§.x ? Number(_loc3_) : Number(§!'§.x);
               _loc4_ = _loc4_ > §!'§.x ? Number(_loc4_) : Number(§!'§.x);
               _loc5_ = _loc5_ < §!'§.y ? Number(_loc5_) : Number(§!'§.y);
               _loc6_ = _loc6_ > §!'§.y ? Number(_loc6_) : Number(§!'§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §@k§(param1:int) : uint
      {
         return this.§`!a§.§^Z§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§`!a§.§2<§(param1,param2);
      }
      
      public function §=!>§(param1:int) : Number
      {
         return this.§`!a§.§ "-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§`!a§.§[_§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§@K§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§@K§ != param1)
         {
            this.§@K§ = param1;
            this.§`!a§.§]B§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§`g§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§`!a§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§<!l§, param2:Number) : void
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
      
      public function get §9"1§() : Number
      {
         return this.§^5§;
      }
      
      public function get § U§() : Number
      {
         return this.§7"?§;
      }
   }
}
