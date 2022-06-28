package §9E§
{
   import §2N§.§,!J§;
   import §2N§.transformCoords;
   import §@4§.§<!I§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §1!w§ extends DisplayObject
   {
      
      private static var §^!k§:Vector3D = new Vector3D();
      
      private static var §8§:Point = new Point();
      
      private static var §1=§:Matrix = new Matrix();
       
      
      protected var §3!^§:§,!J§;
      
      private var §-!K§:Number = 0.0;
      
      private var §8!x§:Number = 0.0;
      
      private var §'!k§:uint = 16777215;
      
      public function §1!w§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§3!^§ = new §,!J§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§'!k§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§3!^§.setPremultipliedAlpha(param4);
         this.§3!^§.setPosition(0,0,0);
         this.§3!^§.setPosition(1,param1,0);
         this.§3!^§.setPosition(2,0,param2);
         this.§3!^§.setPosition(3,param1,param2);
         this.§3!^§.§%-§(param3);
         this.§-!K§ = param1;
         this.§8!x§ = param2;
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
               this.§3!^§.§%!a§(_loc7_,§^!k§);
               _loc3_ = _loc3_ < §^!k§.x ? Number(_loc3_) : Number(§^!k§.x);
               _loc4_ = _loc4_ > §^!k§.x ? Number(_loc4_) : Number(§^!k§.x);
               _loc5_ = _loc5_ < §^!k§.y ? Number(_loc5_) : Number(§^!k§.y);
               _loc6_ = _loc6_ > §^!k§.y ? Number(_loc6_) : Number(§^!k§.y);
               _loc7_++;
            }
         }
         else
         {
            §@P§(param1,§1=§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§3!^§.§%!a§(_loc7_,§^!k§);
               transformCoords(§1=§,§^!k§.x,§^!k§.y,§8§);
               _loc3_ = _loc3_ < §8§.x ? Number(_loc3_) : Number(§8§.x);
               _loc4_ = _loc4_ > §8§.x ? Number(_loc4_) : Number(§8§.x);
               _loc5_ = _loc5_ < §8§.y ? Number(_loc5_) : Number(§8§.y);
               _loc6_ = _loc6_ > §8§.y ? Number(_loc6_) : Number(§8§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §0U§(param1:int) : uint
      {
         return this.§3!^§.§<u§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§3!^§.§1!+§(param1,param2);
      }
      
      public function §6!>§(param1:int) : Number
      {
         return this.§3!^§.§0j§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§3!^§.§]q§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§'!k§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§'!k§ != param1)
         {
            this.§'!k§ = param1;
            this.§3!^§.§%-§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§,!J§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§3!^§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
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
      
      public function get §5O§() : Number
      {
         return this.§-!K§;
      }
      
      public function get §@k§() : Number
      {
         return this.§8!x§;
      }
   }
}
