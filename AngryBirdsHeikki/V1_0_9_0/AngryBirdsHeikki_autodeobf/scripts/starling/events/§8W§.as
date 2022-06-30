package starling.events
{
   import §#!f§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §8W§
   {
      
      private static var §8!;§:Matrix = new Matrix();
       
      
      private var §>!$§:int;
      
      private var §!^§:Number;
      
      private var §8!Z§:Number;
      
      private var §5!a§:Number;
      
      private var §1F§:Number;
      
      private var §0-§:int;
      
      private var §,!E§:String;
      
      private var §2Z§:DisplayObject;
      
      private var §5T§:Number;
      
      public function §8W§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§>!$§ = param1;
         this.§!^§ = this.§5!a§ = param2;
         this.§8!Z§ = this.§1F§ = param3;
         this.§0-§ = 0;
         this.§,!E§ = param4;
         this.§2Z§ = param5;
      }
      
      public function § p§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§!^§,this.§8!Z§);
         this.§2Z§.root.§!c§(param1,§8!;§);
         return §8!;§.transformPoint(_loc2_);
      }
      
      public function §?f§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5!a§,this.§1F§);
         this.§2Z§.root.§!c§(param1,§8!;§);
         return §8!;§.transformPoint(_loc2_);
      }
      
      public function clone() : §8W§
      {
         var _loc1_:§8W§ = new §8W§(this.§>!$§,this.§!^§,this.§8!Z§,this.§,!E§,this.§2Z§);
         _loc1_.§5!a§ = this.§5!a§;
         _loc1_.§1F§ = this.§1F§;
         _loc1_.§0-§ = this.§0-§;
         _loc1_.§5T§ = this.§5T§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§>!$§;
      }
      
      public function get globalX() : Number
      {
         return this.§!^§;
      }
      
      public function get globalY() : Number
      {
         return this.§8!Z§;
      }
      
      public function get §2!,§() : Number
      {
         return this.§5!a§;
      }
      
      public function get §5!E§() : Number
      {
         return this.§1F§;
      }
      
      public function get §,c§() : int
      {
         return this.§0-§;
      }
      
      public function get phase() : String
      {
         return this.§,!E§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§2Z§;
      }
      
      public function get timestamp() : Number
      {
         return this.§5T§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§5!a§ = this.§!^§;
         this.§1F§ = this.§8!Z§;
         this.§!^§ = param1;
         this.§8!Z§ = param2;
      }
      
      function §3V§(param1:String) : void
      {
         this.§,!E§ = param1;
      }
      
      function §17§(param1:int) : void
      {
         this.§0-§ = param1;
      }
      
      function §[!P§(param1:DisplayObject) : void
      {
         this.§2Z§ = param1;
      }
      
      function §;!E§(param1:Number) : void
      {
         this.§5T§ = param1;
      }
   }
}
