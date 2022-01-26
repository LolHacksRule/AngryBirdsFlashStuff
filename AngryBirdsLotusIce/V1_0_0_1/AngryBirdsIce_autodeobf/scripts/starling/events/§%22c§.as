package starling.events
{
   import §@!=§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §"c§
   {
      
      private static var §,l§:Matrix = new Matrix();
       
      
      private var §,!>§:int;
      
      private var §^!,§:Number;
      
      private var §9! §:Number;
      
      private var §?f§:Number;
      
      private var §2!6§:Number;
      
      private var §4!"§:int;
      
      private var §2M§:String;
      
      private var §">§:DisplayObject;
      
      private var §8p§:Number;
      
      public function §"c§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§,!>§ = param1;
         this.§^!,§ = this.§?f§ = param2;
         this.§9! § = this.§2!6§ = param3;
         this.§4!"§ = 0;
         this.§2M§ = param4;
         this.§">§ = param5;
      }
      
      public function §,!-§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!,§,this.§9! §);
         this.§">§.root.§2B§(param1,§,l§);
         return §,l§.transformPoint(_loc2_);
      }
      
      public function §0!3§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§?f§,this.§2!6§);
         this.§">§.root.§2B§(param1,§,l§);
         return §,l§.transformPoint(_loc2_);
      }
      
      public function clone() : §"c§
      {
         var _loc1_:§"c§ = new §"c§(this.§,!>§,this.§^!,§,this.§9! §,this.§2M§,this.§">§);
         _loc1_.§?f§ = this.§?f§;
         _loc1_.§2!6§ = this.§2!6§;
         _loc1_.§4!"§ = this.§4!"§;
         _loc1_.§8p§ = this.§8p§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§,!>§;
      }
      
      public function get globalX() : Number
      {
         return this.§^!,§;
      }
      
      public function get globalY() : Number
      {
         return this.§9! §;
      }
      
      public function get §&u§() : Number
      {
         return this.§?f§;
      }
      
      public function get §4!B§() : Number
      {
         return this.§2!6§;
      }
      
      public function get §[n§() : int
      {
         return this.§4!"§;
      }
      
      public function get phase() : String
      {
         return this.§2M§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§">§;
      }
      
      public function get timestamp() : Number
      {
         return this.§8p§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§?f§ = this.§^!,§;
         this.§2!6§ = this.§9! §;
         this.§^!,§ = param1;
         this.§9! § = param2;
      }
      
      function §62§(param1:String) : void
      {
         this.§2M§ = param1;
      }
      
      function §+!6§(param1:int) : void
      {
         this.§4!"§ = param1;
      }
      
      function §3#§(param1:DisplayObject) : void
      {
         this.§">§ = param1;
      }
      
      function §7L§(param1:Number) : void
      {
         this.§8p§ = param1;
      }
   }
}
