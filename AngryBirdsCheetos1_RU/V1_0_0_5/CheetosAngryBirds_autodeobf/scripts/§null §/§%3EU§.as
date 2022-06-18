package §null §
{
   import §;!,§.§20§;
   import §;!,§.transformCoords;
   import §]_§.§7o§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §>U§ extends DisplayObject
   {
      
      private static var § !M§:Vector3D = new Vector3D();
      
      private static var §;!+§:Point = new Point();
      
      private static var §>p§:Matrix = new Matrix();
       
      
      protected var §!H§:§20§;
      
      private var §`'§:Number = 0.0;
      
      private var §!9§:Number = 0.0;
      
      private var §69§:uint = 16777215;
      
      public function §>U§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§!H§ = new §20§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§69§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§!H§.setPremultipliedAlpha(param4);
         this.§!H§.setPosition(0,0,0);
         this.§!H§.setPosition(1,param1,0);
         this.§!H§.setPosition(2,0,param2);
         this.§!H§.setPosition(3,param1,param2);
         this.§!H§.§>!Y§(param3);
         this.§`'§ = param1;
         this.§!9§ = param2;
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
               this.§!H§.§=0§(_loc7_,§ !M§);
               _loc3_ = _loc3_ < § !M§.x ? Number(_loc3_) : Number(§ !M§.x);
               _loc4_ = _loc4_ > § !M§.x ? Number(_loc4_) : Number(§ !M§.x);
               _loc5_ = _loc5_ < § !M§.y ? Number(_loc5_) : Number(§ !M§.y);
               _loc6_ = _loc6_ > § !M§.y ? Number(_loc6_) : Number(§ !M§.y);
               _loc7_++;
            }
         }
         else
         {
            §7!N§(param1,§>p§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§!H§.§=0§(_loc7_,§ !M§);
               transformCoords(§>p§,§ !M§.x,§ !M§.y,§;!+§);
               _loc3_ = _loc3_ < §;!+§.x ? Number(_loc3_) : Number(§;!+§.x);
               _loc4_ = _loc4_ > §;!+§.x ? Number(_loc4_) : Number(§;!+§.x);
               _loc5_ = _loc5_ < §;!+§.y ? Number(_loc5_) : Number(§;!+§.y);
               _loc6_ = _loc6_ > §;!+§.y ? Number(_loc6_) : Number(§;!+§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §2!§(param1:int) : uint
      {
         return this.§!H§.§"!M§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§!H§.§8!1§(param1,param2);
      }
      
      public function §'u§(param1:int) : Number
      {
         return this.§!H§.§7L§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§!H§.§@g§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§69§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§69§ != param1)
         {
            this.§69§ = param1;
            this.§!H§.§>!Y§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§20§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!H§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§7o§, param2:Number) : void
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
      
      public function get §[C§() : Number
      {
         return this.§`'§;
      }
      
      public function get §2+§() : Number
      {
         return this.§!9§;
      }
   }
}
