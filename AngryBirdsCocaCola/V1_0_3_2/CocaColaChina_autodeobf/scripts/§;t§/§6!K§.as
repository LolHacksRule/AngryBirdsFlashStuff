package §;t§
{
   import §+R§.§4!b§;
   import §^!L§.§-2§;
   import §^!L§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6!K§ extends DisplayObject
   {
      
      private static var §+V§:Vector3D = new Vector3D();
      
      private static var §!q§:Point = new Point();
      
      private static var §'t§:Matrix = new Matrix();
       
      
      protected var §0&§:§-2§;
      
      private var §+!?§:Number = 0.0;
      
      private var §1,§:Number = 0.0;
      
      private var §9!4§:uint = 16777215;
      
      public function §6!K§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§0&§ = new §-2§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§9!4§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§0&§.setPremultipliedAlpha(param4);
         this.§0&§.setPosition(0,0,0);
         this.§0&§.setPosition(1,param1,0);
         this.§0&§.setPosition(2,0,param2);
         this.§0&§.setPosition(3,param1,param2);
         this.§0&§.§`y§(param3);
         this.§+!?§ = param1;
         this.§1,§ = param2;
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
               this.§0&§.§]!`§(_loc7_,§+V§);
               _loc3_ = _loc3_ < §+V§.x ? Number(_loc3_) : Number(§+V§.x);
               _loc4_ = _loc4_ > §+V§.x ? Number(_loc4_) : Number(§+V§.x);
               _loc5_ = _loc5_ < §+V§.y ? Number(_loc5_) : Number(§+V§.y);
               _loc6_ = _loc6_ > §+V§.y ? Number(_loc6_) : Number(§+V§.y);
               _loc7_++;
            }
         }
         else
         {
            §7!P§(param1,§'t§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§0&§.§]!`§(_loc7_,§+V§);
               transformCoords(§'t§,§+V§.x,§+V§.y,§!q§);
               _loc3_ = _loc3_ < §!q§.x ? Number(_loc3_) : Number(§!q§.x);
               _loc4_ = _loc4_ > §!q§.x ? Number(_loc4_) : Number(§!q§.x);
               _loc5_ = _loc5_ < §!q§.y ? Number(_loc5_) : Number(§!q§.y);
               _loc6_ = _loc6_ > §!q§.y ? Number(_loc6_) : Number(§!q§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §@!@§(param1:int) : uint
      {
         return this.§0&§.§9l§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§0&§.§&g§(param1,param2);
      }
      
      public function §!!D§(param1:int) : Number
      {
         return this.§0&§.§#N§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§0&§.§<#§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§9!4§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§9!4§ != param1)
         {
            this.§9!4§ = param1;
            this.§0&§.§`y§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§-2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§0&§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§4!b§, param2:Number) : void
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
      
      public function get §&$§() : Number
      {
         return this.§+!?§;
      }
      
      public function get §%!X§() : Number
      {
         return this.§1,§;
      }
   }
}
