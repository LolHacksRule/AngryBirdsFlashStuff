package §3H§
{
   import §#M§.§+L§;
   import §#M§.transformCoords;
   import §5J§.§4!3§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §!q§ extends DisplayObject
   {
      
      private static var §+!L§:Vector3D = new Vector3D();
      
      private static var §&!-§:Point = new Point();
      
      private static var §[1§:Matrix = new Matrix();
       
      
      protected var §9M§:§+L§;
      
      private var §,$§:Number = 0.0;
      
      private var §6!-§:Number = 0.0;
      
      private var §-S§:uint = 16777215;
      
      public function §!q§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§9M§ = new §+L§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§-S§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§9M§.setPremultipliedAlpha(param4);
         this.§9M§.setPosition(0,0,0);
         this.§9M§.setPosition(1,param1,0);
         this.§9M§.setPosition(2,0,param2);
         this.§9M§.setPosition(3,param1,param2);
         this.§9M§.§2!M§(param3);
         this.§,$§ = param1;
         this.§6!-§ = param2;
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
               this.§9M§.§6!"§(_loc7_,§+!L§);
               _loc3_ = _loc3_ < §+!L§.x ? Number(_loc3_) : Number(§+!L§.x);
               _loc4_ = _loc4_ > §+!L§.x ? Number(_loc4_) : Number(§+!L§.x);
               _loc5_ = _loc5_ < §+!L§.y ? Number(_loc5_) : Number(§+!L§.y);
               _loc6_ = _loc6_ > §+!L§.y ? Number(_loc6_) : Number(§+!L§.y);
               _loc7_++;
            }
         }
         else
         {
            §5F§(param1,§[1§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§9M§.§6!"§(_loc7_,§+!L§);
               transformCoords(§[1§,§+!L§.x,§+!L§.y,§&!-§);
               _loc3_ = _loc3_ < §&!-§.x ? Number(_loc3_) : Number(§&!-§.x);
               _loc4_ = _loc4_ > §&!-§.x ? Number(_loc4_) : Number(§&!-§.x);
               _loc5_ = _loc5_ < §&!-§.y ? Number(_loc5_) : Number(§&!-§.y);
               _loc6_ = _loc6_ > §&!-§.y ? Number(_loc6_) : Number(§&!-§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §0V§(param1:int) : uint
      {
         return this.§9M§.§8!5§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§9M§.§#?§(param1,param2);
      }
      
      public function §4c§(param1:int) : Number
      {
         return this.§9M§.§=V§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§9M§.§[!7§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§-S§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§-S§ != param1)
         {
            this.§-S§ = param1;
            this.§9M§.§2!M§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§+L§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§9M§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§4!3§, param2:Number) : void
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
      
      public function get §+!%§() : Number
      {
         return this.§,$§;
      }
      
      public function get §?8§() : Number
      {
         return this.§6!-§;
      }
   }
}
