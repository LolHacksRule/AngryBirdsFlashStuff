package starling.events
{
   import §`L§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<!,§
   {
      
      private static var §7V§:Matrix = new Matrix();
       
      
      private var §,2§:int;
      
      private var §#"9§:Number;
      
      private var §!! §:Number;
      
      private var §5!a§:Number;
      
      private var §''§:Number;
      
      private var §<n§:int;
      
      private var §else §:String;
      
      private var §;Z§:DisplayObject;
      
      private var §,!f§:Number;
      
      public function §<!,§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§,2§ = param1;
         this.§#"9§ = this.§5!a§ = param2;
         this.§!! § = this.§''§ = param3;
         this.§<n§ = 0;
         this.§else § = param4;
         this.§;Z§ = param5;
      }
      
      public function §8"5§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§#"9§,this.§!! §);
         this.§;Z§.root.§=q§(param1,§7V§);
         return §7V§.transformPoint(_loc2_);
      }
      
      public function §]D§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5!a§,this.§''§);
         this.§;Z§.root.§=q§(param1,§7V§);
         return §7V§.transformPoint(_loc2_);
      }
      
      public function clone() : §<!,§
      {
         var _loc1_:§<!,§ = new §<!,§(this.§,2§,this.§#"9§,this.§!! §,this.§else §,this.§;Z§);
         _loc1_.§5!a§ = this.§5!a§;
         _loc1_.§''§ = this.§''§;
         _loc1_.§<n§ = this.§<n§;
         _loc1_.§,!f§ = this.§,!f§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§,2§;
      }
      
      public function get globalX() : Number
      {
         return this.§#"9§;
      }
      
      public function get globalY() : Number
      {
         return this.§!! §;
      }
      
      public function get §?E§() : Number
      {
         return this.§5!a§;
      }
      
      public function get §7!^§() : Number
      {
         return this.§''§;
      }
      
      public function get §;!w§() : int
      {
         return this.§<n§;
      }
      
      public function get phase() : String
      {
         return this.§else §;
      }
      
      public function get target() : DisplayObject
      {
         return this.§;Z§;
      }
      
      public function get timestamp() : Number
      {
         return this.§,!f§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§5!a§ = this.§#"9§;
         this.§''§ = this.§!! §;
         this.§#"9§ = param1;
         this.§!! § = param2;
      }
      
      function §>!6§(param1:String) : void
      {
         this.§else § = param1;
      }
      
      function §>K§(param1:int) : void
      {
         this.§<n§ = param1;
      }
      
      function §=!#§(param1:DisplayObject) : void
      {
         this.§;Z§ = param1;
      }
      
      function §;!I§(param1:Number) : void
      {
         this.§,!f§ = param1;
      }
   }
}
