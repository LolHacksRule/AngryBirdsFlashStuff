package starling.events
{
   import §]!6§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[9§
   {
      
      private static var §'i§:Matrix = new Matrix();
       
      
      private var §^r§:int;
      
      private var §@[§:Number;
      
      private var §2[§:Number;
      
      private var §[!H§:Number;
      
      private var §^I§:Number;
      
      private var §4i§:int;
      
      private var §`§:String;
      
      private var §&P§:DisplayObject;
      
      private var §%E§:Number;
      
      public function §[9§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§^r§ = param1;
         this.§@[§ = this.§[!H§ = param2;
         this.§2[§ = this.§^I§ = param3;
         this.§4i§ = 0;
         this.§`§ = param4;
         this.§&P§ = param5;
      }
      
      public function § 4§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@[§,this.§2[§);
         this.§&P§.root.§5D§(param1,§'i§);
         return §'i§.transformPoint(_loc2_);
      }
      
      public function § A§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[!H§,this.§^I§);
         this.§&P§.root.§5D§(param1,§'i§);
         return §'i§.transformPoint(_loc2_);
      }
      
      public function clone() : §[9§
      {
         var _loc1_:§[9§ = new §[9§(this.§^r§,this.§@[§,this.§2[§,this.§`§,this.§&P§);
         _loc1_.§[!H§ = this.§[!H§;
         _loc1_.§^I§ = this.§^I§;
         _loc1_.§4i§ = this.§4i§;
         _loc1_.§%E§ = this.§%E§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§^r§;
      }
      
      public function get globalX() : Number
      {
         return this.§@[§;
      }
      
      public function get globalY() : Number
      {
         return this.§2[§;
      }
      
      public function get §@z§() : Number
      {
         return this.§[!H§;
      }
      
      public function get §6<§() : Number
      {
         return this.§^I§;
      }
      
      public function get §;%§() : int
      {
         return this.§4i§;
      }
      
      public function get phase() : String
      {
         return this.§`§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&P§;
      }
      
      public function get timestamp() : Number
      {
         return this.§%E§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§[!H§ = this.§@[§;
         this.§^I§ = this.§2[§;
         this.§@[§ = param1;
         this.§2[§ = param2;
      }
      
      function §34§(param1:String) : void
      {
         this.§`§ = param1;
      }
      
      function §>Y§(param1:int) : void
      {
         this.§4i§ = param1;
      }
      
      function §!t§(param1:DisplayObject) : void
      {
         this.§&P§ = param1;
      }
      
      function §^!3§(param1:Number) : void
      {
         this.§%E§ = param1;
      }
   }
}
