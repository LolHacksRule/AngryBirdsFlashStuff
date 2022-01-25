package §<!$§
{
   import §%Q§.§`j§;
   import §%Q§.transformCoords;
   import §9]§.§0`§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6f§ extends DisplayObject
   {
      
      private static var §%p§:Vector3D = new Vector3D();
      
      private static var §6^§:Point = new Point();
      
      private static var §'§:Matrix = new Matrix();
       
      
      protected var § g§:§`j§;
      
      private var §-_§:Number = 0.0;
      
      private var §=!B§:Number = 0.0;
      
      private var §?!,§:uint = 16777215;
      
      public function §6f§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§ g§ = new §`j§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§?!,§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§ g§.setPremultipliedAlpha(param4);
         this.§ g§.setPosition(0,0,0);
         this.§ g§.setPosition(1,param1,0);
         this.§ g§.setPosition(2,0,param2);
         this.§ g§.setPosition(3,param1,param2);
         this.§ g§.§]$§(param3);
         this.§-_§ = param1;
         this.§=!B§ = param2;
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
               this.§ g§.§2a§(_loc7_,§%p§);
               _loc3_ = _loc3_ < §%p§.x ? Number(_loc3_) : Number(§%p§.x);
               _loc4_ = _loc4_ > §%p§.x ? Number(_loc4_) : Number(§%p§.x);
               _loc5_ = _loc5_ < §%p§.y ? Number(_loc5_) : Number(§%p§.y);
               _loc6_ = _loc6_ > §%p§.y ? Number(_loc6_) : Number(§%p§.y);
               _loc7_++;
            }
         }
         else
         {
            §>]§(param1,§'§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§ g§.§2a§(_loc7_,§%p§);
               transformCoords(§'§,§%p§.x,§%p§.y,§6^§);
               _loc3_ = _loc3_ < §6^§.x ? Number(_loc3_) : Number(§6^§.x);
               _loc4_ = _loc4_ > §6^§.x ? Number(_loc4_) : Number(§6^§.x);
               _loc5_ = _loc5_ < §6^§.y ? Number(_loc5_) : Number(§6^§.y);
               _loc6_ = _loc6_ > §6^§.y ? Number(_loc6_) : Number(§6^§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §,e§(param1:int) : uint
      {
         return this.§ g§.§?]§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§ g§.§"7§(param1,param2);
      }
      
      public function §&!b§(param1:int) : Number
      {
         return this.§ g§.§8a§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§ g§.§9v§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§?!,§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§?!,§ != param1)
         {
            this.§?!,§ = param1;
            this.§ g§.§]$§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§`j§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ g§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§0`§, param2:Number) : void
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
      
      public function get § !O§() : Number
      {
         return this.§-_§;
      }
      
      public function get §9!_§() : Number
      {
         return this.§=!B§;
      }
   }
}
