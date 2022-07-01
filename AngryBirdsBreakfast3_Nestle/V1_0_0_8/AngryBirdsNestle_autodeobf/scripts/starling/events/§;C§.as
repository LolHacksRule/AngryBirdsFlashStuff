package starling.events
{
   import §-![§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;C§
   {
      
      private static var §%0§:Matrix = new Matrix();
       
      
      private var §<!^§:int;
      
      private var §8!v§:Number;
      
      private var §'"2§:Number;
      
      private var §[]§:Number;
      
      private var §<"6§:Number;
      
      private var §2"2§:int;
      
      private var §>U§:String;
      
      private var §`!a§:DisplayObject;
      
      private var §5"2§:Number;
      
      public function §;C§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§<!^§ = param1;
         this.§8!v§ = this.§[]§ = param2;
         this.§'"2§ = this.§<"6§ = param3;
         this.§2"2§ = 0;
         this.§>U§ = param4;
         this.§`!a§ = param5;
      }
      
      public function §2!i§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8!v§,this.§'"2§);
         this.§`!a§.root.§,!^§(param1,§%0§);
         return §%0§.transformPoint(_loc2_);
      }
      
      public function §;`§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[]§,this.§<"6§);
         this.§`!a§.root.§,!^§(param1,§%0§);
         return §%0§.transformPoint(_loc2_);
      }
      
      public function clone() : §;C§
      {
         var _loc1_:§;C§ = new §;C§(this.§<!^§,this.§8!v§,this.§'"2§,this.§>U§,this.§`!a§);
         _loc1_.§[]§ = this.§[]§;
         _loc1_.§<"6§ = this.§<"6§;
         _loc1_.§2"2§ = this.§2"2§;
         _loc1_.§5"2§ = this.§5"2§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§<!^§;
      }
      
      public function get globalX() : Number
      {
         return this.§8!v§;
      }
      
      public function get globalY() : Number
      {
         return this.§'"2§;
      }
      
      public function get §%r§() : Number
      {
         return this.§[]§;
      }
      
      public function get §^"+§() : Number
      {
         return this.§<"6§;
      }
      
      public function get §`!h§() : int
      {
         return this.§2"2§;
      }
      
      public function get phase() : String
      {
         return this.§>U§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§`!a§;
      }
      
      public function get timestamp() : Number
      {
         return this.§5"2§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§[]§ = this.§8!v§;
         this.§<"6§ = this.§'"2§;
         this.§8!v§ = param1;
         this.§'"2§ = param2;
      }
      
      function §@!T§(param1:String) : void
      {
         this.§>U§ = param1;
      }
      
      function §<!u§(param1:int) : void
      {
         this.§2"2§ = param1;
      }
      
      function §,L§(param1:DisplayObject) : void
      {
         this.§`!a§ = param1;
      }
      
      function § j§(param1:Number) : void
      {
         this.§5"2§ = param1;
      }
   }
}
