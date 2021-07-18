package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §5=§ extends §1!0§
   {
      
      public static const §<!p§:Number = 1000;
      
      public static const §%!d§:Number = 500;
      
      public static const §3P§:String = "yell";
      
      public static const §[_§:String = "blink";
       
      
      protected var §]M§:Number = -1.0;
      
      protected var §!!T§:Number = -1.0;
      
      public function §5=§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §`u§() : Boolean
      {
         return this.§!!T§ >= 0;
      }
      
      public function get §">§() : Boolean
      {
         return this.§]M§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§`u§ && !this.§">§;
      }
      
      public function scream() : void
      {
         this.§]M§ = §<!p§;
         this.§!!T§ = -1;
         §'%§.setAnimation(§3P§);
      }
      
      public function blink() : void
      {
         this.§!!T§ = §%!d§;
         this.§]M§ = -1;
         §'%§.setAnimation(§[_§);
      }
      
      protected function normalize() : void
      {
         §'%§.setAnimation(§,!Y§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§">§)
         {
            this.§]M§ -= param1;
         }
         if(this.§`u§)
         {
            this.§!!T§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §'!p§(§=C§.§@z§);
      }
   }
}
