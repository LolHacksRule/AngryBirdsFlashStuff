package §1!&§
{
   import §"$§.RenderSupport;
   import §@2§.VertexData;
   import §@2§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §!!9§ extends DisplayObject
   {
      
      private static var §<!7§:Vector3D = new Vector3D();
      
      private static var §;m§:Point = new Point();
      
      private static var §4!g§:Matrix = new Matrix();
       
      
      protected var §%?§:VertexData;
      
      private var §9<§:Number = 0.0;
      
      private var §8n§:Number = 0.0;
      
      private var §"p§:uint = 16777215;
      
      public function §!!9§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§%?§ = new VertexData(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§"p§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§%?§.setPremultipliedAlpha(param4);
         this.§%?§.setPosition(0,0,0);
         this.§%?§.setPosition(1,param1,0);
         this.§%?§.setPosition(2,0,param2);
         this.§%?§.setPosition(3,param1,param2);
         this.§%?§.§>e§(param3);
         this.§9<§ = param1;
         this.§8n§ = param2;
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
               this.§%?§.§&n§(_loc7_,§<!7§);
               _loc3_ = _loc3_ < §<!7§.x ? Number(_loc3_) : Number(§<!7§.x);
               _loc4_ = _loc4_ > §<!7§.x ? Number(_loc4_) : Number(§<!7§.x);
               _loc5_ = _loc5_ < §<!7§.y ? Number(_loc5_) : Number(§<!7§.y);
               _loc6_ = _loc6_ > §<!7§.y ? Number(_loc6_) : Number(§<!7§.y);
               _loc7_++;
            }
         }
         else
         {
            §&!R§(param1,§4!g§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§%?§.§&n§(_loc7_,§<!7§);
               transformCoords(§4!g§,§<!7§.x,§<!7§.y,§;m§);
               _loc3_ = _loc3_ < §;m§.x ? Number(_loc3_) : Number(§;m§.x);
               _loc4_ = _loc4_ > §;m§.x ? Number(_loc4_) : Number(§;m§.x);
               _loc5_ = _loc5_ < §;m§.y ? Number(_loc5_) : Number(§;m§.y);
               _loc6_ = _loc6_ > §;m§.y ? Number(_loc6_) : Number(§;m§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §3!h§(param1:int) : uint
      {
         return this.§%?§.§9!#§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§%?§.§ !R§(param1,param2);
      }
      
      public function §];§(param1:int) : Number
      {
         return this.§%?§.§3!>§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§%?§.§"!>§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§"p§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§"p§ != param1)
         {
            this.§"p§ = param1;
            this.§%?§.§>e§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§%?§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
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
      
      public function get §1!K§() : Number
      {
         return this.§9<§;
      }
      
      public function get §"!+§() : Number
      {
         return this.§8n§;
      }
   }
}
