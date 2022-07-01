package §]!2§
{
   import §0!F§.§3`§;
   import §9!a§.§!$§;
   import §9!a§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §?"2§ extends DisplayObject
   {
      
      private static var §5!G§:Vector3D = new Vector3D();
      
      private static var §<!!§:Point = new Point();
      
      private static var §"j§:Matrix = new Matrix();
       
      
      protected var §&f§:§!$§;
      
      private var §!!a§:Number = 0.0;
      
      private var §#!`§:Number = 0.0;
      
      private var §%v§:uint = 16777215;
      
      public function §?"2§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§&f§ = new §!$§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§%v§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§&f§.setPremultipliedAlpha(param4);
         this.§&f§.setPosition(0,0,0);
         this.§&f§.setPosition(1,param1,0);
         this.§&f§.setPosition(2,0,param2);
         this.§&f§.setPosition(3,param1,param2);
         this.§&f§.§1!g§(param3);
         this.§!!a§ = param1;
         this.§#!`§ = param2;
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
               this.§&f§.§8K§(_loc7_,§5!G§);
               _loc3_ = _loc3_ < §5!G§.x ? Number(_loc3_) : Number(§5!G§.x);
               _loc4_ = _loc4_ > §5!G§.x ? Number(_loc4_) : Number(§5!G§.x);
               _loc5_ = _loc5_ < §5!G§.y ? Number(_loc5_) : Number(§5!G§.y);
               _loc6_ = _loc6_ > §5!G§.y ? Number(_loc6_) : Number(§5!G§.y);
               _loc7_++;
            }
         }
         else
         {
            §'!b§(param1,§"j§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§&f§.§8K§(_loc7_,§5!G§);
               transformCoords(§"j§,§5!G§.x,§5!G§.y,§<!!§);
               _loc3_ = _loc3_ < §<!!§.x ? Number(_loc3_) : Number(§<!!§.x);
               _loc4_ = _loc4_ > §<!!§.x ? Number(_loc4_) : Number(§<!!§.x);
               _loc5_ = _loc5_ < §<!!§.y ? Number(_loc5_) : Number(§<!!§.y);
               _loc6_ = _loc6_ > §<!!§.y ? Number(_loc6_) : Number(§<!!§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §`K§(param1:int) : uint
      {
         return this.§&f§.§72§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§&f§.§!!m§(param1,param2);
      }
      
      public function §@!;§(param1:int) : Number
      {
         return this.§&f§.§3!p§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§&f§.§1$§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§%v§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§%v§ != param1)
         {
            this.§%v§ = param1;
            this.§&f§.§1!g§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§!$§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§&f§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§3`§, param2:Number) : void
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
      
      public function get §^!l§() : Number
      {
         return this.§!!a§;
      }
      
      public function get §;W§() : Number
      {
         return this.§#!`§;
      }
   }
}
