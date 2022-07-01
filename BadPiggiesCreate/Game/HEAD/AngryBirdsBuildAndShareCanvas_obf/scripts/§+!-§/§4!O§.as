package §+!-§
{
   import §%!j§.§&Y§;
   import §`!=§.§?!X§;
   import §`!=§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §4!O§ extends DisplayObject
   {
      
      private static var §9!T§:Vector3D = new Vector3D();
      
      private static var §-J§:Point = new Point();
      
      private static var §^L§:Matrix = new Matrix();
       
      
      protected var §2!b§:§?!X§;
      
      private var §<!M§:Number = 0.0;
      
      private var §`g§:Number = 0.0;
      
      private var §?3§:uint = 16777215;
      
      public function §4!O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§2!b§ = new §?!X§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§?3§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§2!b§.§0!-§(param4);
         this.§2!b§.setPosition(0,0,0);
         this.§2!b§.setPosition(1,param1,0);
         this.§2!b§.setPosition(2,0,param2);
         this.§2!b§.setPosition(3,param1,param2);
         this.§2!b§.§1!X§(param3);
         this.§<!M§ = param1;
         this.§`g§ = param2;
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
               this.§2!b§.§]5§(_loc7_,§9!T§);
               _loc3_ = _loc3_ < §9!T§.x ? Number(_loc3_) : Number(§9!T§.x);
               _loc4_ = _loc4_ > §9!T§.x ? Number(_loc4_) : Number(§9!T§.x);
               _loc5_ = _loc5_ < §9!T§.y ? Number(_loc5_) : Number(§9!T§.y);
               _loc6_ = _loc6_ > §9!T§.y ? Number(_loc6_) : Number(§9!T§.y);
               _loc7_++;
            }
         }
         else
         {
            §1!%§(param1,§^L§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§2!b§.§]5§(_loc7_,§9!T§);
               transformCoords(§^L§,§9!T§.x,§9!T§.y,§-J§);
               _loc3_ = _loc3_ < §-J§.x ? Number(_loc3_) : Number(§-J§.x);
               _loc4_ = _loc4_ > §-J§.x ? Number(_loc4_) : Number(§-J§.x);
               _loc5_ = _loc5_ < §-J§.y ? Number(_loc5_) : Number(§-J§.y);
               _loc6_ = _loc6_ > §-J§.y ? Number(_loc6_) : Number(§-J§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §=!P§(param1:int) : uint
      {
         return this.§2!b§.§`!+§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§2!b§.§5!U§(param1,param2);
      }
      
      public function § g§(param1:int) : Number
      {
         return this.§2!b§.§-!n§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§2!b§.§0"+§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§?3§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§?3§ != param1)
         {
            this.§?3§ = param1;
            this.§2!b§.§1!X§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§?!X§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2!b§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
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
      
      public function get §<!W§() : Number
      {
         return this.§<!M§;
      }
      
      public function get §-!+§() : Number
      {
         return this.§`g§;
      }
   }
}
