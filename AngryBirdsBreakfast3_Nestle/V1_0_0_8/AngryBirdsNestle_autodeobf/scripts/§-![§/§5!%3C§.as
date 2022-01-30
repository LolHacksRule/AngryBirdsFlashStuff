package §-![§
{
   import §"!t§.§&s§;
   import §"!t§.transformCoords;
   import §=!6§.§]q§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §5!<§ extends DisplayObject
   {
      
      private static var §][§:Vector3D = new Vector3D();
      
      private static var §"V§:Point = new Point();
      
      private static var §%0§:Matrix = new Matrix();
       
      
      protected var §1!T§:§&s§;
      
      private var §^!S§:Number = 0.0;
      
      private var §-+§:Number = 0.0;
      
      private var §+?§:uint = 16777215;
      
      public function §5!<§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§1!T§ = new §&s§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§+?§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§1!T§.§#!s§(param4);
         this.§1!T§.setPosition(0,0,0);
         this.§1!T§.setPosition(1,param1,0);
         this.§1!T§.setPosition(2,0,param2);
         this.§1!T§.setPosition(3,param1,param2);
         this.§1!T§.§&j§(param3);
         this.§^!S§ = param1;
         this.§-+§ = param2;
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
               this.§1!T§.§-W§(_loc7_,§][§);
               _loc3_ = _loc3_ < §][§.x ? Number(_loc3_) : Number(§][§.x);
               _loc4_ = _loc4_ > §][§.x ? Number(_loc4_) : Number(§][§.x);
               _loc5_ = _loc5_ < §][§.y ? Number(_loc5_) : Number(§][§.y);
               _loc6_ = _loc6_ > §][§.y ? Number(_loc6_) : Number(§][§.y);
               _loc7_++;
            }
         }
         else
         {
            §,!^§(param1,§%0§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§1!T§.§-W§(_loc7_,§][§);
               transformCoords(§%0§,§][§.x,§][§.y,§"V§);
               _loc3_ = _loc3_ < §"V§.x ? Number(_loc3_) : Number(§"V§.x);
               _loc4_ = _loc4_ > §"V§.x ? Number(_loc4_) : Number(§"V§.x);
               _loc5_ = _loc5_ < §"V§.y ? Number(_loc5_) : Number(§"V§.y);
               _loc6_ = _loc6_ > §"V§.y ? Number(_loc6_) : Number(§"V§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §8h§(param1:int) : uint
      {
         return this.§1!T§.§<l§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§1!T§.§3!K§(param1,param2);
      }
      
      public function §!"5§(param1:int) : Number
      {
         return this.§1!T§.§+"'§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§1!T§.§+b§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§+?§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§+?§ != param1)
         {
            this.§+?§ = param1;
            this.§1!T§.§&j§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§&s§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§1!T§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§]q§, param2:Number) : void
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
      
      public function get §3!T§() : Number
      {
         return this.§^!S§;
      }
      
      public function get §<!W§() : Number
      {
         return this.§-+§;
      }
   }
}
