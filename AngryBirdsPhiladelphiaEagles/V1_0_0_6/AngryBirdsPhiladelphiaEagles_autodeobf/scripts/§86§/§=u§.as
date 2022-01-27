package §86§
{
   import §7G§.§2r§;
   import §7G§.transformCoords;
   import §@g§.§'U§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §=u§ extends DisplayObject
   {
      
      private static var §!!>§:Vector3D = new Vector3D();
      
      private static var §#!4§:Point = new Point();
      
      private static var §'!D§:Matrix = new Matrix();
       
      
      protected var §!]§:§2r§;
      
      private var §6!J§:Number = 0.0;
      
      private var §^!?§:Number = 0.0;
      
      private var §&§:uint = 16777215;
      
      public function §=u§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§!]§ = new §2r§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§&§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§!]§.setPremultipliedAlpha(param4);
         this.§!]§.setPosition(0,0,0);
         this.§!]§.setPosition(1,param1,0);
         this.§!]§.setPosition(2,0,param2);
         this.§!]§.setPosition(3,param1,param2);
         this.§!]§.§;Z§(param3);
         this.§6!J§ = param1;
         this.§^!?§ = param2;
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
               this.§!]§.§#t§(_loc7_,§!!>§);
               _loc3_ = _loc3_ < §!!>§.x ? Number(_loc3_) : Number(§!!>§.x);
               _loc4_ = _loc4_ > §!!>§.x ? Number(_loc4_) : Number(§!!>§.x);
               _loc5_ = _loc5_ < §!!>§.y ? Number(_loc5_) : Number(§!!>§.y);
               _loc6_ = _loc6_ > §!!>§.y ? Number(_loc6_) : Number(§!!>§.y);
               _loc7_++;
            }
         }
         else
         {
            §0!#§(param1,§'!D§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§!]§.§#t§(_loc7_,§!!>§);
               transformCoords(§'!D§,§!!>§.x,§!!>§.y,§#!4§);
               _loc3_ = _loc3_ < §#!4§.x ? Number(_loc3_) : Number(§#!4§.x);
               _loc4_ = _loc4_ > §#!4§.x ? Number(_loc4_) : Number(§#!4§.x);
               _loc5_ = _loc5_ < §#!4§.y ? Number(_loc5_) : Number(§#!4§.y);
               _loc6_ = _loc6_ > §#!4§.y ? Number(_loc6_) : Number(§#!4§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §29§(param1:int) : uint
      {
         return this.§!]§.§2l§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§!]§.§@1§(param1,param2);
      }
      
      public function §+]§(param1:int) : Number
      {
         return this.§!]§.§;V§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§!]§.§0!§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§&§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§&§ != param1)
         {
            this.§&§ = param1;
            this.§!]§.§;Z§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§2r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!]§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§'U§, param2:Number) : void
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
      
      public function get §^!<§() : Number
      {
         return this.§6!J§;
      }
      
      public function get §7!?§() : Number
      {
         return this.§^!?§;
      }
   }
}
