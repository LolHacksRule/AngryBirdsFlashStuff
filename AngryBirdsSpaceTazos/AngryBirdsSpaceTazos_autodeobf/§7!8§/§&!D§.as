package §7!8§
{
   import §&!Z§.§6!r§;
   import §&!Z§.transformCoords;
   import §5Q§.§%!t§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §&!D§ extends DisplayObject
   {
      
      private static var §["6§:Vector3D = new Vector3D();
      
      private static var §`!7§:Point = new Point();
      
      private static var §02§:Matrix = new Matrix();
       
      
      protected var §'!O§:§6!r§;
      
      private var §2p§:Number = 0.0;
      
      private var §[i§:Number = 0.0;
      
      private var §4"%§:uint = 16777215;
      
      public function §&!D§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§'!O§ = new §6!r§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§4"%§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§'!O§.§1?§(param4);
         this.§'!O§.setPosition(0,0,0);
         this.§'!O§.setPosition(1,param1,0);
         this.§'!O§.setPosition(2,0,param2);
         this.§'!O§.setPosition(3,param1,param2);
         this.§'!O§.§7x§(param3);
         this.§2p§ = param1;
         this.§[i§ = param2;
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
               this.§'!O§.getPosition(_loc7_,§["6§);
               _loc3_ = _loc3_ < §["6§.x ? Number(_loc3_) : Number(§["6§.x);
               _loc4_ = _loc4_ > §["6§.x ? Number(_loc4_) : Number(§["6§.x);
               _loc5_ = _loc5_ < §["6§.y ? Number(_loc5_) : Number(§["6§.y);
               _loc6_ = _loc6_ > §["6§.y ? Number(_loc6_) : Number(§["6§.y);
               _loc7_++;
            }
         }
         else
         {
            §]!U§(param1,§02§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§'!O§.getPosition(_loc7_,§["6§);
               transformCoords(§02§,§["6§.x,§["6§.y,§`!7§);
               _loc3_ = _loc3_ < §`!7§.x ? Number(_loc3_) : Number(§`!7§.x);
               _loc4_ = _loc4_ > §`!7§.x ? Number(_loc4_) : Number(§`!7§.x);
               _loc5_ = _loc5_ < §`!7§.y ? Number(_loc5_) : Number(§`!7§.y);
               _loc6_ = _loc6_ > §`!7§.y ? Number(_loc6_) : Number(§`!7§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §`!+§(param1:int) : uint
      {
         return this.§'!O§.§[w§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§'!O§.§%k§(param1,param2);
      }
      
      public function §3!i§(param1:int) : Number
      {
         return this.§'!O§.§&!5§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§'!O§.§24§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§4"%§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§4"%§ != param1)
         {
            this.§4"%§ = param1;
            this.§'!O§.§7x§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§6!r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§'!O§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
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
      
      public function get §41§() : Number
      {
         return this.§2p§;
      }
      
      public function get §@"5§() : Number
      {
         return this.§[i§;
      }
   }
}
