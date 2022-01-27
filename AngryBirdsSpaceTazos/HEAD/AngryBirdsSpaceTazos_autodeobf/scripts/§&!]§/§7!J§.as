package §&!]§
{
   import §'!B§.§0!p§;
   import §6!5§.§>"C§;
   import §6!5§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §7!J§ extends DisplayObject
   {
      
      private static var §8p§:Vector3D = new Vector3D();
      
      private static var §>"6§:Point = new Point();
      
      private static var §<!d§:Matrix = new Matrix();
       
      
      protected var §>R§:§>"C§;
      
      private var §]i§:Number = 0.0;
      
      private var §=J§:Number = 0.0;
      
      private var §^!6§:uint = 16777215;
      
      public function §7!J§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§>R§ = new §>"C§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§^!6§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§>R§.§]"#§(param4);
         this.§>R§.setPosition(0,0,0);
         this.§>R§.setPosition(1,param1,0);
         this.§>R§.setPosition(2,0,param2);
         this.§>R§.setPosition(3,param1,param2);
         this.§>R§.§1J§(param3);
         this.§]i§ = param1;
         this.§=J§ = param2;
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
               this.§>R§.getPosition(_loc7_,§8p§);
               _loc3_ = _loc3_ < §8p§.x ? Number(_loc3_) : Number(§8p§.x);
               _loc4_ = _loc4_ > §8p§.x ? Number(_loc4_) : Number(§8p§.x);
               _loc5_ = _loc5_ < §8p§.y ? Number(_loc5_) : Number(§8p§.y);
               _loc6_ = _loc6_ > §8p§.y ? Number(_loc6_) : Number(§8p§.y);
               _loc7_++;
            }
         }
         else
         {
            §^""§(param1,§<!d§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§>R§.getPosition(_loc7_,§8p§);
               transformCoords(§<!d§,§8p§.x,§8p§.y,§>"6§);
               _loc3_ = _loc3_ < §>"6§.x ? Number(_loc3_) : Number(§>"6§.x);
               _loc4_ = _loc4_ > §>"6§.x ? Number(_loc4_) : Number(§>"6§.x);
               _loc5_ = _loc5_ < §>"6§.y ? Number(_loc5_) : Number(§>"6§.y);
               _loc6_ = _loc6_ > §>"6§.y ? Number(_loc6_) : Number(§>"6§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §+!9§(param1:int) : uint
      {
         return this.§>R§.§]!v§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§>R§.§&B§(param1,param2);
      }
      
      public function §,!A§(param1:int) : Number
      {
         return this.§>R§.§;!E§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§>R§.§6f§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§^!6§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§^!6§ != param1)
         {
            this.§^!6§ = param1;
            this.§>R§.§1J§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§>"C§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§>R§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§0!p§, param2:Number) : void
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
      
      public function get §55§() : Number
      {
         return this.§]i§;
      }
      
      public function get §%!@§() : Number
      {
         return this.§=J§;
      }
   }
}
