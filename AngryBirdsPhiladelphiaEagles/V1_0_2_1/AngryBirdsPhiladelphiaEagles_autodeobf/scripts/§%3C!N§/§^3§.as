package §<!N§
{
   import §-!A§.§1!K§;
   import §-!A§.transformCoords;
   import §^h§.§?!D§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §^3§ extends DisplayObject
   {
      
      private static var §3!-§:Vector3D = new Vector3D();
      
      private static var §<!&§:Point = new Point();
      
      private static var §8!J§:Matrix = new Matrix();
       
      
      protected var §2!6§:§1!K§;
      
      private var §3-§:Number = 0.0;
      
      private var §&!I§:Number = 0.0;
      
      private var §0B§:uint = 16777215;
      
      public function §^3§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§2!6§ = new §1!K§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§0B§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§2!6§.setPremultipliedAlpha(param4);
         this.§2!6§.setPosition(0,0,0);
         this.§2!6§.setPosition(1,param1,0);
         this.§2!6§.setPosition(2,0,param2);
         this.§2!6§.setPosition(3,param1,param2);
         this.§2!6§.§7e§(param3);
         this.§3-§ = param1;
         this.§&!I§ = param2;
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
               this.§2!6§.§?-§(_loc7_,§3!-§);
               _loc3_ = _loc3_ < §3!-§.x ? Number(_loc3_) : Number(§3!-§.x);
               _loc4_ = _loc4_ > §3!-§.x ? Number(_loc4_) : Number(§3!-§.x);
               _loc5_ = _loc5_ < §3!-§.y ? Number(_loc5_) : Number(§3!-§.y);
               _loc6_ = _loc6_ > §3!-§.y ? Number(_loc6_) : Number(§3!-§.y);
               _loc7_++;
            }
         }
         else
         {
            §1!H§(param1,§8!J§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§2!6§.§?-§(_loc7_,§3!-§);
               transformCoords(§8!J§,§3!-§.x,§3!-§.y,§<!&§);
               _loc3_ = _loc3_ < §<!&§.x ? Number(_loc3_) : Number(§<!&§.x);
               _loc4_ = _loc4_ > §<!&§.x ? Number(_loc4_) : Number(§<!&§.x);
               _loc5_ = _loc5_ < §<!&§.y ? Number(_loc5_) : Number(§<!&§.y);
               _loc6_ = _loc6_ > §<!&§.y ? Number(_loc6_) : Number(§<!&§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §2c§(param1:int) : uint
      {
         return this.§2!6§.§8!K§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§2!6§.§13§(param1,param2);
      }
      
      public function §7R§(param1:int) : Number
      {
         return this.§2!6§.§,j§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§2!6§.§'G§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§0B§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§0B§ != param1)
         {
            this.§0B§ = param1;
            this.§2!6§.§7e§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§1!K§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2!6§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§?!D§, param2:Number) : void
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
      
      public function get §?T§() : Number
      {
         return this.§3-§;
      }
      
      public function get §+!8§() : Number
      {
         return this.§&!I§;
      }
   }
}
