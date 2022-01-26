package §@!=§
{
   import §5!3§.§^x§;
   import §5!3§.transformCoords;
   import §@!%§.§]A§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §4G§ extends DisplayObject
   {
      
      private static var §"[§:Vector3D = new Vector3D();
      
      private static var §,h§:Point = new Point();
      
      private static var §,l§:Matrix = new Matrix();
       
      
      protected var §@T§:§^x§;
      
      private var §0v§:Number = 0.0;
      
      private var §6a§:Number = 0.0;
      
      private var §]O§:uint = 16777215;
      
      public function §4G§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§@T§ = new §^x§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§]O§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§@T§.setPremultipliedAlpha(param4);
         this.§@T§.setPosition(0,0,0);
         this.§@T§.setPosition(1,param1,0);
         this.§@T§.setPosition(2,0,param2);
         this.§@T§.setPosition(3,param1,param2);
         this.§@T§.§4R§(param3);
         this.§0v§ = param1;
         this.§6a§ = param2;
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
               this.§@T§.§!5§(_loc7_,§"[§);
               _loc3_ = _loc3_ < §"[§.x ? Number(_loc3_) : Number(§"[§.x);
               _loc4_ = _loc4_ > §"[§.x ? Number(_loc4_) : Number(§"[§.x);
               _loc5_ = _loc5_ < §"[§.y ? Number(_loc5_) : Number(§"[§.y);
               _loc6_ = _loc6_ > §"[§.y ? Number(_loc6_) : Number(§"[§.y);
               _loc7_++;
            }
         }
         else
         {
            §2B§(param1,§,l§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§@T§.§!5§(_loc7_,§"[§);
               transformCoords(§,l§,§"[§.x,§"[§.y,§,h§);
               _loc3_ = _loc3_ < §,h§.x ? Number(_loc3_) : Number(§,h§.x);
               _loc4_ = _loc4_ > §,h§.x ? Number(_loc4_) : Number(§,h§.x);
               _loc5_ = _loc5_ < §,h§.y ? Number(_loc5_) : Number(§,h§.y);
               _loc6_ = _loc6_ > §,h§.y ? Number(_loc6_) : Number(§,h§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §@_§(param1:int) : uint
      {
         return this.§@T§.§3!§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§@T§.§;E§(param1,param2);
      }
      
      public function §%!B§(param1:int) : Number
      {
         return this.§@T§.§%!-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§@T§.§3L§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§]O§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§]O§ != param1)
         {
            this.§]O§ = param1;
            this.§@T§.§4R§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§^x§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@T§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§]A§, param2:Number) : void
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
      
      public function get §',§() : Number
      {
         return this.§0v§;
      }
      
      public function get §5s§() : Number
      {
         return this.§6a§;
      }
   }
}
