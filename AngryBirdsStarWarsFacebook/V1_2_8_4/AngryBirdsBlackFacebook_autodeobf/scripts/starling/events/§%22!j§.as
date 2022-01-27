package starling.events
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import §use§.DisplayObject;
   
   public class §"!j§
   {
      
      private static var §;!4§:Matrix = new Matrix();
       
      
      private var §7f§:int;
      
      private var §8!%§:Number;
      
      private var §6"f§:Number;
      
      private var §7L§:Number;
      
      private var §>"i§:Number;
      
      private var §]g§:int;
      
      private var §^!a§:String;
      
      private var §'"§:DisplayObject;
      
      private var §7!,§:Number;
      
      public function §"!j§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§7f§ = param1;
         this.§8!%§ = this.§7L§ = param2;
         this.§6"f§ = this.§>"i§ = param3;
         this.§]g§ = 0;
         this.§^!a§ = param4;
         this.§'"§ = param5;
      }
      
      public function §3#+§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8!%§,this.§6"f§);
         this.§'"§.root.§]!-§(param1,§;!4§);
         return §;!4§.transformPoint(_loc2_);
      }
      
      public function §;s§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§7L§,this.§>"i§);
         this.§'"§.root.§]!-§(param1,§;!4§);
         return §;!4§.transformPoint(_loc2_);
      }
      
      public function clone() : §"!j§
      {
         var _loc1_:§"!j§ = new §"!j§(this.§7f§,this.§8!%§,this.§6"f§,this.§^!a§,this.§'"§);
         _loc1_.§7L§ = this.§7L§;
         _loc1_.§>"i§ = this.§>"i§;
         _loc1_.§]g§ = this.§]g§;
         _loc1_.§7!,§ = this.§7!,§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§7f§;
      }
      
      public function get globalX() : Number
      {
         return this.§8!%§;
      }
      
      public function get globalY() : Number
      {
         return this.§6"f§;
      }
      
      public function get §@q§() : Number
      {
         return this.§7L§;
      }
      
      public function get § !;§() : Number
      {
         return this.§>"i§;
      }
      
      public function get §4!P§() : int
      {
         return this.§]g§;
      }
      
      public function get phase() : String
      {
         return this.§^!a§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§'"§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!,§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§7L§ = this.§8!%§;
         this.§>"i§ = this.§6"f§;
         this.§8!%§ = param1;
         this.§6"f§ = param2;
      }
      
      function §9y§(param1:String) : void
      {
         this.§^!a§ = param1;
      }
      
      function §[!P§(param1:int) : void
      {
         this.§]g§ = param1;
      }
      
      function §[V§(param1:DisplayObject) : void
      {
         this.§'"§ = param1;
      }
      
      function §^"O§(param1:Number) : void
      {
         this.§7!,§ = param1;
      }
   }
}
