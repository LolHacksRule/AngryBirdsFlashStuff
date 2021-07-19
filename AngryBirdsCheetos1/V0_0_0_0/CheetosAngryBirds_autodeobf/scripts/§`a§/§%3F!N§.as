package §`a§
{
   import § !+§.§%L§;
   import §<!M§.§;Z§;
   import §<!M§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §?!N§ extends DisplayObject
   {
      
      private static var §#q§:Vector3D = new Vector3D();
      
      private static var §4#§:Point = new Point();
      
      private static var §,!?§:Matrix = new Matrix();
       
      
      protected var §"T§:§;Z§;
      
      private var §7_§:Number = 0.0;
      
      private var §8=§:Number = 0.0;
      
      private var §^0§:uint = 16777215;
      
      public function §?!N§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§"T§ = new §;Z§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§^0§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§"T§.setPremultipliedAlpha(param4);
         this.§"T§.setPosition(0,0,0);
         this.§"T§.setPosition(1,param1,0);
         this.§"T§.setPosition(2,0,param2);
         this.§"T§.setPosition(3,param1,param2);
         this.§"T§.§-o§(param3);
         this.§7_§ = param1;
         this.§8=§ = param2;
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
               this.§"T§.§+0§(_loc7_,§#q§);
               _loc3_ = _loc3_ < §#q§.x ? Number(_loc3_) : Number(§#q§.x);
               _loc4_ = _loc4_ > §#q§.x ? Number(_loc4_) : Number(§#q§.x);
               _loc5_ = _loc5_ < §#q§.y ? Number(_loc5_) : Number(§#q§.y);
               _loc6_ = _loc6_ > §#q§.y ? Number(_loc6_) : Number(§#q§.y);
               _loc7_++;
            }
         }
         else
         {
            §`! §(param1,§,!?§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§"T§.§+0§(_loc7_,§#q§);
               transformCoords(§,!?§,§#q§.x,§#q§.y,§4#§);
               _loc3_ = _loc3_ < §4#§.x ? Number(_loc3_) : Number(§4#§.x);
               _loc4_ = _loc4_ > §4#§.x ? Number(_loc4_) : Number(§4#§.x);
               _loc5_ = _loc5_ < §4#§.y ? Number(_loc5_) : Number(§4#§.y);
               _loc6_ = _loc6_ > §4#§.y ? Number(_loc6_) : Number(§4#§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §+V§(param1:int) : uint
      {
         return this.§"T§.§3!R§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§"T§.§^W§(param1,param2);
      }
      
      public function §90§(param1:int) : Number
      {
         return this.§"T§.§,!B§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§"T§.§5!<§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§^0§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§^0§ != param1)
         {
            this.§^0§ = param1;
            this.§"T§.§-o§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§;Z§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"T§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§%L§, param2:Number) : void
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
      
      public function get §5P§() : Number
      {
         return this.§7_§;
      }
      
      public function get §#c§() : Number
      {
         return this.§8=§;
      }
   }
}
