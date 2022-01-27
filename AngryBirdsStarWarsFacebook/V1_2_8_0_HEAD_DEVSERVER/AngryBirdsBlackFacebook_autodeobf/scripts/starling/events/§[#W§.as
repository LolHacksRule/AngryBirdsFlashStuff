package starling.events
{
   import §!!U§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[#W§
   {
      
      private static var §#!O§:Matrix = new Matrix();
       
      
      private var §,#R§:int;
      
      private var §;!u§:Number;
      
      private var §`"g§:Number;
      
      private var §+#8§:Number;
      
      private var §%"l§:Number;
      
      private var §4"7§:int;
      
      private var §`!a§:String;
      
      private var §%!c§:DisplayObject;
      
      private var §`#K§:Number;
      
      public function §[#W§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§,#R§ = param1;
         this.§;!u§ = this.§+#8§ = param2;
         this.§`"g§ = this.§%"l§ = param3;
         this.§4"7§ = 0;
         this.§`!a§ = param4;
         this.§%!c§ = param5;
      }
      
      public function §9y§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§;!u§,this.§`"g§);
         this.§%!c§.root.§^">§(param1,§#!O§);
         return §#!O§.transformPoint(_loc2_);
      }
      
      public function §>#S§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§+#8§,this.§%"l§);
         this.§%!c§.root.§^">§(param1,§#!O§);
         return §#!O§.transformPoint(_loc2_);
      }
      
      public function clone() : §[#W§
      {
         var _loc1_:§[#W§ = new §[#W§(this.§,#R§,this.§;!u§,this.§`"g§,this.§`!a§,this.§%!c§);
         _loc1_.§+#8§ = this.§+#8§;
         _loc1_.§%"l§ = this.§%"l§;
         _loc1_.§4"7§ = this.§4"7§;
         _loc1_.§`#K§ = this.§`#K§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§,#R§;
      }
      
      public function get globalX() : Number
      {
         return this.§;!u§;
      }
      
      public function get globalY() : Number
      {
         return this.§`"g§;
      }
      
      public function get §&!7§() : Number
      {
         return this.§+#8§;
      }
      
      public function get §!!#§() : Number
      {
         return this.§%"l§;
      }
      
      public function get §`l§() : int
      {
         return this.§4"7§;
      }
      
      public function get phase() : String
      {
         return this.§`!a§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§%!c§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`#K§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§+#8§ = this.§;!u§;
         this.§%"l§ = this.§`"g§;
         this.§;!u§ = param1;
         this.§`"g§ = param2;
      }
      
      function §%"8§(param1:String) : void
      {
         this.§`!a§ = param1;
      }
      
      function §4#D§(param1:int) : void
      {
         this.§4"7§ = param1;
      }
      
      function §2!`§(param1:DisplayObject) : void
      {
         this.§%!c§ = param1;
      }
      
      function §2S§(param1:Number) : void
      {
         this.§`#K§ = param1;
      }
   }
}
