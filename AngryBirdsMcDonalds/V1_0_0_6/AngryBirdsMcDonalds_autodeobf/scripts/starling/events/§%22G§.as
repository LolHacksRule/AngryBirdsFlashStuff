package starling.events
{
   import §2![§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §"G§
   {
      
      private static var §[N§:Matrix = new Matrix();
       
      
      private var §5!e§:int;
      
      private var §^!-§:Number;
      
      private var §@5§:Number;
      
      private var §8m§:Number;
      
      private var §'!%§:Number;
      
      private var §-"§:int;
      
      private var §]!W§:String;
      
      private var §+!N§:DisplayObject;
      
      private var §=q§:Number;
      
      public function §"G§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§5!e§ = param1;
         this.§^!-§ = this.§8m§ = param2;
         this.§@5§ = this.§'!%§ = param3;
         this.§-"§ = 0;
         this.§]!W§ = param4;
         this.§+!N§ = param5;
      }
      
      public function §1! §(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!-§,this.§@5§);
         this.§+!N§.root.§+o§(param1,§[N§);
         return §[N§.transformPoint(_loc2_);
      }
      
      public function §`e§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8m§,this.§'!%§);
         this.§+!N§.root.§+o§(param1,§[N§);
         return §[N§.transformPoint(_loc2_);
      }
      
      public function clone() : §"G§
      {
         var _loc1_:§"G§ = new §"G§(this.§5!e§,this.§^!-§,this.§@5§,this.§]!W§,this.§+!N§);
         _loc1_.§8m§ = this.§8m§;
         _loc1_.§'!%§ = this.§'!%§;
         _loc1_.§-"§ = this.§-"§;
         _loc1_.§=q§ = this.§=q§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§5!e§;
      }
      
      public function get globalX() : Number
      {
         return this.§^!-§;
      }
      
      public function get globalY() : Number
      {
         return this.§@5§;
      }
      
      public function get §^$§() : Number
      {
         return this.§8m§;
      }
      
      public function get §5z§() : Number
      {
         return this.§'!%§;
      }
      
      public function get §;f§() : int
      {
         return this.§-"§;
      }
      
      public function get phase() : String
      {
         return this.§]!W§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+!N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§=q§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§8m§ = this.§^!-§;
         this.§'!%§ = this.§@5§;
         this.§^!-§ = param1;
         this.§@5§ = param2;
      }
      
      function §@6§(param1:String) : void
      {
         this.§]!W§ = param1;
      }
      
      function §>1§(param1:int) : void
      {
         this.§-"§ = param1;
      }
      
      function §'D§(param1:DisplayObject) : void
      {
         this.§+!N§ = param1;
      }
      
      function §+!I§(param1:Number) : void
      {
         this.§=q§ = param1;
      }
   }
}
