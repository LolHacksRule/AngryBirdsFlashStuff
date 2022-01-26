package §1!A§
{
   import §5L§.§^!C§;
   import §5L§.transformCoords;
   import §`M§.§[7§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §@!O§ extends DisplayObject
   {
      
      private static var §+H§:Vector3D = new Vector3D();
      
      private static var §">§:Point = new Point();
      
      private static var §!k§:Matrix = new Matrix();
       
      
      protected var §^c§:§^!C§;
      
      private var §=2§:Number = 0.0;
      
      private var §'!5§:Number = 0.0;
      
      private var §]$§:uint = 16777215;
      
      public function §@!O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§^c§ = new §^!C§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§]$§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§^c§.setPremultipliedAlpha(param4);
         this.§^c§.setPosition(0,0,0);
         this.§^c§.setPosition(1,param1,0);
         this.§^c§.setPosition(2,0,param2);
         this.§^c§.setPosition(3,param1,param2);
         this.§^c§.§!K§(param3);
         this.§=2§ = param1;
         this.§'!5§ = param2;
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
               this.§^c§.§0,§(_loc7_,§+H§);
               _loc3_ = _loc3_ < §+H§.x ? Number(_loc3_) : Number(§+H§.x);
               _loc4_ = _loc4_ > §+H§.x ? Number(_loc4_) : Number(§+H§.x);
               _loc5_ = _loc5_ < §+H§.y ? Number(_loc5_) : Number(§+H§.y);
               _loc6_ = _loc6_ > §+H§.y ? Number(_loc6_) : Number(§+H§.y);
               _loc7_++;
            }
         }
         else
         {
            §0!V§(param1,§!k§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§^c§.§0,§(_loc7_,§+H§);
               transformCoords(§!k§,§+H§.x,§+H§.y,§">§);
               _loc3_ = _loc3_ < §">§.x ? Number(_loc3_) : Number(§">§.x);
               _loc4_ = _loc4_ > §">§.x ? Number(_loc4_) : Number(§">§.x);
               _loc5_ = _loc5_ < §">§.y ? Number(_loc5_) : Number(§">§.y);
               _loc6_ = _loc6_ > §">§.y ? Number(_loc6_) : Number(§">§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §-!7§(param1:int) : uint
      {
         return this.§^c§.§9!3§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§^c§.§^=§(param1,param2);
      }
      
      public function §"i§(param1:int) : Number
      {
         return this.§^c§.§^V§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§^c§.§7&§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§]$§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§]$§ != param1)
         {
            this.§]$§ = param1;
            this.§^c§.§!K§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§^!C§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§^c§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§[7§, param2:Number) : void
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
      
      public function get §3! §() : Number
      {
         return this.§=2§;
      }
      
      public function get §?a§() : Number
      {
         return this.§'!5§;
      }
   }
}
