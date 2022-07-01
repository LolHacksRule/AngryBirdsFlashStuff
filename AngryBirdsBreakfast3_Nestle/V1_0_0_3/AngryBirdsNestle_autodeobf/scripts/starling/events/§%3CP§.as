package starling.events
{
   import §0!Y§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<P§
   {
      
      private static var §0!x§:Matrix = new Matrix();
       
      
      private var §0!'§:int;
      
      private var §94§:Number;
      
      private var §;!+§:Number;
      
      private var §";§:Number;
      
      private var §3-§:Number;
      
      private var §[Y§:int;
      
      private var §4""§:String;
      
      private var §6"'§:DisplayObject;
      
      private var §7!k§:Number;
      
      public function §<P§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§0!'§ = param1;
         this.§94§ = this.§";§ = param2;
         this.§;!+§ = this.§3-§ = param3;
         this.§[Y§ = 0;
         this.§4""§ = param4;
         this.§6"'§ = param5;
      }
      
      public function §"r§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§94§,this.§;!+§);
         this.§6"'§.root.§8t§(param1,§0!x§);
         return §0!x§.transformPoint(_loc2_);
      }
      
      public function §""+§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§";§,this.§3-§);
         this.§6"'§.root.§8t§(param1,§0!x§);
         return §0!x§.transformPoint(_loc2_);
      }
      
      public function clone() : §<P§
      {
         var _loc1_:§<P§ = new §<P§(this.§0!'§,this.§94§,this.§;!+§,this.§4""§,this.§6"'§);
         _loc1_.§";§ = this.§";§;
         _loc1_.§3-§ = this.§3-§;
         _loc1_.§[Y§ = this.§[Y§;
         _loc1_.§7!k§ = this.§7!k§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§0!'§;
      }
      
      public function get globalX() : Number
      {
         return this.§94§;
      }
      
      public function get globalY() : Number
      {
         return this.§;!+§;
      }
      
      public function get §["1§() : Number
      {
         return this.§";§;
      }
      
      public function get §-!A§() : Number
      {
         return this.§3-§;
      }
      
      public function get §`V§() : int
      {
         return this.§[Y§;
      }
      
      public function get phase() : String
      {
         return this.§4""§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§6"'§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!k§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§";§ = this.§94§;
         this.§3-§ = this.§;!+§;
         this.§94§ = param1;
         this.§;!+§ = param2;
      }
      
      function §]8§(param1:String) : void
      {
         this.§4""§ = param1;
      }
      
      function §<!>§(param1:int) : void
      {
         this.§[Y§ = param1;
      }
      
      function §'7§(param1:DisplayObject) : void
      {
         this.§6"'§ = param1;
      }
      
      function §]d§(param1:Number) : void
      {
         this.§7!k§ = param1;
      }
   }
}
