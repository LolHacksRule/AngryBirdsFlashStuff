package §5x§
{
   import §4!$§.§]!f§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §3"§ extends DisplayObject
   {
      
      private static var §^V§:Vector3D = new Vector3D();
      
      private static var §+N§:Point = new Point();
      
      private static var §4U§:Matrix = new Matrix();
       
      
      protected var §^!L§:§!i§;
      
      private var §<!I§:Number = 0.0;
      
      private var §@!?§:Number = 0.0;
      
      private var §=s§:uint = 16777215;
      
      public function §3"§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§^!L§ = new §!i§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§=s§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§^!L§.setPremultipliedAlpha(param4);
         this.§^!L§.setPosition(0,0,0);
         this.§^!L§.setPosition(1,param1,0);
         this.§^!L§.setPosition(2,0,param2);
         this.§^!L§.setPosition(3,param1,param2);
         this.§^!L§.§>u§(param3);
         this.§<!I§ = param1;
         this.§@!?§ = param2;
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
               this.§^!L§.§5L§(_loc7_,§^V§);
               _loc3_ = _loc3_ < §^V§.x ? Number(_loc3_) : Number(§^V§.x);
               _loc4_ = _loc4_ > §^V§.x ? Number(_loc4_) : Number(§^V§.x);
               _loc5_ = _loc5_ < §^V§.y ? Number(_loc5_) : Number(§^V§.y);
               _loc6_ = _loc6_ > §^V§.y ? Number(_loc6_) : Number(§^V§.y);
               _loc7_++;
            }
         }
         else
         {
            §,!S§(param1,§4U§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§^!L§.§5L§(_loc7_,§^V§);
               transformCoords(§4U§,§^V§.x,§^V§.y,§+N§);
               _loc3_ = _loc3_ < §+N§.x ? Number(_loc3_) : Number(§+N§.x);
               _loc4_ = _loc4_ > §+N§.x ? Number(_loc4_) : Number(§+N§.x);
               _loc5_ = _loc5_ < §+N§.y ? Number(_loc5_) : Number(§+N§.y);
               _loc6_ = _loc6_ > §+N§.y ? Number(_loc6_) : Number(§+N§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §!^§(param1:int) : uint
      {
         return this.§^!L§.§2!V§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§^!L§.§`!6§(param1,param2);
      }
      
      public function §>!J§(param1:int) : Number
      {
         return this.§^!L§.§99§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§^!L§.§&S§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§=s§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§=s§ != param1)
         {
            this.§=s§ = param1;
            this.§^!L§.§>u§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§!i§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§^!L§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§]!f§, param2:Number) : void
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
      
      public function get §<!l§() : Number
      {
         return this.§<!I§;
      }
      
      public function get § j§() : Number
      {
         return this.§@!?§;
      }
   }
}
