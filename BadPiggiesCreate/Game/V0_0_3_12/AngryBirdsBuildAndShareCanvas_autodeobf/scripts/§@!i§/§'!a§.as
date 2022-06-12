package §@!i§
{
   import §!p§.§'%§;
   import §!p§.transformCoords;
   import §3",§.§'5§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §'!a§ extends DisplayObject
   {
      
      private static var §!u§:Vector3D = new Vector3D();
      
      private static var §5"6§:Point = new Point();
      
      private static var §>J§:Matrix = new Matrix();
       
      
      protected var §"!,§:§'%§;
      
      private var §4%§:Number = 0.0;
      
      private var §%k§:Number = 0.0;
      
      private var §?!0§:uint = 16777215;
      
      public function §'!a§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§"!,§ = new §'%§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§?!0§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§"!,§.§`m§(param4);
         this.§"!,§.setPosition(0,0,0);
         this.§"!,§.setPosition(1,param1,0);
         this.§"!,§.setPosition(2,0,param2);
         this.§"!,§.setPosition(3,param1,param2);
         this.§"!,§.§?!n§(param3);
         this.§4%§ = param1;
         this.§%k§ = param2;
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
               this.§"!,§.§2d§(_loc7_,§!u§);
               _loc3_ = _loc3_ < §!u§.x ? Number(_loc3_) : Number(§!u§.x);
               _loc4_ = _loc4_ > §!u§.x ? Number(_loc4_) : Number(§!u§.x);
               _loc5_ = _loc5_ < §!u§.y ? Number(_loc5_) : Number(§!u§.y);
               _loc6_ = _loc6_ > §!u§.y ? Number(_loc6_) : Number(§!u§.y);
               _loc7_++;
            }
         }
         else
         {
            §2b§(param1,§>J§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§"!,§.§2d§(_loc7_,§!u§);
               transformCoords(§>J§,§!u§.x,§!u§.y,§5"6§);
               _loc3_ = _loc3_ < §5"6§.x ? Number(_loc3_) : Number(§5"6§.x);
               _loc4_ = _loc4_ > §5"6§.x ? Number(_loc4_) : Number(§5"6§.x);
               _loc5_ = _loc5_ < §5"6§.y ? Number(_loc5_) : Number(§5"6§.y);
               _loc6_ = _loc6_ > §5"6§.y ? Number(_loc6_) : Number(§5"6§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function § " §(param1:int) : uint
      {
         return this.§"!,§.§2!U§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§"!,§.§7!$§(param1,param2);
      }
      
      public function §]6§(param1:int) : Number
      {
         return this.§"!,§.§"C§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§"!,§.§3!W§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§?!0§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§?!0§ != param1)
         {
            this.§?!0§ = param1;
            this.§"!,§.§?!n§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§'%§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"!,§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§'5§, param2:Number) : void
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
      
      public function get §%!J§() : Number
      {
         return this.§4%§;
      }
      
      public function get §=$§() : Number
      {
         return this.§%k§;
      }
   }
}
