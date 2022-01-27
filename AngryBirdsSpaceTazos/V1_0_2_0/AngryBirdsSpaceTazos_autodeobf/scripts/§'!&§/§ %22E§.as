package §'!&§
{
   import §!!a§.§-!F§;
   import §!!a§.transformCoords;
   import §3!4§.§3=§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § "E§ extends DisplayObject
   {
      
      private static var §@!J§:Vector3D = new Vector3D();
      
      private static var §;!l§:Point = new Point();
      
      private static var §9O§:Matrix = new Matrix();
       
      
      protected var §3!w§:§-!F§;
      
      private var §3W§:Number = 0.0;
      
      private var §7z§:Number = 0.0;
      
      private var §8!F§:uint = 16777215;
      
      public function § "E§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§3!w§ = new §-!F§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§8!F§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§3!w§.§,G§(param4);
         this.§3!w§.setPosition(0,0,0);
         this.§3!w§.setPosition(1,param1,0);
         this.§3!w§.setPosition(2,0,param2);
         this.§3!w§.setPosition(3,param1,param2);
         this.§3!w§.§[M§(param3);
         this.§3W§ = param1;
         this.§7z§ = param2;
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
               this.§3!w§.getPosition(_loc7_,§@!J§);
               _loc3_ = _loc3_ < §@!J§.x ? Number(_loc3_) : Number(§@!J§.x);
               _loc4_ = _loc4_ > §@!J§.x ? Number(_loc4_) : Number(§@!J§.x);
               _loc5_ = _loc5_ < §@!J§.y ? Number(_loc5_) : Number(§@!J§.y);
               _loc6_ = _loc6_ > §@!J§.y ? Number(_loc6_) : Number(§@!J§.y);
               _loc7_++;
            }
         }
         else
         {
            §+"F§(param1,§9O§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§3!w§.getPosition(_loc7_,§@!J§);
               transformCoords(§9O§,§@!J§.x,§@!J§.y,§;!l§);
               _loc3_ = _loc3_ < §;!l§.x ? Number(_loc3_) : Number(§;!l§.x);
               _loc4_ = _loc4_ > §;!l§.x ? Number(_loc4_) : Number(§;!l§.x);
               _loc5_ = _loc5_ < §;!l§.y ? Number(_loc5_) : Number(§;!l§.y);
               _loc6_ = _loc6_ > §;!l§.y ? Number(_loc6_) : Number(§;!l§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §-!O§(param1:int) : uint
      {
         return this.§3!w§.§#<§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§3!w§.§&!0§(param1,param2);
      }
      
      public function §^T§(param1:int) : Number
      {
         return this.§3!w§.§-"5§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§3!w§.§8!j§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§8!F§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§8!F§ != param1)
         {
            this.§8!F§ = param1;
            this.§3!w§.§[M§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§-!F§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§3!w§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§3=§, param2:Number) : void
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
      
      public function get § do§() : Number
      {
         return this.§3W§;
      }
      
      public function get §null§() : Number
      {
         return this.§7z§;
      }
   }
}
