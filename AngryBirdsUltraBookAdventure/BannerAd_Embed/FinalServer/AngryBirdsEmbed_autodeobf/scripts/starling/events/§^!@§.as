package starling.events
{
   import §9W§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §^!@§
   {
      
      private static var §[9§:Matrix = new Matrix();
       
      
      private var §1!§:int;
      
      private var §>_§:Number;
      
      private var §]!!§:Number;
      
      private var §-S§:Number;
      
      private var §[!=§:Number;
      
      private var §-O§:int;
      
      private var §8K§:String;
      
      private var §6[§:DisplayObject;
      
      private var §]!%§:Number;
      
      public function §^!@§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§1!§ = param1;
         this.§>_§ = this.§-S§ = param2;
         this.§]!!§ = this.§[!=§ = param3;
         this.§-O§ = 0;
         this.§8K§ = param4;
         this.§6[§ = param5;
      }
      
      public function §5I§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§>_§,this.§]!!§);
         this.§6[§.root.§8w§(param1,§[9§);
         return §[9§.transformPoint(_loc2_);
      }
      
      public function §<!<§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§-S§,this.§[!=§);
         this.§6[§.root.§8w§(param1,§[9§);
         return §[9§.transformPoint(_loc2_);
      }
      
      public function clone() : §^!@§
      {
         var _loc1_:§^!@§ = new §^!@§(this.§1!§,this.§>_§,this.§]!!§,this.§8K§,this.§6[§);
         _loc1_.§-S§ = this.§-S§;
         _loc1_.§[!=§ = this.§[!=§;
         _loc1_.§-O§ = this.§-O§;
         _loc1_.§]!%§ = this.§]!%§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§1!§;
      }
      
      public function get globalX() : Number
      {
         return this.§>_§;
      }
      
      public function get globalY() : Number
      {
         return this.§]!!§;
      }
      
      public function get §;B§() : Number
      {
         return this.§-S§;
      }
      
      public function get §^!G§() : Number
      {
         return this.§[!=§;
      }
      
      public function get §+T§() : int
      {
         return this.§-O§;
      }
      
      public function get phase() : String
      {
         return this.§8K§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§6[§;
      }
      
      public function get timestamp() : Number
      {
         return this.§]!%§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§-S§ = this.§>_§;
         this.§[!=§ = this.§]!!§;
         this.§>_§ = param1;
         this.§]!!§ = param2;
      }
      
      function § !B§(param1:String) : void
      {
         this.§8K§ = param1;
      }
      
      function §;!;§(param1:int) : void
      {
         this.§-O§ = param1;
      }
      
      function §`g§(param1:DisplayObject) : void
      {
         this.§6[§ = param1;
      }
      
      function §1N§(param1:Number) : void
      {
         this.§]!%§ = param1;
      }
   }
}
