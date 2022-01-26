package starling.events
{
   import §;!Q§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §3S§
   {
      
      private static var §@-§:Matrix = new Matrix();
       
      
      private var §8]§:int;
      
      private var §%^§:Number;
      
      private var §@3§:Number;
      
      private var § !`§:Number;
      
      private var §6S§:Number;
      
      private var §2!7§:int;
      
      private var §07§:String;
      
      private var §+S§:DisplayObject;
      
      private var §7!]§:Number;
      
      public function §3S§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§8]§ = param1;
         this.§%^§ = this.§ !`§ = param2;
         this.§@3§ = this.§6S§ = param3;
         this.§2!7§ = 0;
         this.§07§ = param4;
         this.§+S§ = param5;
      }
      
      public function §8L§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%^§,this.§@3§);
         this.§+S§.root.§@!X§(param1,§@-§);
         return §@-§.transformPoint(_loc2_);
      }
      
      public function §5$§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ !`§,this.§6S§);
         this.§+S§.root.§@!X§(param1,§@-§);
         return §@-§.transformPoint(_loc2_);
      }
      
      public function clone() : §3S§
      {
         var _loc1_:§3S§ = new §3S§(this.§8]§,this.§%^§,this.§@3§,this.§07§,this.§+S§);
         _loc1_.§ !`§ = this.§ !`§;
         _loc1_.§6S§ = this.§6S§;
         _loc1_.§2!7§ = this.§2!7§;
         _loc1_.§7!]§ = this.§7!]§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8]§;
      }
      
      public function get globalX() : Number
      {
         return this.§%^§;
      }
      
      public function get globalY() : Number
      {
         return this.§@3§;
      }
      
      public function get §>=§() : Number
      {
         return this.§ !`§;
      }
      
      public function get §>P§() : Number
      {
         return this.§6S§;
      }
      
      public function get §7!L§() : int
      {
         return this.§2!7§;
      }
      
      public function get phase() : String
      {
         return this.§07§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+S§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!]§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§ !`§ = this.§%^§;
         this.§6S§ = this.§@3§;
         this.§%^§ = param1;
         this.§@3§ = param2;
      }
      
      function §4!K§(param1:String) : void
      {
         this.§07§ = param1;
      }
      
      function §6h§(param1:int) : void
      {
         this.§2!7§ = param1;
      }
      
      function §#W§(param1:DisplayObject) : void
      {
         this.§+S§ = param1;
      }
      
      function §7?§(param1:Number) : void
      {
         this.§7!]§ = param1;
      }
   }
}
