package §#!,§
{
   import §'7§.VertexData;
   import §'7§.transformCoords;
   import §7!>§.RenderSupport;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6!Y§ extends DisplayObject
   {
      
      private static var §9!G§:Vector3D = new Vector3D();
      
      private static var §>!C§:Point = new Point();
      
      private static var §]!C§:Matrix = new Matrix();
       
      
      protected var §7!$§:VertexData;
      
      private var §9U§:Number = 0.0;
      
      private var §2!h§:Number = 0.0;
      
      private var §>!M§:uint = 16777215;
      
      public function §6!Y§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§7!$§ = new VertexData(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§>!M§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§7!$§.setPremultipliedAlpha(param4);
         this.§7!$§.setPosition(0,0,0);
         this.§7!$§.setPosition(1,param1,0);
         this.§7!$§.setPosition(2,0,param2);
         this.§7!$§.setPosition(3,param1,param2);
         this.§7!$§.§-![§(param3);
         this.§9U§ = param1;
         this.§2!h§ = param2;
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
               this.§7!$§.§=!,§(_loc7_,§9!G§);
               _loc3_ = _loc3_ < §9!G§.x ? Number(_loc3_) : Number(§9!G§.x);
               _loc4_ = _loc4_ > §9!G§.x ? Number(_loc4_) : Number(§9!G§.x);
               _loc5_ = _loc5_ < §9!G§.y ? Number(_loc5_) : Number(§9!G§.y);
               _loc6_ = _loc6_ > §9!G§.y ? Number(_loc6_) : Number(§9!G§.y);
               _loc7_++;
            }
         }
         else
         {
            §@!7§(param1,§]!C§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§7!$§.§=!,§(_loc7_,§9!G§);
               transformCoords(§]!C§,§9!G§.x,§9!G§.y,§>!C§);
               _loc3_ = _loc3_ < §>!C§.x ? Number(_loc3_) : Number(§>!C§.x);
               _loc4_ = _loc4_ > §>!C§.x ? Number(_loc4_) : Number(§>!C§.x);
               _loc5_ = _loc5_ < §>!C§.y ? Number(_loc5_) : Number(§>!C§.y);
               _loc6_ = _loc6_ > §>!C§.y ? Number(_loc6_) : Number(§>!C§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §7!i§(param1:int) : uint
      {
         return this.§7!$§.§<X§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§7!$§.§]!G§(param1,param2);
      }
      
      public function §'!T§(param1:int) : Number
      {
         return this.§7!$§.§;X§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§7!$§.§-d§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§>!M§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§>!M§ != param1)
         {
            this.§>!M§ = param1;
            this.§7!$§.§-![§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§7!$§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
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
      
      public function get §6!=§() : Number
      {
         return this.§9U§;
      }
      
      public function get §?s§() : Number
      {
         return this.§2!h§;
      }
   }
}
