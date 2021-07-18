package §'!6§
{
   import §!=§.§`b§;
   import §!=§.transformCoords;
   import §"a§.§>w§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §5T§ extends DisplayObject
   {
      
      private static var §]9§:Vector3D = new Vector3D();
      
      private static var §5"E§:Point = new Point();
      
      private static var §`+§:Matrix = new Matrix();
       
      
      protected var §^!S§:§`b§;
      
      private var §#!V§:Number = 0.0;
      
      private var §[!L§:Number = 0.0;
      
      private var §+!m§:uint = 16777215;
      
      public function §5T§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§^!S§ = new §`b§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§+!m§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§^!S§.§7!F§(param4);
         this.§^!S§.setPosition(0,0,0);
         this.§^!S§.setPosition(1,param1,0);
         this.§^!S§.setPosition(2,0,param2);
         this.§^!S§.setPosition(3,param1,param2);
         this.§^!S§.§#"3§(param3);
         this.§#!V§ = param1;
         this.§[!L§ = param2;
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
               this.§^!S§.§@!]§(_loc7_,§]9§);
               _loc3_ = _loc3_ < §]9§.x ? Number(_loc3_) : Number(§]9§.x);
               _loc4_ = _loc4_ > §]9§.x ? Number(_loc4_) : Number(§]9§.x);
               _loc5_ = _loc5_ < §]9§.y ? Number(_loc5_) : Number(§]9§.y);
               _loc6_ = _loc6_ > §]9§.y ? Number(_loc6_) : Number(§]9§.y);
               _loc7_++;
            }
         }
         else
         {
            §'!D§(param1,§`+§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§^!S§.§@!]§(_loc7_,§]9§);
               transformCoords(§`+§,§]9§.x,§]9§.y,§5"E§);
               _loc3_ = _loc3_ < §5"E§.x ? Number(_loc3_) : Number(§5"E§.x);
               _loc4_ = _loc4_ > §5"E§.x ? Number(_loc4_) : Number(§5"E§.x);
               _loc5_ = _loc5_ < §5"E§.y ? Number(_loc5_) : Number(§5"E§.y);
               _loc6_ = _loc6_ > §5"E§.y ? Number(_loc6_) : Number(§5"E§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §="B§(param1:int) : uint
      {
         return this.§^!S§.§9"O§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§^!S§.§<!<§(param1,param2);
      }
      
      public function §%N§(param1:int) : Number
      {
         return this.§^!S§.§ "N§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§^!S§.§^!0§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§+!m§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§+!m§ != param1)
         {
            this.§+!m§ = param1;
            this.§^!S§.§#"3§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§`b§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§^!S§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§>w§, param2:Number) : void
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
      
      public function get §3"W§() : Number
      {
         return this.§#!V§;
      }
      
      public function get §8!h§() : Number
      {
         return this.§[!L§;
      }
   }
}
