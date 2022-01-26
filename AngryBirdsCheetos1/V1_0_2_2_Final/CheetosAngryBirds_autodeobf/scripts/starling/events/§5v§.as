package starling.events
{
   import §]@§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §5v§
   {
      
      private static var §1![§:Matrix = new Matrix();
       
      
      private var §,Z§:int;
      
      private var §^![§:Number;
      
      private var §=!6§:Number;
      
      private var §5!§:Number;
      
      private var §3I§:Number;
      
      private var §`h§:int;
      
      private var §'!J§:String;
      
      private var §`!^§:DisplayObject;
      
      private var §9z§:Number;
      
      public function §5v§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§,Z§ = param1;
         this.§^![§ = this.§5!§ = param2;
         this.§=!6§ = this.§3I§ = param3;
         this.§`h§ = 0;
         this.§'!J§ = param4;
         this.§`!^§ = param5;
      }
      
      public function § d§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^![§,this.§=!6§);
         this.§`!^§.root.§=!;§(param1,§1![§);
         return §1![§.transformPoint(_loc2_);
      }
      
      public function §=L§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5!§,this.§3I§);
         this.§`!^§.root.§=!;§(param1,§1![§);
         return §1![§.transformPoint(_loc2_);
      }
      
      public function clone() : §5v§
      {
         var _loc1_:§5v§ = new §5v§(this.§,Z§,this.§^![§,this.§=!6§,this.§'!J§,this.§`!^§);
         _loc1_.§5!§ = this.§5!§;
         _loc1_.§3I§ = this.§3I§;
         _loc1_.§`h§ = this.§`h§;
         _loc1_.§9z§ = this.§9z§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§,Z§;
      }
      
      public function get globalX() : Number
      {
         return this.§^![§;
      }
      
      public function get globalY() : Number
      {
         return this.§=!6§;
      }
      
      public function get §`!-§() : Number
      {
         return this.§5!§;
      }
      
      public function get §;!K§() : Number
      {
         return this.§3I§;
      }
      
      public function get §!!8§() : int
      {
         return this.§`h§;
      }
      
      public function get phase() : String
      {
         return this.§'!J§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§`!^§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9z§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§5!§ = this.§^![§;
         this.§3I§ = this.§=!6§;
         this.§^![§ = param1;
         this.§=!6§ = param2;
      }
      
      function §^E§(param1:String) : void
      {
         this.§'!J§ = param1;
      }
      
      function § N§(param1:int) : void
      {
         this.§`h§ = param1;
      }
      
      function §&2§(param1:DisplayObject) : void
      {
         this.§`!^§ = param1;
      }
      
      function §^!3§(param1:Number) : void
      {
         this.§9z§ = param1;
      }
   }
}
