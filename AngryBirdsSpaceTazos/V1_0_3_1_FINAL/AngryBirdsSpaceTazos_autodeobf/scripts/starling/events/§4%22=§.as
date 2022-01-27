package starling.events
{
   import §4"@§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4"=§
   {
      
      private static var §+!0§:Matrix = new Matrix();
       
      
      private var §6!W§:int;
      
      private var §"!?§:Number;
      
      private var §["D§:Number;
      
      private var §@!%§:Number;
      
      private var §%!g§:Number;
      
      private var §>"%§:int;
      
      private var §7"?§:String;
      
      private var §?!§:DisplayObject;
      
      private var §`!i§:Number;
      
      public function §4"=§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§6!W§ = param1;
         this.§"!?§ = this.§@!%§ = param2;
         this.§["D§ = this.§%!g§ = param3;
         this.§>"%§ = 0;
         this.§7"?§ = param4;
         this.§?!§ = param5;
      }
      
      public function §!!Q§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"!?§,this.§["D§);
         this.§?!§.root.§@!H§(param1,§+!0§);
         return §+!0§.transformPoint(_loc2_);
      }
      
      public function §5"5§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@!%§,this.§%!g§);
         this.§?!§.root.§@!H§(param1,§+!0§);
         return §+!0§.transformPoint(_loc2_);
      }
      
      public function clone() : §4"=§
      {
         var _loc1_:§4"=§ = new §4"=§(this.§6!W§,this.§"!?§,this.§["D§,this.§7"?§,this.§?!§);
         _loc1_.§@!%§ = this.§@!%§;
         _loc1_.§%!g§ = this.§%!g§;
         _loc1_.§>"%§ = this.§>"%§;
         _loc1_.§`!i§ = this.§`!i§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§6!W§;
      }
      
      public function get globalX() : Number
      {
         return this.§"!?§;
      }
      
      public function get globalY() : Number
      {
         return this.§["D§;
      }
      
      public function get §&!A§() : Number
      {
         return this.§@!%§;
      }
      
      public function get §9!A§() : Number
      {
         return this.§%!g§;
      }
      
      public function get §=!6§() : int
      {
         return this.§>"%§;
      }
      
      public function get phase() : String
      {
         return this.§7"?§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!i§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§@!%§ = this.§"!?§;
         this.§%!g§ = this.§["D§;
         this.§"!?§ = param1;
         this.§["D§ = param2;
      }
      
      function §^"G§(param1:String) : void
      {
         this.§7"?§ = param1;
      }
      
      function §69§(param1:int) : void
      {
         this.§>"%§ = param1;
      }
      
      function §'!U§(param1:DisplayObject) : void
      {
         this.§?!§ = param1;
      }
      
      function §"z§(param1:Number) : void
      {
         this.§`!i§ = param1;
      }
   }
}
