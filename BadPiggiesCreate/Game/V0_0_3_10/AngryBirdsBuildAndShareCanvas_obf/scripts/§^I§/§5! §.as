package §^I§
{
   import §5!5§.§?"5§;
   import §="#§.§&-§;
   import §="#§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §5! § extends DisplayObject
   {
      
      private static var §6!q§:Vector3D = new Vector3D();
      
      private static var §<!m§:Point = new Point();
      
      private static var §-!z§:Matrix = new Matrix();
       
      
      protected var §;!8§:§&-§;
      
      private var §[!s§:Number = 0.0;
      
      private var §`y§:Number = 0.0;
      
      private var §#!j§:uint = 16777215;
      
      public function §5! §(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§;!8§ = new §&-§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§#!j§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§;!8§.setPremultipliedAlpha(param4);
         this.§;!8§.setPosition(0,0,0);
         this.§;!8§.setPosition(1,param1,0);
         this.§;!8§.setPosition(2,0,param2);
         this.§;!8§.setPosition(3,param1,param2);
         this.§;!8§.§1!y§(param3);
         this.§[!s§ = param1;
         this.§`y§ = param2;
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
               this.§;!8§.§9b§(_loc7_,§6!q§);
               _loc3_ = _loc3_ < §6!q§.x ? Number(_loc3_) : Number(§6!q§.x);
               _loc4_ = _loc4_ > §6!q§.x ? Number(_loc4_) : Number(§6!q§.x);
               _loc5_ = _loc5_ < §6!q§.y ? Number(_loc5_) : Number(§6!q§.y);
               _loc6_ = _loc6_ > §6!q§.y ? Number(_loc6_) : Number(§6!q§.y);
               _loc7_++;
            }
         }
         else
         {
            §,,§(param1,§-!z§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§;!8§.§9b§(_loc7_,§6!q§);
               transformCoords(§-!z§,§6!q§.x,§6!q§.y,§<!m§);
               _loc3_ = _loc3_ < §<!m§.x ? Number(_loc3_) : Number(§<!m§.x);
               _loc4_ = _loc4_ > §<!m§.x ? Number(_loc4_) : Number(§<!m§.x);
               _loc5_ = _loc5_ < §<!m§.y ? Number(_loc5_) : Number(§<!m§.y);
               _loc6_ = _loc6_ > §<!m§.y ? Number(_loc6_) : Number(§<!m§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §0s§(param1:int) : uint
      {
         return this.§;!8§.§+!g§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§;!8§.§1!,§(param1,param2);
      }
      
      public function §<!s§(param1:int) : Number
      {
         return this.§;!8§.§7?§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§;!8§.§8s§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§#!j§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§#!j§ != param1)
         {
            this.§#!j§ = param1;
            this.§;!8§.§1!y§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§&-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§;!8§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§?"5§, param2:Number) : void
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
      
      public function get §##§() : Number
      {
         return this.§[!s§;
      }
      
      public function get §,!+§() : Number
      {
         return this.§`y§;
      }
   }
}
