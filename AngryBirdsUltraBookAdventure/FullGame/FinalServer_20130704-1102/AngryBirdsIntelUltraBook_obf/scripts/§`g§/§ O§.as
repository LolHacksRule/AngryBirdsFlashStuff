package §`g§
{
   import §2m§.§@>§;
   import §7H§.§'!w§;
   import §7H§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § O§ extends DisplayObject
   {
      
      private static var §;q§:Vector3D = new Vector3D();
      
      private static var §"!,§:Point = new Point();
      
      private static var §=!l§:Matrix = new Matrix();
       
      
      protected var §[!K§:§'!w§;
      
      private var §#!0§:Number = 0.0;
      
      private var §7"!§:Number = 0.0;
      
      private var §4t§:uint = 16777215;
      
      public function § O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§[!K§ = new §'!w§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§4t§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§[!K§.§&!O§(param4);
         this.§[!K§.setPosition(0,0,0);
         this.§[!K§.setPosition(1,param1,0);
         this.§[!K§.setPosition(2,0,param2);
         this.§[!K§.setPosition(3,param1,param2);
         this.§[!K§.§]!P§(param3);
         this.§#!0§ = param1;
         this.§7"!§ = param2;
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
               this.§[!K§.§+j§(_loc7_,§;q§);
               _loc3_ = _loc3_ < §;q§.x ? Number(_loc3_) : Number(§;q§.x);
               _loc4_ = _loc4_ > §;q§.x ? Number(_loc4_) : Number(§;q§.x);
               _loc5_ = _loc5_ < §;q§.y ? Number(_loc5_) : Number(§;q§.y);
               _loc6_ = _loc6_ > §;q§.y ? Number(_loc6_) : Number(§;q§.y);
               _loc7_++;
            }
         }
         else
         {
            §,!g§(param1,§=!l§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§[!K§.§+j§(_loc7_,§;q§);
               transformCoords(§=!l§,§;q§.x,§;q§.y,§"!,§);
               _loc3_ = _loc3_ < §"!,§.x ? Number(_loc3_) : Number(§"!,§.x);
               _loc4_ = _loc4_ > §"!,§.x ? Number(_loc4_) : Number(§"!,§.x);
               _loc5_ = _loc5_ < §"!,§.y ? Number(_loc5_) : Number(§"!,§.y);
               _loc6_ = _loc6_ > §"!,§.y ? Number(_loc6_) : Number(§"!,§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §"!3§(param1:int) : uint
      {
         return this.§[!K§.§>!9§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§[!K§.§,!7§(param1,param2);
      }
      
      public function §]!`§(param1:int) : Number
      {
         return this.§[!K§.§5!&§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§[!K§.§!0§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§4t§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§4t§ != param1)
         {
            this.§4t§ = param1;
            this.§[!K§.§]!P§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§'!w§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[!K§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§@>§, param2:Number) : void
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
      
      public function get §@!8§() : Number
      {
         return this.§#!0§;
      }
      
      public function get §0!v§() : Number
      {
         return this.§7"!§;
      }
   }
}
