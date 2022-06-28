package starling.events
{
   import §'!9§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §`i§
   {
      
      private static var §5g§:Matrix = new Matrix();
       
      
      private var §"!=§:int;
      
      private var § true§:Number;
      
      private var §@!^§:Number;
      
      private var §%a§:Number;
      
      private var §;!&§:Number;
      
      private var §-q§:int;
      
      private var §]6§:String;
      
      private var §0!R§:DisplayObject;
      
      private var §#5§:Number;
      
      public function §`i§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§"!=§ = param1;
         this.§ true§ = this.§%a§ = param2;
         this.§@!^§ = this.§;!&§ = param3;
         this.§-q§ = 0;
         this.§]6§ = param4;
         this.§0!R§ = param5;
      }
      
      public function §!!W§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ true§,this.§@!^§);
         this.§0!R§.root.§^2§(param1,§5g§);
         return §5g§.transformPoint(_loc2_);
      }
      
      public function §?!t§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%a§,this.§;!&§);
         this.§0!R§.root.§^2§(param1,§5g§);
         return §5g§.transformPoint(_loc2_);
      }
      
      public function clone() : §`i§
      {
         var _loc1_:§`i§ = new §`i§(this.§"!=§,this.§ true§,this.§@!^§,this.§]6§,this.§0!R§);
         _loc1_.§%a§ = this.§%a§;
         _loc1_.§;!&§ = this.§;!&§;
         _loc1_.§-q§ = this.§-q§;
         _loc1_.§#5§ = this.§#5§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§"!=§;
      }
      
      public function get globalX() : Number
      {
         return this.§ true§;
      }
      
      public function get globalY() : Number
      {
         return this.§@!^§;
      }
      
      public function get §&x§() : Number
      {
         return this.§%a§;
      }
      
      public function get §;!M§() : Number
      {
         return this.§;!&§;
      }
      
      public function get §>+§() : int
      {
         return this.§-q§;
      }
      
      public function get phase() : String
      {
         return this.§]6§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§0!R§;
      }
      
      public function get timestamp() : Number
      {
         return this.§#5§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§%a§ = this.§ true§;
         this.§;!&§ = this.§@!^§;
         this.§ true§ = param1;
         this.§@!^§ = param2;
      }
      
      function §=I§(param1:String) : void
      {
         this.§]6§ = param1;
      }
      
      function §?x§(param1:int) : void
      {
         this.§-q§ = param1;
      }
      
      function §`"§(param1:DisplayObject) : void
      {
         this.§0!R§ = param1;
      }
      
      function §3!c§(param1:Number) : void
      {
         this.§#5§ = param1;
      }
   }
}
