package §7!B§
{
   import §!!K§.§?%§;
   import §9!k§.§=A§;
   import §9!k§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §;R§ extends DisplayObject
   {
      
      private static var §+!<§:Vector3D = new Vector3D();
      
      private static var §3K§:Point = new Point();
      
      private static var §'V§:Matrix = new Matrix();
       
      
      protected var § !3§:§=A§;
      
      private var §'!0§:Number = 0.0;
      
      private var §6c§:Number = 0.0;
      
      private var §>!§:uint = 16777215;
      
      public function §;R§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§ !3§ = new §=A§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§>!§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§ !3§.setPremultipliedAlpha(param4);
         this.§ !3§.setPosition(0,0,0);
         this.§ !3§.setPosition(1,param1,0);
         this.§ !3§.setPosition(2,0,param2);
         this.§ !3§.setPosition(3,param1,param2);
         this.§ !3§.§'f§(param3);
         this.§'!0§ = param1;
         this.§6c§ = param2;
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
               this.§ !3§.§7!b§(_loc7_,§+!<§);
               _loc3_ = _loc3_ < §+!<§.x ? Number(_loc3_) : Number(§+!<§.x);
               _loc4_ = _loc4_ > §+!<§.x ? Number(_loc4_) : Number(§+!<§.x);
               _loc5_ = _loc5_ < §+!<§.y ? Number(_loc5_) : Number(§+!<§.y);
               _loc6_ = _loc6_ > §+!<§.y ? Number(_loc6_) : Number(§+!<§.y);
               _loc7_++;
            }
         }
         else
         {
            §6!8§(param1,§'V§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§ !3§.§7!b§(_loc7_,§+!<§);
               transformCoords(§'V§,§+!<§.x,§+!<§.y,§3K§);
               _loc3_ = _loc3_ < §3K§.x ? Number(_loc3_) : Number(§3K§.x);
               _loc4_ = _loc4_ > §3K§.x ? Number(_loc4_) : Number(§3K§.x);
               _loc5_ = _loc5_ < §3K§.y ? Number(_loc5_) : Number(§3K§.y);
               _loc6_ = _loc6_ > §3K§.y ? Number(_loc6_) : Number(§3K§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §?!2§(param1:int) : uint
      {
         return this.§ !3§.§?!c§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§ !3§.§!A§(param1,param2);
      }
      
      public function §,o§(param1:int) : Number
      {
         return this.§ !3§.§^D§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§ !3§.§%$§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§>!§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§>!§ != param1)
         {
            this.§>!§ = param1;
            this.§ !3§.§'f§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§=A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ !3§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§?%§, param2:Number) : void
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
      
      public function get §9!m§() : Number
      {
         return this.§'!0§;
      }
      
      public function get §;+§() : Number
      {
         return this.§6c§;
      }
   }
}
