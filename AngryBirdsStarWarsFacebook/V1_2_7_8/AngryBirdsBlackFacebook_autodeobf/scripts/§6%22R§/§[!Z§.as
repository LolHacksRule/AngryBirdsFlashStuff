package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&s§;
   import §>P§.§=!,§;
   
   public class §[!Z§ extends §4!w§
   {
      
      public static const §3!J§:Number = 1000;
      
      public static const §1!]§:Number = 500;
      
      public static const §7!;§:String = "yell";
      
      public static const § !O§:String = "blink";
       
      
      protected var §=R§:Number = -1.0;
      
      protected var §7?§:Number = -1.0;
      
      public function §[!Z§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §!!r§() : Boolean
      {
         return this.§7?§ >= 0;
      }
      
      public function get §"!J§() : Boolean
      {
         return this.§=R§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§!!r§ && !this.§"!J§;
      }
      
      public function scream() : void
      {
         this.§=R§ = §3!J§;
         this.§7?§ = -1;
         §]h§.setAnimation(§7!;§,false);
      }
      
      public function blink() : void
      {
         this.§7?§ = §1!]§;
         this.§=R§ = -1;
         §]h§.setAnimation(§ !O§,false);
      }
      
      protected function normalize() : void
      {
         §]h§.setAnimation(§-"§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§"!J§)
         {
            this.§=R§ -= param1;
         }
         if(this.§!!r§)
         {
            this.§7?§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §#!D§(§&s§.§8"_§);
      }
   }
}
