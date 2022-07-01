package starling.events
{
   import §3!J§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4&§
   {
      
      private static var §-!B§:Matrix = new Matrix();
       
      
      private var §=D§:int;
      
      private var § J§:Number;
      
      private var §5w§:Number;
      
      private var § #§:Number;
      
      private var §<!`§:Number;
      
      private var §7!-§:int;
      
      private var §&I§:String;
      
      private var §!N§:DisplayObject;
      
      private var §3!&§:Number;
      
      public function §4&§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§=D§ = param1;
         this.§ J§ = this.§ #§ = param2;
         this.§5w§ = this.§<!`§ = param3;
         this.§7!-§ = 0;
         this.§&I§ = param4;
         this.§!N§ = param5;
      }
      
      public function §1! §(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ J§,this.§5w§);
         this.§!N§.root.§else §(param1,§-!B§);
         return §-!B§.transformPoint(_loc2_);
      }
      
      public function §6!!§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ #§,this.§<!`§);
         this.§!N§.root.§else §(param1,§-!B§);
         return §-!B§.transformPoint(_loc2_);
      }
      
      public function clone() : §4&§
      {
         var _loc1_:§4&§ = new §4&§(this.§=D§,this.§ J§,this.§5w§,this.§&I§,this.§!N§);
         _loc1_.§ #§ = this.§ #§;
         _loc1_.§<!`§ = this.§<!`§;
         _loc1_.§7!-§ = this.§7!-§;
         _loc1_.§3!&§ = this.§3!&§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§=D§;
      }
      
      public function get globalX() : Number
      {
         return this.§ J§;
      }
      
      public function get globalY() : Number
      {
         return this.§5w§;
      }
      
      public function get §8!G§() : Number
      {
         return this.§ #§;
      }
      
      public function get §0!5§() : Number
      {
         return this.§<!`§;
      }
      
      public function get § >§() : int
      {
         return this.§7!-§;
      }
      
      public function get phase() : String
      {
         return this.§&I§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§!N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!&§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§ #§ = this.§ J§;
         this.§<!`§ = this.§5w§;
         this.§ J§ = param1;
         this.§5w§ = param2;
      }
      
      function §-1§(param1:String) : void
      {
         this.§&I§ = param1;
      }
      
      function §"!Q§(param1:int) : void
      {
         this.§7!-§ = param1;
      }
      
      function §>"-§(param1:DisplayObject) : void
      {
         this.§!N§ = param1;
      }
      
      function §]y§(param1:Number) : void
      {
         this.§3!&§ = param1;
      }
   }
}
