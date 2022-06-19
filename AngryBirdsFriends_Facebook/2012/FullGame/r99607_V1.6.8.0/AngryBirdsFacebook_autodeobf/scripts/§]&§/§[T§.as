package §]&§
{
   import §+"6§.§2!6§;
   import §>!+§.§2!%§;
   import §>!+§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §[T§ extends DisplayObject
   {
      
      private static var §%i§:Vector3D = new Vector3D();
      
      private static var §!!&§:Point = new Point();
      
      private static var § Y§:Matrix = new Matrix();
       
      
      protected var §6" §:§2!%§;
      
      private var §[!$§:Number = 0.0;
      
      private var § !'§:Number = 0.0;
      
      private var §?!g§:uint = 16777215;
      
      public function §[T§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§6" § = new §2!%§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§?!g§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§6" §.§]!v§(param4);
         this.§6" §.setPosition(0,0,0);
         this.§6" §.setPosition(1,param1,0);
         this.§6" §.setPosition(2,0,param2);
         this.§6" §.setPosition(3,param1,param2);
         this.§6" §.§#I§(param3);
         this.§[!$§ = param1;
         this.§ !'§ = param2;
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
               this.§6" §.§5!X§(_loc7_,§%i§);
               _loc3_ = _loc3_ < §%i§.x ? Number(_loc3_) : Number(§%i§.x);
               _loc4_ = _loc4_ > §%i§.x ? Number(_loc4_) : Number(§%i§.x);
               _loc5_ = _loc5_ < §%i§.y ? Number(_loc5_) : Number(§%i§.y);
               _loc6_ = _loc6_ > §%i§.y ? Number(_loc6_) : Number(§%i§.y);
               _loc7_++;
            }
         }
         else
         {
            §%!b§(param1,§ Y§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§6" §.§5!X§(_loc7_,§%i§);
               transformCoords(§ Y§,§%i§.x,§%i§.y,§!!&§);
               _loc3_ = _loc3_ < §!!&§.x ? Number(_loc3_) : Number(§!!&§.x);
               _loc4_ = _loc4_ > §!!&§.x ? Number(_loc4_) : Number(§!!&§.x);
               _loc5_ = _loc5_ < §!!&§.y ? Number(_loc5_) : Number(§!!&§.y);
               _loc6_ = _loc6_ > §!!&§.y ? Number(_loc6_) : Number(§!!&§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §8!V§(param1:int) : uint
      {
         return this.§6" §.§9! §(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§6" §.§2"&§(param1,param2);
      }
      
      public function §'U§(param1:int) : Number
      {
         return this.§6" §.§-"4§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§6" §.§>!!§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§?!g§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§?!g§ != param1)
         {
            this.§?!g§ = param1;
            this.§6" §.§#I§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§2!%§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§6" §.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§2!6§, param2:Number) : void
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
      
      public function get §?!c§() : Number
      {
         return this.§[!$§;
      }
      
      public function get §'!§() : Number
      {
         return this.§ !'§;
      }
   }
}
