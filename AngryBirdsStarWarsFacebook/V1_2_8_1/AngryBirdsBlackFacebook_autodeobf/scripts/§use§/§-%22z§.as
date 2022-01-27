package §use§
{
   import § "-§.§"!_§;
   import §7"G§.§%!§;
   import §7"G§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §-"z§ extends DisplayObject
   {
      
      private static var § !C§:Vector3D = new Vector3D();
      
      private static var §2!T§:Point = new Point();
      
      private static var §;!4§:Matrix = new Matrix();
       
      
      protected var §!k§:§%!§;
      
      private var §`!9§:Number = 0.0;
      
      private var §@!J§:Number = 0.0;
      
      private var §+A§:uint = 16777215;
      
      public function §-"z§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§!k§ = new §%!§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§+A§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§!k§.§2!&§(param4);
         this.§!k§.setPosition(0,0,0);
         this.§!k§.setPosition(1,param1,0);
         this.§!k§.setPosition(2,0,param2);
         this.§!k§.setPosition(3,param1,param2);
         this.§!k§.§8]§(param3);
         this.§`!9§ = param1;
         this.§@!J§ = param2;
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
               this.§!k§.getPosition(_loc7_,§ !C§);
               _loc3_ = _loc3_ < § !C§.x ? Number(_loc3_) : Number(§ !C§.x);
               _loc4_ = _loc4_ > § !C§.x ? Number(_loc4_) : Number(§ !C§.x);
               _loc5_ = _loc5_ < § !C§.y ? Number(_loc5_) : Number(§ !C§.y);
               _loc6_ = _loc6_ > § !C§.y ? Number(_loc6_) : Number(§ !C§.y);
               _loc7_++;
            }
         }
         else
         {
            §]!-§(param1,§;!4§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§!k§.getPosition(_loc7_,§ !C§);
               transformCoords(§;!4§,§ !C§.x,§ !C§.y,§2!T§);
               _loc3_ = _loc3_ < §2!T§.x ? Number(_loc3_) : Number(§2!T§.x);
               _loc4_ = _loc4_ > §2!T§.x ? Number(_loc4_) : Number(§2!T§.x);
               _loc5_ = _loc5_ < §2!T§.y ? Number(_loc5_) : Number(§2!T§.y);
               _loc6_ = _loc6_ > §2!T§.y ? Number(_loc6_) : Number(§2!T§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §'!h§(param1:int) : uint
      {
         return this.§!k§.§`a§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§!k§.§,q§(param1,param2);
      }
      
      public function §``§(param1:int) : Number
      {
         return this.§!k§.§?"m§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§!k§.§#"B§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§+A§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§+A§ != param1)
         {
            this.§+A§ = param1;
            this.§!k§.§8]§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§%!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!k§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§"!_§, param2:Number) : void
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
      
      public function get §1"H§() : Number
      {
         return this.§`!9§;
      }
      
      public function get §>!v§() : Number
      {
         return this.§@!J§;
      }
   }
}
