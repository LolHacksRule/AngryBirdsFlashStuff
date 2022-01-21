package §0@§
{
   import §'!>§.§3K§;
   import §'!>§.transformCoords;
   import §each §.§ if§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §"%§ extends DisplayObject
   {
      
      private static var §,!?§:Vector3D = new Vector3D();
      
      private static var §3M§:Point = new Point();
      
      private static var §8!f§:Matrix = new Matrix();
       
      
      protected var §!e§:§3K§;
      
      private var §`!J§:Number = 0.0;
      
      private var §6!]§:Number = 0.0;
      
      private var §9!3§:uint = 16777215;
      
      public function §"%§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§!e§ = new §3K§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§9!3§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§!e§.§#!;§(param4);
         this.§!e§.setPosition(0,0,0);
         this.§!e§.setPosition(1,param1,0);
         this.§!e§.setPosition(2,0,param2);
         this.§!e§.setPosition(3,param1,param2);
         this.§!e§.§%!+§(param3);
         this.§`!J§ = param1;
         this.§6!]§ = param2;
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
               this.§!e§.§&!%§(_loc7_,§,!?§);
               _loc3_ = _loc3_ < §,!?§.x ? Number(_loc3_) : Number(§,!?§.x);
               _loc4_ = _loc4_ > §,!?§.x ? Number(_loc4_) : Number(§,!?§.x);
               _loc5_ = _loc5_ < §,!?§.y ? Number(_loc5_) : Number(§,!?§.y);
               _loc6_ = _loc6_ > §,!?§.y ? Number(_loc6_) : Number(§,!?§.y);
               _loc7_++;
            }
         }
         else
         {
            §3!6§(param1,§8!f§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§!e§.§&!%§(_loc7_,§,!?§);
               transformCoords(§8!f§,§,!?§.x,§,!?§.y,§3M§);
               _loc3_ = _loc3_ < §3M§.x ? Number(_loc3_) : Number(§3M§.x);
               _loc4_ = _loc4_ > §3M§.x ? Number(_loc4_) : Number(§3M§.x);
               _loc5_ = _loc5_ < §3M§.y ? Number(_loc5_) : Number(§3M§.y);
               _loc6_ = _loc6_ > §3M§.y ? Number(_loc6_) : Number(§3M§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §>!=§(param1:int) : uint
      {
         return this.§!e§.static(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§!e§.§;q§(param1,param2);
      }
      
      public function §9!i§(param1:int) : Number
      {
         return this.§!e§.§5!;§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§!e§.§'x§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§9!3§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§9!3§ != param1)
         {
            this.§9!3§ = param1;
            this.§!e§.§%!+§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§3K§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!e§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§ if§, param2:Number) : void
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
      
      public function get §1;§() : Number
      {
         return this.§`!J§;
      }
      
      public function get §8!R§() : Number
      {
         return this.§6!]§;
      }
   }
}
