package starling.events
{
   import §3§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §+!9§
   {
      
      private static var § !"§:Matrix = new Matrix();
       
      
      private var §3=§:int;
      
      private var §56§:Number;
      
      private var §`!$§:Number;
      
      private var §^!!§:Number;
      
      private var §?4§:Number;
      
      private var § !0§:int;
      
      private var §]!8§:String;
      
      private var §%j§:DisplayObject;
      
      private var §@B§:Number;
      
      public function §+!9§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§3=§ = param1;
         this.§56§ = this.§^!!§ = param2;
         this.§`!$§ = this.§?4§ = param3;
         this.§ !0§ = 0;
         this.§]!8§ = param4;
         this.§%j§ = param5;
      }
      
      public function §7E§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§56§,this.§`!$§);
         this.§%j§.root.§8!V§(param1,§ !"§);
         return § !"§.transformPoint(_loc2_);
      }
      
      public function §`!Q§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!!§,this.§?4§);
         this.§%j§.root.§8!V§(param1,§ !"§);
         return § !"§.transformPoint(_loc2_);
      }
      
      public function clone() : §+!9§
      {
         var _loc1_:§+!9§ = new §+!9§(this.§3=§,this.§56§,this.§`!$§,this.§]!8§,this.§%j§);
         _loc1_.§^!!§ = this.§^!!§;
         _loc1_.§?4§ = this.§?4§;
         _loc1_.§ !0§ = this.§ !0§;
         _loc1_.§@B§ = this.§@B§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§3=§;
      }
      
      public function get globalX() : Number
      {
         return this.§56§;
      }
      
      public function get globalY() : Number
      {
         return this.§`!$§;
      }
      
      public function get §"9§() : Number
      {
         return this.§^!!§;
      }
      
      public function get §var§() : Number
      {
         return this.§?4§;
      }
      
      public function get §,9§() : int
      {
         return this.§ !0§;
      }
      
      public function get phase() : String
      {
         return this.§]!8§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§%j§;
      }
      
      public function get timestamp() : Number
      {
         return this.§@B§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^!!§ = this.§56§;
         this.§?4§ = this.§`!$§;
         this.§56§ = param1;
         this.§`!$§ = param2;
      }
      
      function §4!C§(param1:String) : void
      {
         this.§]!8§ = param1;
      }
      
      function §!!X§(param1:int) : void
      {
         this.§ !0§ = param1;
      }
      
      function §3P§(param1:DisplayObject) : void
      {
         this.§%j§ = param1;
      }
      
      function §<d§(param1:Number) : void
      {
         this.§@B§ = param1;
      }
   }
}
