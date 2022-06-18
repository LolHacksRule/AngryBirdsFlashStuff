package starling.events
{
   import §9!a§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §31§
   {
      
      private static var §&h§:Matrix = new Matrix();
       
      
      private var §!r§:int;
      
      private var §6!#§:Number;
      
      private var §#F§:Number;
      
      private var §,!7§:Number;
      
      private var §]!L§:Number;
      
      private var §0V§:int;
      
      private var §0!B§:String;
      
      private var §@r§:DisplayObject;
      
      private var §-&§:Number;
      
      public function §31§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§!r§ = param1;
         this.§6!#§ = this.§,!7§ = param2;
         this.§#F§ = this.§]!L§ = param3;
         this.§0V§ = 0;
         this.§0!B§ = param4;
         this.§@r§ = param5;
      }
      
      public function §+!I§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6!#§,this.§#F§);
         this.§@r§.root.§!!2§(param1,§&h§);
         return §&h§.transformPoint(_loc2_);
      }
      
      public function §]!M§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§,!7§,this.§]!L§);
         this.§@r§.root.§!!2§(param1,§&h§);
         return §&h§.transformPoint(_loc2_);
      }
      
      public function clone() : §31§
      {
         var _loc1_:§31§ = new §31§(this.§!r§,this.§6!#§,this.§#F§,this.§0!B§,this.§@r§);
         _loc1_.§,!7§ = this.§,!7§;
         _loc1_.§]!L§ = this.§]!L§;
         _loc1_.§0V§ = this.§0V§;
         _loc1_.§-&§ = this.§-&§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§!r§;
      }
      
      public function get globalX() : Number
      {
         return this.§6!#§;
      }
      
      public function get globalY() : Number
      {
         return this.§#F§;
      }
      
      public function get §#d§() : Number
      {
         return this.§,!7§;
      }
      
      public function get §]!E§() : Number
      {
         return this.§]!L§;
      }
      
      public function get §]!4§() : int
      {
         return this.§0V§;
      }
      
      public function get phase() : String
      {
         return this.§0!B§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§@r§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-&§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§,!7§ = this.§6!#§;
         this.§]!L§ = this.§#F§;
         this.§6!#§ = param1;
         this.§#F§ = param2;
      }
      
      function §+i§(param1:String) : void
      {
         this.§0!B§ = param1;
      }
      
      function §!H§(param1:int) : void
      {
         this.§0V§ = param1;
      }
      
      function §+J§(param1:DisplayObject) : void
      {
         this.§@r§ = param1;
      }
      
      function §catch§(param1:Number) : void
      {
         this.§-&§ = param1;
      }
   }
}
