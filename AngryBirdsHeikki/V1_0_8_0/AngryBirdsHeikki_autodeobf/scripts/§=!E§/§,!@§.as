package §=!E§
{
   import §!v§.§16§;
   import §6K§.§#!-§;
   import §6K§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §,!@§ extends DisplayObject
   {
      
      private static var §^W§:Vector3D = new Vector3D();
      
      private static var §5z§:Point = new Point();
      
      private static var §+u§:Matrix = new Matrix();
       
      
      protected var §2! §:§#!-§;
      
      private var §+-§:Number = 0.0;
      
      private var §%!I§:Number = 0.0;
      
      private var §%!%§:uint = 16777215;
      
      public function §,!@§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§2! § = new §#!-§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§%!%§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§2! §.setPremultipliedAlpha(param4);
         this.§2! §.setPosition(0,0,0);
         this.§2! §.setPosition(1,param1,0);
         this.§2! §.setPosition(2,0,param2);
         this.§2! §.setPosition(3,param1,param2);
         this.§2! §.§6D§(param3);
         this.§+-§ = param1;
         this.§%!I§ = param2;
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
               this.§2! §.§-z§(_loc7_,§^W§);
               _loc3_ = _loc3_ < §^W§.x ? Number(_loc3_) : Number(§^W§.x);
               _loc4_ = _loc4_ > §^W§.x ? Number(_loc4_) : Number(§^W§.x);
               _loc5_ = _loc5_ < §^W§.y ? Number(_loc5_) : Number(§^W§.y);
               _loc6_ = _loc6_ > §^W§.y ? Number(_loc6_) : Number(§^W§.y);
               _loc7_++;
            }
         }
         else
         {
            §!;§(param1,§+u§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§2! §.§-z§(_loc7_,§^W§);
               transformCoords(§+u§,§^W§.x,§^W§.y,§5z§);
               _loc3_ = _loc3_ < §5z§.x ? Number(_loc3_) : Number(§5z§.x);
               _loc4_ = _loc4_ > §5z§.x ? Number(_loc4_) : Number(§5z§.x);
               _loc5_ = _loc5_ < §5z§.y ? Number(_loc5_) : Number(§5z§.y);
               _loc6_ = _loc6_ > §5z§.y ? Number(_loc6_) : Number(§5z§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §5!O§(param1:int) : uint
      {
         return this.§2! §.§,O§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§2! §.§%!<§(param1,param2);
      }
      
      public function §0!F§(param1:int) : Number
      {
         return this.§2! §.§1!0§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§2! §.§[m§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§%!%§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§%!%§ != param1)
         {
            this.§%!%§ = param1;
            this.§2! §.§6D§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§#!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2! §.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§16§, param2:Number) : void
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
      
      public function get §^!_§() : Number
      {
         return this.§+-§;
      }
      
      public function get §!k§() : Number
      {
         return this.§%!I§;
      }
   }
}
