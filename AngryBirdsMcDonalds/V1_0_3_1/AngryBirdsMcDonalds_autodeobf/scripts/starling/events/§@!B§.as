package starling.events
{
   import §&c§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §@!B§
   {
      
      private static var §"!3§:Matrix = new Matrix();
       
      
      private var §;!4§:int;
      
      private var §`!1§:Number;
      
      private var §2!T§:Number;
      
      private var §;!M§:Number;
      
      private var §"L§:Number;
      
      private var §@%§:int;
      
      private var §switch§:String;
      
      private var §&J§:DisplayObject;
      
      private var §1J§:Number;
      
      public function §@!B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§;!4§ = param1;
         this.§`!1§ = this.§;!M§ = param2;
         this.§2!T§ = this.§"L§ = param3;
         this.§@%§ = 0;
         this.§switch§ = param4;
         this.§&J§ = param5;
      }
      
      public function §!!n§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`!1§,this.§2!T§);
         this.§&J§.root.§1d§(param1,§"!3§);
         return §"!3§.transformPoint(_loc2_);
      }
      
      public function §#!i§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§;!M§,this.§"L§);
         this.§&J§.root.§1d§(param1,§"!3§);
         return §"!3§.transformPoint(_loc2_);
      }
      
      public function clone() : §@!B§
      {
         var _loc1_:§@!B§ = new §@!B§(this.§;!4§,this.§`!1§,this.§2!T§,this.§switch§,this.§&J§);
         _loc1_.§;!M§ = this.§;!M§;
         _loc1_.§"L§ = this.§"L§;
         _loc1_.§@%§ = this.§@%§;
         _loc1_.§1J§ = this.§1J§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§;!4§;
      }
      
      public function get globalX() : Number
      {
         return this.§`!1§;
      }
      
      public function get globalY() : Number
      {
         return this.§2!T§;
      }
      
      public function get §,!O§() : Number
      {
         return this.§;!M§;
      }
      
      public function get §0?§() : Number
      {
         return this.§"L§;
      }
      
      public function get §6!3§() : int
      {
         return this.§@%§;
      }
      
      public function get phase() : String
      {
         return this.§switch§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&J§;
      }
      
      public function get timestamp() : Number
      {
         return this.§1J§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§;!M§ = this.§`!1§;
         this.§"L§ = this.§2!T§;
         this.§`!1§ = param1;
         this.§2!T§ = param2;
      }
      
      function §!!#§(param1:String) : void
      {
         this.§switch§ = param1;
      }
      
      function §#M§(param1:int) : void
      {
         this.§@%§ = param1;
      }
      
      function §?!]§(param1:DisplayObject) : void
      {
         this.§&J§ = param1;
      }
      
      function §1'§(param1:Number) : void
      {
         this.§1J§ = param1;
      }
   }
}
