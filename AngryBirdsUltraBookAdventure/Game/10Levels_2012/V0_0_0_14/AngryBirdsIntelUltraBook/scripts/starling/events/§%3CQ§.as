package starling.events
{
   import §9E§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<Q§
   {
      
      private static var §1=§:Matrix = new Matrix();
       
      
      private var § [§:int;
      
      private var § !'§:Number;
      
      private var §;q§:Number;
      
      private var §%!R§:Number;
      
      private var §4!j§:Number;
      
      private var §1D§:int;
      
      private var §<!C§:String;
      
      private var §,t§:DisplayObject;
      
      private var §3!k§:Number;
      
      public function §<Q§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§ [§ = param1;
         this.§ !'§ = this.§%!R§ = param2;
         this.§;q§ = this.§4!j§ = param3;
         this.§1D§ = 0;
         this.§<!C§ = param4;
         this.§,t§ = param5;
      }
      
      public function §0F§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ !'§,this.§;q§);
         this.§,t§.root.§@P§(param1,§1=§);
         return §1=§.transformPoint(_loc2_);
      }
      
      public function §&L§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%!R§,this.§4!j§);
         this.§,t§.root.§@P§(param1,§1=§);
         return §1=§.transformPoint(_loc2_);
      }
      
      public function clone() : §<Q§
      {
         var _loc1_:§<Q§ = new §<Q§(this.§ [§,this.§ !'§,this.§;q§,this.§<!C§,this.§,t§);
         _loc1_.§%!R§ = this.§%!R§;
         _loc1_.§4!j§ = this.§4!j§;
         _loc1_.§1D§ = this.§1D§;
         _loc1_.§3!k§ = this.§3!k§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§ [§;
      }
      
      public function get globalX() : Number
      {
         return this.§ !'§;
      }
      
      public function get globalY() : Number
      {
         return this.§;q§;
      }
      
      public function get §^[§() : Number
      {
         return this.§%!R§;
      }
      
      public function get §7!'§() : Number
      {
         return this.§4!j§;
      }
      
      public function get §6n§() : int
      {
         return this.§1D§;
      }
      
      public function get phase() : String
      {
         return this.§<!C§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§,t§;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!k§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§%!R§ = this.§ !'§;
         this.§4!j§ = this.§;q§;
         this.§ !'§ = param1;
         this.§;q§ = param2;
      }
      
      function §;B§(param1:String) : void
      {
         this.§<!C§ = param1;
      }
      
      function §7!n§(param1:int) : void
      {
         this.§1D§ = param1;
      }
      
      function § 7§(param1:DisplayObject) : void
      {
         this.§,t§ = param1;
      }
      
      function §+!,§(param1:Number) : void
      {
         this.§3!k§ = param1;
      }
   }
}
