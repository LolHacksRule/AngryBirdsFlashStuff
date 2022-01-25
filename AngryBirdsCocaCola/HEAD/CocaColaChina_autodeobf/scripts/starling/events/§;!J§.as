package starling.events
{
   import § !K§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!J§
   {
      
      private static var §]!!§:Matrix = new Matrix();
       
      
      private var §1!_§:int;
      
      private var §[x§:Number;
      
      private var §=!B§:Number;
      
      private var §@J§:Number;
      
      private var §'i§:Number;
      
      private var §4g§:int;
      
      private var §-!U§:String;
      
      private var §@7§:DisplayObject;
      
      private var §-!1§:Number;
      
      public function §;!J§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§1!_§ = param1;
         this.§[x§ = this.§@J§ = param2;
         this.§=!B§ = this.§'i§ = param3;
         this.§4g§ = 0;
         this.§-!U§ = param4;
         this.§@7§ = param5;
      }
      
      public function §%!a§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[x§,this.§=!B§);
         this.§@7§.root.§]`§(param1,§]!!§);
         return §]!!§.transformPoint(_loc2_);
      }
      
      public function §,!J§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@J§,this.§'i§);
         this.§@7§.root.§]`§(param1,§]!!§);
         return §]!!§.transformPoint(_loc2_);
      }
      
      public function clone() : §;!J§
      {
         var _loc1_:§;!J§ = new §;!J§(this.§1!_§,this.§[x§,this.§=!B§,this.§-!U§,this.§@7§);
         _loc1_.§@J§ = this.§@J§;
         _loc1_.§'i§ = this.§'i§;
         _loc1_.§4g§ = this.§4g§;
         _loc1_.§-!1§ = this.§-!1§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§1!_§;
      }
      
      public function get globalX() : Number
      {
         return this.§[x§;
      }
      
      public function get globalY() : Number
      {
         return this.§=!B§;
      }
      
      public function get §8I§() : Number
      {
         return this.§@J§;
      }
      
      public function get §"n§() : Number
      {
         return this.§'i§;
      }
      
      public function get §3! §() : int
      {
         return this.§4g§;
      }
      
      public function get phase() : String
      {
         return this.§-!U§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§@7§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-!1§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§@J§ = this.§[x§;
         this.§'i§ = this.§=!B§;
         this.§[x§ = param1;
         this.§=!B§ = param2;
      }
      
      function §+n§(param1:String) : void
      {
         this.§-!U§ = param1;
      }
      
      function §;!U§(param1:int) : void
      {
         this.§4g§ = param1;
      }
      
      function §3C§(param1:DisplayObject) : void
      {
         this.§@7§ = param1;
      }
      
      function §#>§(param1:Number) : void
      {
         this.§-!1§ = param1;
      }
   }
}
