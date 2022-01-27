package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§=!Z§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §,K§ extends §^"3§
   {
      
      public static const §%!f§:Number = 1000;
      
      public static const §3"?§:Number = 500;
      
      public static const §;!+§:String = "yell";
      
      public static const §6!z§:String = "blink";
       
      
      protected var §!J§:Number = -1.0;
      
      protected var §?!T§:Number = -1.0;
      
      public function §,K§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §?"%§() : Boolean
      {
         return this.§?!T§ >= 0;
      }
      
      public function get §7!n§() : Boolean
      {
         return this.§!J§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§?"%§ && !this.§7!n§;
      }
      
      public function scream() : void
      {
         this.§!J§ = §%!f§;
         this.§?!T§ = -1;
         §"j§.setAnimation(§;!+§);
      }
      
      public function blink() : void
      {
         this.§?!T§ = §3"?§;
         this.§!J§ = -1;
         §"j§.setAnimation(§6!z§);
      }
      
      protected function normalize() : void
      {
         §"j§.setAnimation(§4!Z§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§7!n§)
         {
            this.§!J§ -= param1;
         }
         if(this.§?"%§)
         {
            this.§?!T§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §6!7§(§=!Z§.§?!r§);
      }
   }
}
