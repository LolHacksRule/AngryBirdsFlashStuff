package starling.events
{
   import §6!;§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!c§
   {
      
      private static var §<]§:Matrix = new Matrix();
       
      
      private var §?f§:int;
      
      private var §&O§:Number;
      
      private var §0=§:Number;
      
      private var §+!Z§:Number;
      
      private var §%f§:Number;
      
      private var §0l§:int;
      
      private var §9!6§:String;
      
      private var §+! §:DisplayObject;
      
      private var §`!c§:Number;
      
      public function §;!c§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?f§ = param1;
         this.§&O§ = this.§+!Z§ = param2;
         this.§0=§ = this.§%f§ = param3;
         this.§0l§ = 0;
         this.§9!6§ = param4;
         this.§+! § = param5;
      }
      
      public function §2-§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§&O§,this.§0=§);
         this.§+! §.root.§<!§(param1,§<]§);
         return §<]§.transformPoint(_loc2_);
      }
      
      public function §,!Q§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§+!Z§,this.§%f§);
         this.§+! §.root.§<!§(param1,§<]§);
         return §<]§.transformPoint(_loc2_);
      }
      
      public function clone() : §;!c§
      {
         var _loc1_:§;!c§ = new §;!c§(this.§?f§,this.§&O§,this.§0=§,this.§9!6§,this.§+! §);
         _loc1_.§+!Z§ = this.§+!Z§;
         _loc1_.§%f§ = this.§%f§;
         _loc1_.§0l§ = this.§0l§;
         _loc1_.§`!c§ = this.§`!c§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?f§;
      }
      
      public function get globalX() : Number
      {
         return this.§&O§;
      }
      
      public function get globalY() : Number
      {
         return this.§0=§;
      }
      
      public function get §1[§() : Number
      {
         return this.§+!Z§;
      }
      
      public function get §#o§() : Number
      {
         return this.§%f§;
      }
      
      public function get §9P§() : int
      {
         return this.§0l§;
      }
      
      public function get phase() : String
      {
         return this.§9!6§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+! §;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!c§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§+!Z§ = this.§&O§;
         this.§%f§ = this.§0=§;
         this.§&O§ = param1;
         this.§0=§ = param2;
      }
      
      function §>!+§(param1:String) : void
      {
         this.§9!6§ = param1;
      }
      
      function §1!#§(param1:int) : void
      {
         this.§0l§ = param1;
      }
      
      function §^!Y§(param1:DisplayObject) : void
      {
         this.§+! § = param1;
      }
      
      function §0!!§(param1:Number) : void
      {
         this.§`!c§ = param1;
      }
   }
}
