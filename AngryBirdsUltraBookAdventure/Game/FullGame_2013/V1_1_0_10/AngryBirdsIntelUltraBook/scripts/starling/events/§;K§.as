package starling.events
{
   import §`g§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;K§
   {
      
      private static var §=!l§:Matrix = new Matrix();
       
      
      private var §[!5§:int;
      
      private var §=!4§:Number;
      
      private var §#!y§:Number;
      
      private var §"5§:Number;
      
      private var §&$§:Number;
      
      private var § case§:int;
      
      private var §7C§:String;
      
      private var §+F§:DisplayObject;
      
      private var §>]§:Number;
      
      public function §;K§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§[!5§ = param1;
         this.§=!4§ = this.§"5§ = param2;
         this.§#!y§ = this.§&$§ = param3;
         this.§ case§ = 0;
         this.§7C§ = param4;
         this.§+F§ = param5;
      }
      
      public function §<!$§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§=!4§,this.§#!y§);
         this.§+F§.root.§,!g§(param1,§=!l§);
         return §=!l§.transformPoint(_loc2_);
      }
      
      public function §;!B§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"5§,this.§&$§);
         this.§+F§.root.§,!g§(param1,§=!l§);
         return §=!l§.transformPoint(_loc2_);
      }
      
      public function clone() : §;K§
      {
         var _loc1_:§;K§ = new §;K§(this.§[!5§,this.§=!4§,this.§#!y§,this.§7C§,this.§+F§);
         _loc1_.§"5§ = this.§"5§;
         _loc1_.§&$§ = this.§&$§;
         _loc1_.§ case§ = this.§ case§;
         _loc1_.§>]§ = this.§>]§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§[!5§;
      }
      
      public function get globalX() : Number
      {
         return this.§=!4§;
      }
      
      public function get globalY() : Number
      {
         return this.§#!y§;
      }
      
      public function get §'!a§() : Number
      {
         return this.§"5§;
      }
      
      public function get § B§() : Number
      {
         return this.§&$§;
      }
      
      public function get §9!7§() : int
      {
         return this.§ case§;
      }
      
      public function get phase() : String
      {
         return this.§7C§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+F§;
      }
      
      public function get timestamp() : Number
      {
         return this.§>]§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§"5§ = this.§=!4§;
         this.§&$§ = this.§#!y§;
         this.§=!4§ = param1;
         this.§#!y§ = param2;
      }
      
      function §6!=§(param1:String) : void
      {
         this.§7C§ = param1;
      }
      
      function §<S§(param1:int) : void
      {
         this.§ case§ = param1;
      }
      
      function §<!1§(param1:DisplayObject) : void
      {
         this.§+F§ = param1;
      }
      
      function §5g§(param1:Number) : void
      {
         this.§>]§ = param1;
      }
   }
}
