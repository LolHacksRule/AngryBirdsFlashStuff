package starling.events
{
   import §<!$§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?r§
   {
      
      private static var §'§:Matrix = new Matrix();
       
      
      private var § !3§:int;
      
      private var §2!P§:Number;
      
      private var § H§:Number;
      
      private var §'@§:Number;
      
      private var §;j§:Number;
      
      private var §%c§:int;
      
      private var §-!^§:String;
      
      private var §9!J§:DisplayObject;
      
      private var §#d§:Number;
      
      public function §?r§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§ !3§ = param1;
         this.§2!P§ = this.§'@§ = param2;
         this.§ H§ = this.§;j§ = param3;
         this.§%c§ = 0;
         this.§-!^§ = param4;
         this.§9!J§ = param5;
      }
      
      public function §8!a§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§2!P§,this.§ H§);
         this.§9!J§.root.§>]§(param1,§'§);
         return §'§.transformPoint(_loc2_);
      }
      
      public function §>!_§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§'@§,this.§;j§);
         this.§9!J§.root.§>]§(param1,§'§);
         return §'§.transformPoint(_loc2_);
      }
      
      public function clone() : §?r§
      {
         var _loc1_:§?r§ = new §?r§(this.§ !3§,this.§2!P§,this.§ H§,this.§-!^§,this.§9!J§);
         _loc1_.§'@§ = this.§'@§;
         _loc1_.§;j§ = this.§;j§;
         _loc1_.§%c§ = this.§%c§;
         _loc1_.§#d§ = this.§#d§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§ !3§;
      }
      
      public function get globalX() : Number
      {
         return this.§2!P§;
      }
      
      public function get globalY() : Number
      {
         return this.§ H§;
      }
      
      public function get §4p§() : Number
      {
         return this.§'@§;
      }
      
      public function get §!K§() : Number
      {
         return this.§;j§;
      }
      
      public function get §2d§() : int
      {
         return this.§%c§;
      }
      
      public function get phase() : String
      {
         return this.§-!^§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§9!J§;
      }
      
      public function get timestamp() : Number
      {
         return this.§#d§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§'@§ = this.§2!P§;
         this.§;j§ = this.§ H§;
         this.§2!P§ = param1;
         this.§ H§ = param2;
      }
      
      function §8Z§(param1:String) : void
      {
         this.§-!^§ = param1;
      }
      
      function §9!P§(param1:int) : void
      {
         this.§%c§ = param1;
      }
      
      function §'x§(param1:DisplayObject) : void
      {
         this.§9!J§ = param1;
      }
      
      function §#!Z§(param1:Number) : void
      {
         this.§#d§ = param1;
      }
   }
}
