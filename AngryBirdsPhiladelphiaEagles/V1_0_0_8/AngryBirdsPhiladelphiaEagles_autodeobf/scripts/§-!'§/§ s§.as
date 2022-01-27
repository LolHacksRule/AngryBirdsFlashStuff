package §-!'§
{
   import §'!3§.§@`§;
   import §5D§.§3L§;
   import §5D§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § s§ extends DisplayObject
   {
      
      private static var §,D§:Vector3D = new Vector3D();
      
      private static var §6!G§:Point = new Point();
      
      private static var §0y§:Matrix = new Matrix();
       
      
      protected var §3!7§:§3L§;
      
      private var §"s§:Number = 0.0;
      
      private var §=r§:Number = 0.0;
      
      private var §4N§:uint = 16777215;
      
      public function § s§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§3!7§ = new §3L§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§4N§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§3!7§.setPremultipliedAlpha(param4);
         this.§3!7§.setPosition(0,0,0);
         this.§3!7§.setPosition(1,param1,0);
         this.§3!7§.setPosition(2,0,param2);
         this.§3!7§.setPosition(3,param1,param2);
         this.§3!7§.§%?§(param3);
         this.§"s§ = param1;
         this.§=r§ = param2;
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
               this.§3!7§.§1K§(_loc7_,§,D§);
               _loc3_ = _loc3_ < §,D§.x ? Number(_loc3_) : Number(§,D§.x);
               _loc4_ = _loc4_ > §,D§.x ? Number(_loc4_) : Number(§,D§.x);
               _loc5_ = _loc5_ < §,D§.y ? Number(_loc5_) : Number(§,D§.y);
               _loc6_ = _loc6_ > §,D§.y ? Number(_loc6_) : Number(§,D§.y);
               _loc7_++;
            }
         }
         else
         {
            §0N§(param1,§0y§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§3!7§.§1K§(_loc7_,§,D§);
               transformCoords(§0y§,§,D§.x,§,D§.y,§6!G§);
               _loc3_ = _loc3_ < §6!G§.x ? Number(_loc3_) : Number(§6!G§.x);
               _loc4_ = _loc4_ > §6!G§.x ? Number(_loc4_) : Number(§6!G§.x);
               _loc5_ = _loc5_ < §6!G§.y ? Number(_loc5_) : Number(§6!G§.y);
               _loc6_ = _loc6_ > §6!G§.y ? Number(_loc6_) : Number(§6!G§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4!P§(param1:int) : uint
      {
         return this.§3!7§.§null§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§3!7§.§`!-§(param1,param2);
      }
      
      public function §39§(param1:int) : Number
      {
         return this.§3!7§.§=_§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§3!7§.§@k§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§4N§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§4N§ != param1)
         {
            this.§4N§ = param1;
            this.§3!7§.§%?§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§3L§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§3!7§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§@`§, param2:Number) : void
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
      
      public function get §8!4§() : Number
      {
         return this.§"s§;
      }
      
      public function get §3u§() : Number
      {
         return this.§=r§;
      }
   }
}
