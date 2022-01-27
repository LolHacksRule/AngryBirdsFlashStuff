package starling.events
{
   import §3H§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §>w§
   {
      
      private static var §[1§:Matrix = new Matrix();
       
      
      private var §&Z§:int;
      
      private var §`U§:Number;
      
      private var §'!G§:Number;
      
      private var §`!;§:Number;
      
      private var §@5§:Number;
      
      private var §8p§:int;
      
      private var §5!J§:String;
      
      private var §9Q§:DisplayObject;
      
      private var §1O§:Number;
      
      public function §>w§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§&Z§ = param1;
         this.§`U§ = this.§`!;§ = param2;
         this.§'!G§ = this.§@5§ = param3;
         this.§8p§ = 0;
         this.§5!J§ = param4;
         this.§9Q§ = param5;
      }
      
      public function §^h§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`U§,this.§'!G§);
         this.§9Q§.root.§5F§(param1,§[1§);
         return §[1§.transformPoint(_loc2_);
      }
      
      public function §'%§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`!;§,this.§@5§);
         this.§9Q§.root.§5F§(param1,§[1§);
         return §[1§.transformPoint(_loc2_);
      }
      
      public function clone() : §>w§
      {
         var _loc1_:§>w§ = new §>w§(this.§&Z§,this.§`U§,this.§'!G§,this.§5!J§,this.§9Q§);
         _loc1_.§`!;§ = this.§`!;§;
         _loc1_.§@5§ = this.§@5§;
         _loc1_.§8p§ = this.§8p§;
         _loc1_.§1O§ = this.§1O§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§&Z§;
      }
      
      public function get globalX() : Number
      {
         return this.§`U§;
      }
      
      public function get globalY() : Number
      {
         return this.§'!G§;
      }
      
      public function get §%]§() : Number
      {
         return this.§`!;§;
      }
      
      public function get §'&§() : Number
      {
         return this.§@5§;
      }
      
      public function get §?e§() : int
      {
         return this.§8p§;
      }
      
      public function get phase() : String
      {
         return this.§5!J§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§9Q§;
      }
      
      public function get timestamp() : Number
      {
         return this.§1O§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§`!;§ = this.§`U§;
         this.§@5§ = this.§'!G§;
         this.§`U§ = param1;
         this.§'!G§ = param2;
      }
      
      function §;3§(param1:String) : void
      {
         this.§5!J§ = param1;
      }
      
      function §%!=§(param1:int) : void
      {
         this.§8p§ = param1;
      }
      
      function §'3§(param1:DisplayObject) : void
      {
         this.§9Q§ = param1;
      }
      
      function §%h§(param1:Number) : void
      {
         this.§1O§ = param1;
      }
   }
}
