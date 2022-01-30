package starling.events
{
   import § !=§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]!?§
   {
      
      private static var §7!y§:Matrix = new Matrix();
       
      
      private var §8^§:int;
      
      private var §#"+§:Number;
      
      private var §'[§:Number;
      
      private var §4",§:Number;
      
      private var §^"2§:Number;
      
      private var §7!b§:int;
      
      private var §%!E§:String;
      
      private var §!!0§:DisplayObject;
      
      private var §6v§:Number;
      
      public function §]!?§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§8^§ = param1;
         this.§#"+§ = this.§4",§ = param2;
         this.§'[§ = this.§^"2§ = param3;
         this.§7!b§ = 0;
         this.§%!E§ = param4;
         this.§!!0§ = param5;
      }
      
      public function §+`§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§#"+§,this.§'[§);
         this.§!!0§.root.§@!-§(param1,§7!y§);
         return §7!y§.transformPoint(_loc2_);
      }
      
      public function §'W§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§4",§,this.§^"2§);
         this.§!!0§.root.§@!-§(param1,§7!y§);
         return §7!y§.transformPoint(_loc2_);
      }
      
      public function clone() : §]!?§
      {
         var _loc1_:§]!?§ = new §]!?§(this.§8^§,this.§#"+§,this.§'[§,this.§%!E§,this.§!!0§);
         _loc1_.§4",§ = this.§4",§;
         _loc1_.§^"2§ = this.§^"2§;
         _loc1_.§7!b§ = this.§7!b§;
         _loc1_.§6v§ = this.§6v§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8^§;
      }
      
      public function get globalX() : Number
      {
         return this.§#"+§;
      }
      
      public function get globalY() : Number
      {
         return this.§'[§;
      }
      
      public function get §#!`§() : Number
      {
         return this.§4",§;
      }
      
      public function get §>j§() : Number
      {
         return this.§^"2§;
      }
      
      public function get §2!'§() : int
      {
         return this.§7!b§;
      }
      
      public function get phase() : String
      {
         return this.§%!E§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§!!0§;
      }
      
      public function get timestamp() : Number
      {
         return this.§6v§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§4",§ = this.§#"+§;
         this.§^"2§ = this.§'[§;
         this.§#"+§ = param1;
         this.§'[§ = param2;
      }
      
      function §0!4§(param1:String) : void
      {
         this.§%!E§ = param1;
      }
      
      function §6!]§(param1:int) : void
      {
         this.§7!b§ = param1;
      }
      
      function §#i§(param1:DisplayObject) : void
      {
         this.§!!0§ = param1;
      }
      
      function §`x§(param1:Number) : void
      {
         this.§6v§ = param1;
      }
   }
}
