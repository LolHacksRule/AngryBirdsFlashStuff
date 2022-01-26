package starling.events
{
   import §,!Q§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §&!7§
   {
      
      private static var §,!J§:Matrix = new Matrix();
       
      
      private var §5!1§:int;
      
      private var §5@§:Number;
      
      private var §6K§:Number;
      
      private var §>K§:Number;
      
      private var §!n§:Number;
      
      private var §9!X§:int;
      
      private var §;!J§:String;
      
      private var §&>§:DisplayObject;
      
      private var §7?§:Number;
      
      public function §&!7§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§5!1§ = param1;
         this.§5@§ = this.§>K§ = param2;
         this.§6K§ = this.§!n§ = param3;
         this.§9!X§ = 0;
         this.§;!J§ = param4;
         this.§&>§ = param5;
      }
      
      public function §1!_§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5@§,this.§6K§);
         this.§&>§.root.§ !K§(param1,§,!J§);
         return §,!J§.transformPoint(_loc2_);
      }
      
      public function §[x§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§>K§,this.§!n§);
         this.§&>§.root.§ !K§(param1,§,!J§);
         return §,!J§.transformPoint(_loc2_);
      }
      
      public function clone() : §&!7§
      {
         var _loc1_:§&!7§ = new §&!7§(this.§5!1§,this.§5@§,this.§6K§,this.§;!J§,this.§&>§);
         _loc1_.§>K§ = this.§>K§;
         _loc1_.§!n§ = this.§!n§;
         _loc1_.§9!X§ = this.§9!X§;
         _loc1_.§7?§ = this.§7?§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§5!1§;
      }
      
      public function get globalX() : Number
      {
         return this.§5@§;
      }
      
      public function get globalY() : Number
      {
         return this.§6K§;
      }
      
      public function get §=!B§() : Number
      {
         return this.§>K§;
      }
      
      public function get §@J§() : Number
      {
         return this.§!n§;
      }
      
      public function get §'i§() : int
      {
         return this.§9!X§;
      }
      
      public function get phase() : String
      {
         return this.§;!J§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&>§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7?§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§>K§ = this.§5@§;
         this.§!n§ = this.§6K§;
         this.§5@§ = param1;
         this.§6K§ = param2;
      }
      
      function §4g§(param1:String) : void
      {
         this.§;!J§ = param1;
      }
      
      function §-!U§(param1:int) : void
      {
         this.§9!X§ = param1;
      }
      
      function §2%§(param1:DisplayObject) : void
      {
         this.§&>§ = param1;
      }
      
      function §%!a§(param1:Number) : void
      {
         this.§7?§ = param1;
      }
   }
}
