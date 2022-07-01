package §7q§
{
   import §+M§.§7!M§;
   import §+M§.transformCoords;
   import §-N§.§,!p§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §"L§ extends DisplayObject
   {
      
      private static var §@!w§:Vector3D = new Vector3D();
      
      private static var §;!y§:Point = new Point();
      
      private static var §+F§:Matrix = new Matrix();
       
      
      protected var §@D§:§7!M§;
      
      private var §>!D§:Number = 0.0;
      
      private var §9! §:Number = 0.0;
      
      private var §,O§:uint = 16777215;
      
      public function §"L§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§@D§ = new §7!M§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§,O§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§@D§.setPremultipliedAlpha(param4);
         this.§@D§.setPosition(0,0,0);
         this.§@D§.setPosition(1,param1,0);
         this.§@D§.setPosition(2,0,param2);
         this.§@D§.setPosition(3,param1,param2);
         this.§@D§.§<0§(param3);
         this.§>!D§ = param1;
         this.§9! § = param2;
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
               this.§@D§.§"B§(_loc7_,§@!w§);
               _loc3_ = _loc3_ < §@!w§.x ? Number(_loc3_) : Number(§@!w§.x);
               _loc4_ = _loc4_ > §@!w§.x ? Number(_loc4_) : Number(§@!w§.x);
               _loc5_ = _loc5_ < §@!w§.y ? Number(_loc5_) : Number(§@!w§.y);
               _loc6_ = _loc6_ > §@!w§.y ? Number(_loc6_) : Number(§@!w§.y);
               _loc7_++;
            }
         }
         else
         {
            § !a§(param1,§+F§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§@D§.§"B§(_loc7_,§@!w§);
               transformCoords(§+F§,§@!w§.x,§@!w§.y,§;!y§);
               _loc3_ = _loc3_ < §;!y§.x ? Number(_loc3_) : Number(§;!y§.x);
               _loc4_ = _loc4_ > §;!y§.x ? Number(_loc4_) : Number(§;!y§.x);
               _loc5_ = _loc5_ < §;!y§.y ? Number(_loc5_) : Number(§;!y§.y);
               _loc6_ = _loc6_ > §;!y§.y ? Number(_loc6_) : Number(§;!y§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §`!M§(param1:int) : uint
      {
         return this.§@D§.§7"8§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§@D§.§@M§(param1,param2);
      }
      
      public function §,!9§(param1:int) : Number
      {
         return this.§@D§.§%!,§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§@D§.§3!4§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§,O§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§,O§ != param1)
         {
            this.§,O§ = param1;
            this.§@D§.§<0§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§7!M§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@D§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§,!p§, param2:Number) : void
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
      
      public function get §%z§() : Number
      {
         return this.§>!D§;
      }
      
      public function get §2!R§() : Number
      {
         return this.§9! §;
      }
   }
}
