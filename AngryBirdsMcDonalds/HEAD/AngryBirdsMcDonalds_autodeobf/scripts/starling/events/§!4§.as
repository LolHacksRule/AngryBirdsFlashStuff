package starling.events
{
   import §`!n§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!4§
   {
      
      private static var §9X§:Matrix = new Matrix();
       
      
      private var §97§:int;
      
      private var §+k§:Number;
      
      private var §4?§:Number;
      
      private var §>j§:Number;
      
      private var §&!o§:Number;
      
      private var §0!@§:int;
      
      private var §9!T§:String;
      
      private var §6,§:DisplayObject;
      
      private var §]!G§:Number;
      
      public function §!4§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§97§ = param1;
         this.§+k§ = this.§>j§ = param2;
         this.§4?§ = this.§&!o§ = param3;
         this.§0!@§ = 0;
         this.§9!T§ = param4;
         this.§6,§ = param5;
      }
      
      public function §8!0§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§+k§,this.§4?§);
         this.§6,§.root.§'!C§(param1,§9X§);
         return §9X§.transformPoint(_loc2_);
      }
      
      public function §1i§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§>j§,this.§&!o§);
         this.§6,§.root.§'!C§(param1,§9X§);
         return §9X§.transformPoint(_loc2_);
      }
      
      public function clone() : §!4§
      {
         var _loc1_:§!4§ = new §!4§(this.§97§,this.§+k§,this.§4?§,this.§9!T§,this.§6,§);
         _loc1_.§>j§ = this.§>j§;
         _loc1_.§&!o§ = this.§&!o§;
         _loc1_.§0!@§ = this.§0!@§;
         _loc1_.§]!G§ = this.§]!G§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§97§;
      }
      
      public function get globalX() : Number
      {
         return this.§+k§;
      }
      
      public function get globalY() : Number
      {
         return this.§4?§;
      }
      
      public function get §<!F§() : Number
      {
         return this.§>j§;
      }
      
      public function get §7O§() : Number
      {
         return this.§&!o§;
      }
      
      public function get §#!l§() : int
      {
         return this.§0!@§;
      }
      
      public function get phase() : String
      {
         return this.§9!T§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§6,§;
      }
      
      public function get timestamp() : Number
      {
         return this.§]!G§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§>j§ = this.§+k§;
         this.§&!o§ = this.§4?§;
         this.§+k§ = param1;
         this.§4?§ = param2;
      }
      
      function §`!O§(param1:String) : void
      {
         this.§9!T§ = param1;
      }
      
      function §++§(param1:int) : void
      {
         this.§0!@§ = param1;
      }
      
      function § !+§(param1:DisplayObject) : void
      {
         this.§6,§ = param1;
      }
      
      function override(param1:Number) : void
      {
         this.§]!G§ = param1;
      }
   }
}
