package §1!$§
{
   import §'6§.§'"3§;
   import §1V§.§1!-§;
   import §1V§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §!"?§ extends DisplayObject
   {
      
      private static var §<!#§:Vector3D = new Vector3D();
      
      private static var §5n§:Point = new Point();
      
      private static var §@V§:Matrix = new Matrix();
       
      
      protected var §0E§:§1!-§;
      
      private var § !D§:Number = 0.0;
      
      private var §^"0§:Number = 0.0;
      
      private var §%!6§:uint = 16777215;
      
      public function §!"?§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§0E§ = new §1!-§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§%!6§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§0E§.§"!W§(param4);
         this.§0E§.setPosition(0,0,0);
         this.§0E§.setPosition(1,param1,0);
         this.§0E§.setPosition(2,0,param2);
         this.§0E§.setPosition(3,param1,param2);
         this.§0E§.§+"0§(param3);
         this.§ !D§ = param1;
         this.§^"0§ = param2;
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
               this.§0E§.§<!x§(_loc7_,§<!#§);
               _loc3_ = _loc3_ < §<!#§.x ? Number(_loc3_) : Number(§<!#§.x);
               _loc4_ = _loc4_ > §<!#§.x ? Number(_loc4_) : Number(§<!#§.x);
               _loc5_ = _loc5_ < §<!#§.y ? Number(_loc5_) : Number(§<!#§.y);
               _loc6_ = _loc6_ > §<!#§.y ? Number(_loc6_) : Number(§<!#§.y);
               _loc7_++;
            }
         }
         else
         {
            §&!e§(param1,§@V§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§0E§.§<!x§(_loc7_,§<!#§);
               transformCoords(§@V§,§<!#§.x,§<!#§.y,§5n§);
               _loc3_ = _loc3_ < §5n§.x ? Number(_loc3_) : Number(§5n§.x);
               _loc4_ = _loc4_ > §5n§.x ? Number(_loc4_) : Number(§5n§.x);
               _loc5_ = _loc5_ < §5n§.y ? Number(_loc5_) : Number(§5n§.y);
               _loc6_ = _loc6_ > §5n§.y ? Number(_loc6_) : Number(§5n§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §5w§(param1:int) : uint
      {
         return this.§0E§.§5"<§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§0E§.§3I§(param1,param2);
      }
      
      public function §6!,§(param1:int) : Number
      {
         return this.§0E§.§ !n§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§0E§.§6!8§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§%!6§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§%!6§ != param1)
         {
            this.§%!6§ = param1;
            this.§0E§.§+"0§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§1!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§0E§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
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
      
      public function get §catch§() : Number
      {
         return this.§ !D§;
      }
      
      public function get §@"&§() : Number
      {
         return this.§^"0§;
      }
   }
}
