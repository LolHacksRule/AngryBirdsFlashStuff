package starling.events
{
   import §7!8§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7M§
   {
      
      private static var §02§:Matrix = new Matrix();
       
      
      private var §?-§:int;
      
      private var § d§:Number;
      
      private var §8!"§:Number;
      
      private var §?"&§:Number;
      
      private var §8j§:Number;
      
      private var §1!1§:int;
      
      private var §7h§:String;
      
      private var §?!<§:DisplayObject;
      
      private var §%!I§:Number;
      
      public function §7M§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?-§ = param1;
         this.§ d§ = this.§?"&§ = param2;
         this.§8!"§ = this.§8j§ = param3;
         this.§1!1§ = 0;
         this.§7h§ = param4;
         this.§?!<§ = param5;
      }
      
      public function §`o§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ d§,this.§8!"§);
         this.§?!<§.root.§]!U§(param1,§02§);
         return §02§.transformPoint(_loc2_);
      }
      
      public function §]!1§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§?"&§,this.§8j§);
         this.§?!<§.root.§]!U§(param1,§02§);
         return §02§.transformPoint(_loc2_);
      }
      
      public function clone() : §7M§
      {
         var _loc1_:§7M§ = new §7M§(this.§?-§,this.§ d§,this.§8!"§,this.§7h§,this.§?!<§);
         _loc1_.§?"&§ = this.§?"&§;
         _loc1_.§8j§ = this.§8j§;
         _loc1_.§1!1§ = this.§1!1§;
         _loc1_.§%!I§ = this.§%!I§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?-§;
      }
      
      public function get globalX() : Number
      {
         return this.§ d§;
      }
      
      public function get globalY() : Number
      {
         return this.§8!"§;
      }
      
      public function get §7!+§() : Number
      {
         return this.§?"&§;
      }
      
      public function get §]! §() : Number
      {
         return this.§8j§;
      }
      
      public function get §@"G§() : int
      {
         return this.§1!1§;
      }
      
      public function get phase() : String
      {
         return this.§7h§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!<§;
      }
      
      public function get timestamp() : Number
      {
         return this.§%!I§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§?"&§ = this.§ d§;
         this.§8j§ = this.§8!"§;
         this.§ d§ = param1;
         this.§8!"§ = param2;
      }
      
      function §3"$§(param1:String) : void
      {
         this.§7h§ = param1;
      }
      
      function §'f§(param1:int) : void
      {
         this.§1!1§ = param1;
      }
      
      function §%i§(param1:DisplayObject) : void
      {
         this.§?!<§ = param1;
      }
      
      function §2!m§(param1:Number) : void
      {
         this.§%!I§ = param1;
      }
   }
}
