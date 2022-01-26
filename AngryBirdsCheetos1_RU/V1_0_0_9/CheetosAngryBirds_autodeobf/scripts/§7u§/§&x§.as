package §7u§
{
   import §'!S§.§5[§;
   import §@u§.§@!1§;
   import §@u§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §&x§ extends DisplayObject
   {
      
      private static var §]L§:Vector3D = new Vector3D();
      
      private static var §20§:Point = new Point();
      
      private static var §[C§:Matrix = new Matrix();
       
      
      protected var §7P§:§@!1§;
      
      private var §[!,§:Number = 0.0;
      
      private var §!7§:Number = 0.0;
      
      private var §3z§:uint = 16777215;
      
      public function §&x§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§7P§ = new §@!1§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§3z§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§7P§.setPremultipliedAlpha(param4);
         this.§7P§.setPosition(0,0,0);
         this.§7P§.setPosition(1,param1,0);
         this.§7P§.setPosition(2,0,param2);
         this.§7P§.setPosition(3,param1,param2);
         this.§7P§.§%!+§(param3);
         this.§[!,§ = param1;
         this.§!7§ = param2;
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
               this.§7P§.§-!U§(_loc7_,§]L§);
               _loc3_ = _loc3_ < §]L§.x ? Number(_loc3_) : Number(§]L§.x);
               _loc4_ = _loc4_ > §]L§.x ? Number(_loc4_) : Number(§]L§.x);
               _loc5_ = _loc5_ < §]L§.y ? Number(_loc5_) : Number(§]L§.y);
               _loc6_ = _loc6_ > §]L§.y ? Number(_loc6_) : Number(§]L§.y);
               _loc7_++;
            }
         }
         else
         {
            §9P§(param1,§[C§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§7P§.§-!U§(_loc7_,§]L§);
               transformCoords(§[C§,§]L§.x,§]L§.y,§20§);
               _loc3_ = _loc3_ < §20§.x ? Number(_loc3_) : Number(§20§.x);
               _loc4_ = _loc4_ > §20§.x ? Number(_loc4_) : Number(§20§.x);
               _loc5_ = _loc5_ < §20§.y ? Number(_loc5_) : Number(§20§.y);
               _loc6_ = _loc6_ > §20§.y ? Number(_loc6_) : Number(§20§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4-§(param1:int) : uint
      {
         return this.§7P§.§]!E§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§7P§.§'!5§(param1,param2);
      }
      
      public function §8z§(param1:int) : Number
      {
         return this.§7P§.§>!@§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§7P§.§'!^§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§3z§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§3z§ != param1)
         {
            this.§3z§ = param1;
            this.§7P§.§%!+§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§@!1§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§7P§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§5[§, param2:Number) : void
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
      
      public function get §68§() : Number
      {
         return this.§[!,§;
      }
      
      public function get §]!N§() : Number
      {
         return this.§!7§;
      }
   }
}
