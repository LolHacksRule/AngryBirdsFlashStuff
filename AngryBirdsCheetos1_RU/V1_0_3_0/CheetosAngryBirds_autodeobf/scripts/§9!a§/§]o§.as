package §9!a§
{
   import §-!%§.§'-§;
   import §-!%§.transformCoords;
   import §>N§.§>q§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §]o§ extends DisplayObject
   {
      
      private static var §'d§:Vector3D = new Vector3D();
      
      private static var §-!N§:Point = new Point();
      
      private static var §&h§:Matrix = new Matrix();
       
      
      protected var §1;§:§'-§;
      
      private var § null§:Number = 0.0;
      
      private var §!0§:Number = 0.0;
      
      private var §`!U§:uint = 16777215;
      
      public function §]o§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§1;§ = new §'-§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§`!U§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§1;§.setPremultipliedAlpha(param4);
         this.§1;§.setPosition(0,0,0);
         this.§1;§.setPosition(1,param1,0);
         this.§1;§.setPosition(2,0,param2);
         this.§1;§.setPosition(3,param1,param2);
         this.§1;§.§"_§(param3);
         this.§ null§ = param1;
         this.§!0§ = param2;
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
               this.§1;§.§^p§(_loc7_,§'d§);
               _loc3_ = _loc3_ < §'d§.x ? Number(_loc3_) : Number(§'d§.x);
               _loc4_ = _loc4_ > §'d§.x ? Number(_loc4_) : Number(§'d§.x);
               _loc5_ = _loc5_ < §'d§.y ? Number(_loc5_) : Number(§'d§.y);
               _loc6_ = _loc6_ > §'d§.y ? Number(_loc6_) : Number(§'d§.y);
               _loc7_++;
            }
         }
         else
         {
            §!!2§(param1,§&h§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§1;§.§^p§(_loc7_,§'d§);
               transformCoords(§&h§,§'d§.x,§'d§.y,§-!N§);
               _loc3_ = _loc3_ < §-!N§.x ? Number(_loc3_) : Number(§-!N§.x);
               _loc4_ = _loc4_ > §-!N§.x ? Number(_loc4_) : Number(§-!N§.x);
               _loc5_ = _loc5_ < §-!N§.y ? Number(_loc5_) : Number(§-!N§.y);
               _loc6_ = _loc6_ > §-!N§.y ? Number(_loc6_) : Number(§-!N§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §55§(param1:int) : uint
      {
         return this.§1;§.§9!O§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§1;§.§3F§(param1,param2);
      }
      
      public function §;^§(param1:int) : Number
      {
         return this.§1;§.§ !8§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§1;§.§@A§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§`!U§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§`!U§ != param1)
         {
            this.§`!U§ = param1;
            this.§1;§.§"_§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§'-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§1;§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§>q§, param2:Number) : void
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
      
      public function get §<!Z§() : Number
      {
         return this.§ null§;
      }
      
      public function get §^f§() : Number
      {
         return this.§!0§;
      }
   }
}
