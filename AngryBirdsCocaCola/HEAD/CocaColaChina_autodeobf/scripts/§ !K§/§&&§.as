package § !K§
{
   import §6l§.§23§;
   import §9!^§.§17§;
   import §9!^§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §&&§ extends DisplayObject
   {
      
      private static var §9!A§:Vector3D = new Vector3D();
      
      private static var §2P§:Point = new Point();
      
      private static var §]!!§:Matrix = new Matrix();
       
      
      protected var §>!@§:§17§;
      
      private var §'#§:Number = 0.0;
      
      private var §%^§:Number = 0.0;
      
      private var § var§:uint = 16777215;
      
      public function §&&§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§>!@§ = new §17§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§ var§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§>!@§.setPremultipliedAlpha(param4);
         this.§>!@§.setPosition(0,0,0);
         this.§>!@§.setPosition(1,param1,0);
         this.§>!@§.setPosition(2,0,param2);
         this.§>!@§.setPosition(3,param1,param2);
         this.§>!@§.§>!^§(param3);
         this.§'#§ = param1;
         this.§%^§ = param2;
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
               this.§>!@§.§^!Q§(_loc7_,§9!A§);
               _loc3_ = _loc3_ < §9!A§.x ? Number(_loc3_) : Number(§9!A§.x);
               _loc4_ = _loc4_ > §9!A§.x ? Number(_loc4_) : Number(§9!A§.x);
               _loc5_ = _loc5_ < §9!A§.y ? Number(_loc5_) : Number(§9!A§.y);
               _loc6_ = _loc6_ > §9!A§.y ? Number(_loc6_) : Number(§9!A§.y);
               _loc7_++;
            }
         }
         else
         {
            §]`§(param1,§]!!§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§>!@§.§^!Q§(_loc7_,§9!A§);
               transformCoords(§]!!§,§9!A§.x,§9!A§.y,§2P§);
               _loc3_ = _loc3_ < §2P§.x ? Number(_loc3_) : Number(§2P§.x);
               _loc4_ = _loc4_ > §2P§.x ? Number(_loc4_) : Number(§2P§.x);
               _loc5_ = _loc5_ < §2P§.y ? Number(_loc5_) : Number(§2P§.y);
               _loc6_ = _loc6_ > §2P§.y ? Number(_loc6_) : Number(§2P§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §6F§(param1:int) : uint
      {
         return this.§>!@§.§5S§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§>!@§.§-+§(param1,param2);
      }
      
      public function §;![§(param1:int) : Number
      {
         return this.§>!@§.§-6§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§>!@§.§1K§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§ var§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§ var§ != param1)
         {
            this.§ var§ = param1;
            this.§>!@§.§>!^§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§17§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§>!@§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§23§, param2:Number) : void
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
      
      public function get §!@§() : Number
      {
         return this.§'#§;
      }
      
      public function get §6!8§() : Number
      {
         return this.§%^§;
      }
   }
}
