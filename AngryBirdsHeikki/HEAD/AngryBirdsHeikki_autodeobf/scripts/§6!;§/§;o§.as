package §6!;§
{
   import §&L§.§'I§;
   import §`>§.§6v§;
   import §`>§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §;o§ extends DisplayObject
   {
      
      private static var §8!@§:Vector3D = new Vector3D();
      
      private static var § #§:Point = new Point();
      
      private static var §<]§:Matrix = new Matrix();
       
      
      protected var §]!D§:§6v§;
      
      private var §6M§:Number = 0.0;
      
      private var §?C§:Number = 0.0;
      
      private var §'!?§:uint = 16777215;
      
      public function §;o§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§]!D§ = new §6v§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§'!?§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§]!D§.§=Y§(param4);
         this.§]!D§.setPosition(0,0,0);
         this.§]!D§.setPosition(1,param1,0);
         this.§]!D§.setPosition(2,0,param2);
         this.§]!D§.setPosition(3,param1,param2);
         this.§]!D§.§?!P§(param3);
         this.§6M§ = param1;
         this.§?C§ = param2;
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
               this.§]!D§.§73§(_loc7_,§8!@§);
               _loc3_ = _loc3_ < §8!@§.x ? Number(_loc3_) : Number(§8!@§.x);
               _loc4_ = _loc4_ > §8!@§.x ? Number(_loc4_) : Number(§8!@§.x);
               _loc5_ = _loc5_ < §8!@§.y ? Number(_loc5_) : Number(§8!@§.y);
               _loc6_ = _loc6_ > §8!@§.y ? Number(_loc6_) : Number(§8!@§.y);
               _loc7_++;
            }
         }
         else
         {
            §<!§(param1,§<]§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§]!D§.§73§(_loc7_,§8!@§);
               transformCoords(§<]§,§8!@§.x,§8!@§.y,§ #§);
               _loc3_ = _loc3_ < § #§.x ? Number(_loc3_) : Number(§ #§.x);
               _loc4_ = _loc4_ > § #§.x ? Number(_loc4_) : Number(§ #§.x);
               _loc5_ = _loc5_ < § #§.y ? Number(_loc5_) : Number(§ #§.y);
               _loc6_ = _loc6_ > § #§.y ? Number(_loc6_) : Number(§ #§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function § !#§(param1:int) : uint
      {
         return this.§]!D§.§^>§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§]!D§.§ w§(param1,param2);
      }
      
      public function §^u§(param1:int) : Number
      {
         return this.§]!D§.§5w§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§]!D§.§[!,§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§'!?§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§'!?§ != param1)
         {
            this.§'!?§ = param1;
            this.§]!D§.§?!P§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§6v§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§]!D§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§'I§, param2:Number) : void
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
      
      public function get §9!§() : Number
      {
         return this.§6M§;
      }
      
      public function get §'7§() : Number
      {
         return this.§?C§;
      }
   }
}
