package starling.events
{
   import §default§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §1[§
   {
      
      private static var §,C§:Matrix = new Matrix();
       
      
      private var §4!2§:int;
      
      private var §5U§:Number;
      
      private var §0>§:Number;
      
      private var §%!@§:Number;
      
      private var §%!R§:Number;
      
      private var §"c§:int;
      
      private var §%!w§:String;
      
      private var §;D§:DisplayObject;
      
      private var §->§:Number;
      
      public function §1[§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§4!2§ = param1;
         this.§5U§ = this.§%!@§ = param2;
         this.§0>§ = this.§%!R§ = param3;
         this.§"c§ = 0;
         this.§%!w§ = param4;
         this.§;D§ = param5;
      }
      
      public function §=P§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5U§,this.§0>§);
         this.§;D§.root.§5!m§(param1,§,C§);
         return §,C§.transformPoint(_loc2_);
      }
      
      public function §'"4§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%!@§,this.§%!R§);
         this.§;D§.root.§5!m§(param1,§,C§);
         return §,C§.transformPoint(_loc2_);
      }
      
      public function clone() : §1[§
      {
         var _loc1_:§1[§ = new §1[§(this.§4!2§,this.§5U§,this.§0>§,this.§%!w§,this.§;D§);
         _loc1_.§%!@§ = this.§%!@§;
         _loc1_.§%!R§ = this.§%!R§;
         _loc1_.§"c§ = this.§"c§;
         _loc1_.§->§ = this.§->§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§4!2§;
      }
      
      public function get globalX() : Number
      {
         return this.§5U§;
      }
      
      public function get globalY() : Number
      {
         return this.§0>§;
      }
      
      public function get § "=§() : Number
      {
         return this.§%!@§;
      }
      
      public function get §'t§() : Number
      {
         return this.§%!R§;
      }
      
      public function get §0!T§() : int
      {
         return this.§"c§;
      }
      
      public function get phase() : String
      {
         return this.§%!w§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§;D§;
      }
      
      public function get timestamp() : Number
      {
         return this.§->§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§%!@§ = this.§5U§;
         this.§%!R§ = this.§0>§;
         this.§5U§ = param1;
         this.§0>§ = param2;
      }
      
      function §#S§(param1:String) : void
      {
         this.§%!w§ = param1;
      }
      
      function §3!$§(param1:int) : void
      {
         this.§"c§ = param1;
      }
      
      function §0'§(param1:DisplayObject) : void
      {
         this.§;D§ = param1;
      }
      
      function §,"<§(param1:Number) : void
      {
         this.§->§ = param1;
      }
   }
}
