package §90§
{
   import §,!,§.§&v§;
   import §5^§.§6B§;
   import §5^§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §0!'§ extends DisplayObject
   {
      
      private static var §2!N§:Vector3D = new Vector3D();
      
      private static var §=!=§:Point = new Point();
      
      private static var §^n§:Matrix = new Matrix();
       
      
      protected var §;!3§:§6B§;
      
      private var §,!I§:Number = 0.0;
      
      private var §'!=§:Number = 0.0;
      
      private var §+!1§:uint = 16777215;
      
      public function §0!'§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§;!3§ = new §6B§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§+!1§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§;!3§.§%_§(param4);
         this.§;!3§.setPosition(0,0,0);
         this.§;!3§.setPosition(1,param1,0);
         this.§;!3§.setPosition(2,0,param2);
         this.§;!3§.setPosition(3,param1,param2);
         this.§;!3§.§[F§(param3);
         this.§,!I§ = param1;
         this.§'!=§ = param2;
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
               this.§;!3§.§+A§(_loc7_,§2!N§);
               _loc3_ = _loc3_ < §2!N§.x ? Number(_loc3_) : Number(§2!N§.x);
               _loc4_ = _loc4_ > §2!N§.x ? Number(_loc4_) : Number(§2!N§.x);
               _loc5_ = _loc5_ < §2!N§.y ? Number(_loc5_) : Number(§2!N§.y);
               _loc6_ = _loc6_ > §2!N§.y ? Number(_loc6_) : Number(§2!N§.y);
               _loc7_++;
            }
         }
         else
         {
            §?!#§(param1,§^n§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§;!3§.§+A§(_loc7_,§2!N§);
               transformCoords(§^n§,§2!N§.x,§2!N§.y,§=!=§);
               _loc3_ = _loc3_ < §=!=§.x ? Number(_loc3_) : Number(§=!=§.x);
               _loc4_ = _loc4_ > §=!=§.x ? Number(_loc4_) : Number(§=!=§.x);
               _loc5_ = _loc5_ < §=!=§.y ? Number(_loc5_) : Number(§=!=§.y);
               _loc6_ = _loc6_ > §=!=§.y ? Number(_loc6_) : Number(§=!=§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §]L§(param1:int) : uint
      {
         return this.§;!3§.§7;§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§;!3§.§0s§(param1,param2);
      }
      
      public function § u§(param1:int) : Number
      {
         return this.§;!3§.§9i§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§;!3§.§0!O§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§+!1§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§+!1§ != param1)
         {
            this.§+!1§ = param1;
            this.§;!3§.§[F§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§6B§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§;!3§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§&v§, param2:Number) : void
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
      
      public function get initialWidth() : Number
      {
         return this.§,!I§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§'!=§;
      }
   }
}
