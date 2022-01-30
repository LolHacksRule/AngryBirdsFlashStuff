package starling.events
{
   import §-!`§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,s§
   {
      
      private static var §`!3§:Matrix = new Matrix();
       
      
      private var §2!e§:int;
      
      private var § o§:Number;
      
      private var §8Z§:Number;
      
      private var §>!o§:Number;
      
      private var §<%§:Number;
      
      private var §6!,§:int;
      
      private var §+!P§:String;
      
      private var §8!$§:DisplayObject;
      
      private var §-Q§:Number;
      
      public function §,s§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§2!e§ = param1;
         this.§ o§ = this.§>!o§ = param2;
         this.§8Z§ = this.§<%§ = param3;
         this.§6!,§ = 0;
         this.§+!P§ = param4;
         this.§8!$§ = param5;
      }
      
      public function §4[§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ o§,this.§8Z§);
         this.§8!$§.root.§+y§(param1,§`!3§);
         return §`!3§.transformPoint(_loc2_);
      }
      
      public function §3N§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§>!o§,this.§<%§);
         this.§8!$§.root.§+y§(param1,§`!3§);
         return §`!3§.transformPoint(_loc2_);
      }
      
      public function clone() : §,s§
      {
         var _loc1_:§,s§ = new §,s§(this.§2!e§,this.§ o§,this.§8Z§,this.§+!P§,this.§8!$§);
         _loc1_.§>!o§ = this.§>!o§;
         _loc1_.§<%§ = this.§<%§;
         _loc1_.§6!,§ = this.§6!,§;
         _loc1_.§-Q§ = this.§-Q§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§2!e§;
      }
      
      public function get globalX() : Number
      {
         return this.§ o§;
      }
      
      public function get globalY() : Number
      {
         return this.§8Z§;
      }
      
      public function get §9!>§() : Number
      {
         return this.§>!o§;
      }
      
      public function get §3!&§() : Number
      {
         return this.§<%§;
      }
      
      public function get §=!u§() : int
      {
         return this.§6!,§;
      }
      
      public function get phase() : String
      {
         return this.§+!P§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§8!$§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-Q§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§>!o§ = this.§ o§;
         this.§<%§ = this.§8Z§;
         this.§ o§ = param1;
         this.§8Z§ = param2;
      }
      
      function §4!n§(param1:String) : void
      {
         this.§+!P§ = param1;
      }
      
      function §%M§(param1:int) : void
      {
         this.§6!,§ = param1;
      }
      
      function §#!0§(param1:DisplayObject) : void
      {
         this.§8!$§ = param1;
      }
      
      function §!!B§(param1:Number) : void
      {
         this.§-Q§ = param1;
      }
   }
}
