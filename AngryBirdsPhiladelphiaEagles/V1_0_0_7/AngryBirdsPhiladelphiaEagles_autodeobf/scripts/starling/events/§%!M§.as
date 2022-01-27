package starling.events
{
   import §4G§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §%!M§
   {
      
      private static var §1^§:Matrix = new Matrix();
       
      
      private var §5<§:int;
      
      private var §9V§:Number;
      
      private var § 7§:Number;
      
      private var §9^§:Number;
      
      private var §]!P§:Number;
      
      private var §6b§:int;
      
      private var §2b§:String;
      
      private var §<#§:DisplayObject;
      
      private var §3!B§:Number;
      
      public function §%!M§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§5<§ = param1;
         this.§9V§ = this.§9^§ = param2;
         this.§ 7§ = this.§]!P§ = param3;
         this.§6b§ = 0;
         this.§2b§ = param4;
         this.§<#§ = param5;
      }
      
      public function §]!#§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§9V§,this.§ 7§);
         this.§<#§.root.§2Y§(param1,§1^§);
         return §1^§.transformPoint(_loc2_);
      }
      
      public function §?!#§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§9^§,this.§]!P§);
         this.§<#§.root.§2Y§(param1,§1^§);
         return §1^§.transformPoint(_loc2_);
      }
      
      public function clone() : §%!M§
      {
         var _loc1_:§%!M§ = new §%!M§(this.§5<§,this.§9V§,this.§ 7§,this.§2b§,this.§<#§);
         _loc1_.§9^§ = this.§9^§;
         _loc1_.§]!P§ = this.§]!P§;
         _loc1_.§6b§ = this.§6b§;
         _loc1_.§3!B§ = this.§3!B§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§5<§;
      }
      
      public function get globalX() : Number
      {
         return this.§9V§;
      }
      
      public function get globalY() : Number
      {
         return this.§ 7§;
      }
      
      public function get §?E§() : Number
      {
         return this.§9^§;
      }
      
      public function get §`!F§() : Number
      {
         return this.§]!P§;
      }
      
      public function get §^!J§() : int
      {
         return this.§6b§;
      }
      
      public function get phase() : String
      {
         return this.§2b§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§<#§;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!B§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§9^§ = this.§9V§;
         this.§]!P§ = this.§ 7§;
         this.§9V§ = param1;
         this.§ 7§ = param2;
      }
      
      function §?!8§(param1:String) : void
      {
         this.§2b§ = param1;
      }
      
      function §implements§(param1:int) : void
      {
         this.§6b§ = param1;
      }
      
      function §0%§(param1:DisplayObject) : void
      {
         this.§<#§ = param1;
      }
      
      function §`!6§(param1:Number) : void
      {
         this.§3!B§ = param1;
      }
   }
}
