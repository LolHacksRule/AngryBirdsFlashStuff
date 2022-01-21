package §2!g§
{
   import §"v§.§&!i§;
   import §=E§.§`F§;
   import §=E§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §2c§ extends DisplayObject
   {
      
      private static var §,!<§:Vector3D = new Vector3D();
      
      private static var §6j§:Point = new Point();
      
      private static var §#f§:Matrix = new Matrix();
       
      
      protected var §+s§:§`F§;
      
      private var §,j§:Number = 0.0;
      
      private var §3!!§:Number = 0.0;
      
      private var §]k§:uint = 16777215;
      
      public function §2c§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§+s§ = new §`F§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§]k§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§+s§.setPremultipliedAlpha(param4);
         this.§+s§.setPosition(0,0,0);
         this.§+s§.setPosition(1,param1,0);
         this.§+s§.setPosition(2,0,param2);
         this.§+s§.setPosition(3,param1,param2);
         this.§+s§.§2"§(param3);
         this.§,j§ = param1;
         this.§3!!§ = param2;
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
               this.§+s§.§6D§(_loc7_,§,!<§);
               _loc3_ = _loc3_ < §,!<§.x ? Number(_loc3_) : Number(§,!<§.x);
               _loc4_ = _loc4_ > §,!<§.x ? Number(_loc4_) : Number(§,!<§.x);
               _loc5_ = _loc5_ < §,!<§.y ? Number(_loc5_) : Number(§,!<§.y);
               _loc6_ = _loc6_ > §,!<§.y ? Number(_loc6_) : Number(§,!<§.y);
               _loc7_++;
            }
         }
         else
         {
            §^i§(param1,§#f§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§+s§.§6D§(_loc7_,§,!<§);
               transformCoords(§#f§,§,!<§.x,§,!<§.y,§6j§);
               _loc3_ = _loc3_ < §6j§.x ? Number(_loc3_) : Number(§6j§.x);
               _loc4_ = _loc4_ > §6j§.x ? Number(_loc4_) : Number(§6j§.x);
               _loc5_ = _loc5_ < §6j§.y ? Number(_loc5_) : Number(§6j§.y);
               _loc6_ = _loc6_ > §6j§.y ? Number(_loc6_) : Number(§6j§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §&u§(param1:int) : uint
      {
         return this.§+s§.§"f§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§+s§.§3!A§(param1,param2);
      }
      
      public function §6q§(param1:int) : Number
      {
         return this.§+s§.§-!-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§+s§.§,!X§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§]k§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§]k§ != param1)
         {
            this.§]k§ = param1;
            this.§+s§.§2"§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§`F§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§+s§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§&!i§, param2:Number) : void
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
      
      public function get §8v§() : Number
      {
         return this.§,j§;
      }
      
      public function get § #§() : Number
      {
         return this.§3!!§;
      }
   }
}
