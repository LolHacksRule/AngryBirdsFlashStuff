package §'!9§
{
   import §<&§.§`K§;
   import §`s§.§0p§;
   import §`s§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §%!g§ extends DisplayObject
   {
      
      private static var §<!=§:Vector3D = new Vector3D();
      
      private static var §<r§:Point = new Point();
      
      private static var §5g§:Matrix = new Matrix();
       
      
      protected var § Q§:§0p§;
      
      private var §[!Q§:Number = 0.0;
      
      private var §]j§:Number = 0.0;
      
      private var §%!v§:uint = 16777215;
      
      public function §%!g§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§ Q§ = new §0p§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§%!v§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§ Q§.setPremultipliedAlpha(param4);
         this.§ Q§.setPosition(0,0,0);
         this.§ Q§.setPosition(1,param1,0);
         this.§ Q§.setPosition(2,0,param2);
         this.§ Q§.setPosition(3,param1,param2);
         this.§ Q§.§4!^§(param3);
         this.§[!Q§ = param1;
         this.§]j§ = param2;
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
               this.§ Q§.§"!S§(_loc7_,§<!=§);
               _loc3_ = _loc3_ < §<!=§.x ? Number(_loc3_) : Number(§<!=§.x);
               _loc4_ = _loc4_ > §<!=§.x ? Number(_loc4_) : Number(§<!=§.x);
               _loc5_ = _loc5_ < §<!=§.y ? Number(_loc5_) : Number(§<!=§.y);
               _loc6_ = _loc6_ > §<!=§.y ? Number(_loc6_) : Number(§<!=§.y);
               _loc7_++;
            }
         }
         else
         {
            §^2§(param1,§5g§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§ Q§.§"!S§(_loc7_,§<!=§);
               transformCoords(§5g§,§<!=§.x,§<!=§.y,§<r§);
               _loc3_ = _loc3_ < §<r§.x ? Number(_loc3_) : Number(§<r§.x);
               _loc4_ = _loc4_ > §<r§.x ? Number(_loc4_) : Number(§<r§.x);
               _loc5_ = _loc5_ < §<r§.y ? Number(_loc5_) : Number(§<r§.y);
               _loc6_ = _loc6_ > §<r§.y ? Number(_loc6_) : Number(§<r§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §3!o§(param1:int) : uint
      {
         return this.§ Q§.§6!b§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§ Q§.§1f§(param1,param2);
      }
      
      public function § !G§(param1:int) : Number
      {
         return this.§ Q§.§<^§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§ Q§.§]f§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§%!v§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§%!v§ != param1)
         {
            this.§%!v§ = param1;
            this.§ Q§.§4!^§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§0p§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ Q§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§`K§, param2:Number) : void
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
      
      public function get §>V§() : Number
      {
         return this.§[!Q§;
      }
      
      public function get §=!`§() : Number
      {
         return this.§]j§;
      }
   }
}
