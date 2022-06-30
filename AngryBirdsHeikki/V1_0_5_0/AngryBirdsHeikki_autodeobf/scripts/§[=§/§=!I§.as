package §[=§
{
   import §8!4§.§>'§;
   import §8!4§.transformCoords;
   import §>Q§.§<!%§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §=!I§ extends DisplayObject
   {
      
      private static var §`!W§:Vector3D = new Vector3D();
      
      private static var §=x§:Point = new Point();
      
      private static var §]!D§:Matrix = new Matrix();
       
      
      protected var §,!"§:§>'§;
      
      private var §?-§:Number = 0.0;
      
      private var §]Y§:Number = 0.0;
      
      private var §=![§:uint = 16777215;
      
      public function §=!I§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§,!"§ = new §>'§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§=![§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§,!"§.setPremultipliedAlpha(param4);
         this.§,!"§.setPosition(0,0,0);
         this.§,!"§.setPosition(1,param1,0);
         this.§,!"§.setPosition(2,0,param2);
         this.§,!"§.setPosition(3,param1,param2);
         this.§,!"§.§=!_§(param3);
         this.§?-§ = param1;
         this.§]Y§ = param2;
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
               this.§,!"§.§,]§(_loc7_,§`!W§);
               _loc3_ = _loc3_ < §`!W§.x ? Number(_loc3_) : Number(§`!W§.x);
               _loc4_ = _loc4_ > §`!W§.x ? Number(_loc4_) : Number(§`!W§.x);
               _loc5_ = _loc5_ < §`!W§.y ? Number(_loc5_) : Number(§`!W§.y);
               _loc6_ = _loc6_ > §`!W§.y ? Number(_loc6_) : Number(§`!W§.y);
               _loc7_++;
            }
         }
         else
         {
            §5y§(param1,§]!D§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§,!"§.§,]§(_loc7_,§`!W§);
               transformCoords(§]!D§,§`!W§.x,§`!W§.y,§=x§);
               _loc3_ = _loc3_ < §=x§.x ? Number(_loc3_) : Number(§=x§.x);
               _loc4_ = _loc4_ > §=x§.x ? Number(_loc4_) : Number(§=x§.x);
               _loc5_ = _loc5_ < §=x§.y ? Number(_loc5_) : Number(§=x§.y);
               _loc6_ = _loc6_ > §=x§.y ? Number(_loc6_) : Number(§=x§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §6%§(param1:int) : uint
      {
         return this.§,!"§.§+@§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§,!"§.§9q§(param1,param2);
      }
      
      public function §2R§(param1:int) : Number
      {
         return this.§,!"§.§8>§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§,!"§.§?!#§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§=![§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§=![§ != param1)
         {
            this.§=![§ = param1;
            this.§,!"§.§=!_§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§>'§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§,!"§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§<!%§, param2:Number) : void
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
      
      public function get §%8§() : Number
      {
         return this.§?-§;
      }
      
      public function get §]n§() : Number
      {
         return this.§]Y§;
      }
   }
}
