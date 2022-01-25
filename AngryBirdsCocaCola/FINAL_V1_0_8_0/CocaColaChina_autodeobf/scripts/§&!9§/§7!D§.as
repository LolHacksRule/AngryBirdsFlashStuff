package §&!9§
{
   import §+&§.§;J§;
   import §@!a§.transformCoords;
   import §@!a§.§try§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §7!D§ extends DisplayObject
   {
      
      private static var §'t§:Vector3D = new Vector3D();
      
      private static var §?"§:Point = new Point();
      
      private static var §`!7§:Matrix = new Matrix();
       
      
      protected var §<G§:§try§;
      
      private var §1c§:Number = 0.0;
      
      private var §?L§:Number = 0.0;
      
      private var §&!^§:uint = 16777215;
      
      public function §7!D§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§<G§ = new §try§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§&!^§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§<G§.setPremultipliedAlpha(param4);
         this.§<G§.setPosition(0,0,0);
         this.§<G§.setPosition(1,param1,0);
         this.§<G§.setPosition(2,0,param2);
         this.§<G§.setPosition(3,param1,param2);
         this.§<G§.§=I§(param3);
         this.§1c§ = param1;
         this.§?L§ = param2;
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
               this.§<G§.§]!G§(_loc7_,§'t§);
               _loc3_ = _loc3_ < §'t§.x ? Number(_loc3_) : Number(§'t§.x);
               _loc4_ = _loc4_ > §'t§.x ? Number(_loc4_) : Number(§'t§.x);
               _loc5_ = _loc5_ < §'t§.y ? Number(_loc5_) : Number(§'t§.y);
               _loc6_ = _loc6_ > §'t§.y ? Number(_loc6_) : Number(§'t§.y);
               _loc7_++;
            }
         }
         else
         {
            §84§(param1,§`!7§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§<G§.§]!G§(_loc7_,§'t§);
               transformCoords(§`!7§,§'t§.x,§'t§.y,§?"§);
               _loc3_ = _loc3_ < §?"§.x ? Number(_loc3_) : Number(§?"§.x);
               _loc4_ = _loc4_ > §?"§.x ? Number(_loc4_) : Number(§?"§.x);
               _loc5_ = _loc5_ < §?"§.y ? Number(_loc5_) : Number(§?"§.y);
               _loc6_ = _loc6_ > §?"§.y ? Number(_loc6_) : Number(§?"§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §24§(param1:int) : uint
      {
         return this.§<G§.§ G§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§<G§.§8n§(param1,param2);
      }
      
      public function §?!B§(param1:int) : Number
      {
         return this.§<G§.§use§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§<G§.§;!E§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§&!^§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§&!^§ != param1)
         {
            this.§&!^§ = param1;
            this.§<G§.§=I§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§try§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§<G§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§;J§, param2:Number) : void
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
      
      public function get §[]§() : Number
      {
         return this.§1c§;
      }
      
      public function get §3!;§() : Number
      {
         return this.§?L§;
      }
   }
}
