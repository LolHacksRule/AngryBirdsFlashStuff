package starling.events
{
   import §^a§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#v§
   {
      
      private static var §&!T§:Matrix = new Matrix();
       
      
      private var §7!]§:int;
      
      private var §<1§:Number;
      
      private var §3c§:Number;
      
      private var §?Y§:Number;
      
      private var §>!e§:Number;
      
      private var §^v§:int;
      
      private var §7D§:String;
      
      private var §[!W§:DisplayObject;
      
      private var §%p§:Number;
      
      public function §#v§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§7!]§ = param1;
         this.§<1§ = this.§?Y§ = param2;
         this.§3c§ = this.§>!e§ = param3;
         this.§^v§ = 0;
         this.§7D§ = param4;
         this.§[!W§ = param5;
      }
      
      public function §&1§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§<1§,this.§3c§);
         this.§[!W§.root.§?z§(param1,§&!T§);
         return §&!T§.transformPoint(_loc2_);
      }
      
      public function §@§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§?Y§,this.§>!e§);
         this.§[!W§.root.§?z§(param1,§&!T§);
         return §&!T§.transformPoint(_loc2_);
      }
      
      public function clone() : §#v§
      {
         var _loc1_:§#v§ = new §#v§(this.§7!]§,this.§<1§,this.§3c§,this.§7D§,this.§[!W§);
         _loc1_.§?Y§ = this.§?Y§;
         _loc1_.§>!e§ = this.§>!e§;
         _loc1_.§^v§ = this.§^v§;
         _loc1_.§%p§ = this.§%p§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§7!]§;
      }
      
      public function get globalX() : Number
      {
         return this.§<1§;
      }
      
      public function get globalY() : Number
      {
         return this.§3c§;
      }
      
      public function get §0u§() : Number
      {
         return this.§?Y§;
      }
      
      public function get §9;§() : Number
      {
         return this.§>!e§;
      }
      
      public function get §=!i§() : int
      {
         return this.§^v§;
      }
      
      public function get phase() : String
      {
         return this.§7D§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§[!W§;
      }
      
      public function get timestamp() : Number
      {
         return this.§%p§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§?Y§ = this.§<1§;
         this.§>!e§ = this.§3c§;
         this.§<1§ = param1;
         this.§3c§ = param2;
      }
      
      function §"4§(param1:String) : void
      {
         this.§7D§ = param1;
      }
      
      function §5!1§(param1:int) : void
      {
         this.§^v§ = param1;
      }
      
      function §4!E§(param1:DisplayObject) : void
      {
         this.§[!W§ = param1;
      }
      
      function §?!7§(param1:Number) : void
      {
         this.§%p§ = param1;
      }
   }
}
