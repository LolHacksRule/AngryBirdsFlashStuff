package starling.events
{
   import §]&§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §5#§
   {
      
      private static var § Y§:Matrix = new Matrix();
       
      
      private var §<""§:int;
      
      private var §,!R§:Number;
      
      private var §#S§:Number;
      
      private var §5!Y§:Number;
      
      private var §[n§:Number;
      
      private var §`!>§:int;
      
      private var §3",§:String;
      
      private var §@"<§:DisplayObject;
      
      private var §?!y§:Number;
      
      public function §5#§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§<""§ = param1;
         this.§,!R§ = this.§5!Y§ = param2;
         this.§#S§ = this.§[n§ = param3;
         this.§`!>§ = 0;
         this.§3",§ = param4;
         this.§@"<§ = param5;
      }
      
      public function §?U§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§,!R§,this.§#S§);
         this.§@"<§.root.§%!b§(param1,§ Y§);
         return § Y§.transformPoint(_loc2_);
      }
      
      public function §<!W§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5!Y§,this.§[n§);
         this.§@"<§.root.§%!b§(param1,§ Y§);
         return § Y§.transformPoint(_loc2_);
      }
      
      public function clone() : §5#§
      {
         var _loc1_:§5#§ = new §5#§(this.§<""§,this.§,!R§,this.§#S§,this.§3",§,this.§@"<§);
         _loc1_.§5!Y§ = this.§5!Y§;
         _loc1_.§[n§ = this.§[n§;
         _loc1_.§`!>§ = this.§`!>§;
         _loc1_.§?!y§ = this.§?!y§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§<""§;
      }
      
      public function get globalX() : Number
      {
         return this.§,!R§;
      }
      
      public function get globalY() : Number
      {
         return this.§#S§;
      }
      
      public function get §3!!§() : Number
      {
         return this.§5!Y§;
      }
      
      public function get § x§() : Number
      {
         return this.§[n§;
      }
      
      public function get §%O§() : int
      {
         return this.§`!>§;
      }
      
      public function get phase() : String
      {
         return this.§3",§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§@"<§;
      }
      
      public function get timestamp() : Number
      {
         return this.§?!y§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§5!Y§ = this.§,!R§;
         this.§[n§ = this.§#S§;
         this.§,!R§ = param1;
         this.§#S§ = param2;
      }
      
      function §"!O§(param1:String) : void
      {
         this.§3",§ = param1;
      }
      
      function §+F§(param1:int) : void
      {
         this.§`!>§ = param1;
      }
      
      function §>H§(param1:DisplayObject) : void
      {
         this.§@"<§ = param1;
      }
      
      function §6!G§(param1:Number) : void
      {
         this.§?!y§ = param1;
      }
   }
}
