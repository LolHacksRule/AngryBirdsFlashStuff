package starling.events
{
   import §&!9§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]!+§
   {
      
      private static var §`!7§:Matrix = new Matrix();
       
      
      private var §&I§:int;
      
      private var §6l§:Number;
      
      private var §,P§:Number;
      
      private var §^`§:Number;
      
      private var §+B§:Number;
      
      private var §7]§:int;
      
      private var §<v§:String;
      
      private var §+Q§:DisplayObject;
      
      private var §]b§:Number;
      
      public function §]!+§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§&I§ = param1;
         this.§6l§ = this.§^`§ = param2;
         this.§,P§ = this.§+B§ = param3;
         this.§7]§ = 0;
         this.§<v§ = param4;
         this.§+Q§ = param5;
      }
      
      public function §?!0§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6l§,this.§,P§);
         this.§+Q§.root.§84§(param1,§`!7§);
         return §`!7§.transformPoint(_loc2_);
      }
      
      public function §#!§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^`§,this.§+B§);
         this.§+Q§.root.§84§(param1,§`!7§);
         return §`!7§.transformPoint(_loc2_);
      }
      
      public function clone() : §]!+§
      {
         var _loc1_:§]!+§ = new §]!+§(this.§&I§,this.§6l§,this.§,P§,this.§<v§,this.§+Q§);
         _loc1_.§^`§ = this.§^`§;
         _loc1_.§+B§ = this.§+B§;
         _loc1_.§7]§ = this.§7]§;
         _loc1_.§]b§ = this.§]b§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§&I§;
      }
      
      public function get globalX() : Number
      {
         return this.§6l§;
      }
      
      public function get globalY() : Number
      {
         return this.§,P§;
      }
      
      public function get §8!P§() : Number
      {
         return this.§^`§;
      }
      
      public function get §,K§() : Number
      {
         return this.§+B§;
      }
      
      public function get §-i§() : int
      {
         return this.§7]§;
      }
      
      public function get phase() : String
      {
         return this.§<v§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+Q§;
      }
      
      public function get timestamp() : Number
      {
         return this.§]b§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^`§ = this.§6l§;
         this.§+B§ = this.§,P§;
         this.§6l§ = param1;
         this.§,P§ = param2;
      }
      
      function §1j§(param1:String) : void
      {
         this.§<v§ = param1;
      }
      
      function § n§(param1:int) : void
      {
         this.§7]§ = param1;
      }
      
      function §<V§(param1:DisplayObject) : void
      {
         this.§+Q§ = param1;
      }
      
      function §8A§(param1:Number) : void
      {
         this.§]b§ = param1;
      }
   }
}
