package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§"!Y§;
   import §;"=§.§]"<§;
   
   public class §'y§ extends §5,§
   {
      
      public static const §["@§:Number = 1000;
      
      public static const §>!@§:Number = 500;
      
      public static const §+_§:String = "yell";
      
      public static const §`u§:String = "blink";
       
      
      protected var §3c§:Number = -1.0;
      
      protected var §9X§:Number = -1.0;
      
      public function §'y§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §-q§() : Boolean
      {
         return this.§9X§ >= 0;
      }
      
      public function get §#P§() : Boolean
      {
         return this.§3c§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§-q§ && !this.§#P§;
      }
      
      public function scream() : void
      {
         this.§3c§ = §["@§;
         this.§9X§ = -1;
         §&"C§.setAnimation(§+_§);
      }
      
      public function blink() : void
      {
         this.§9X§ = §>!@§;
         this.§3c§ = -1;
         §&"C§.setAnimation(§`u§);
      }
      
      protected function normalize() : void
      {
         §&"C§.setAnimation(§+!d§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§#P§)
         {
            this.§3c§ -= param1;
         }
         if(this.§-q§)
         {
            this.§9X§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §<">§(§"!Y§.§;O§);
      }
   }
}
