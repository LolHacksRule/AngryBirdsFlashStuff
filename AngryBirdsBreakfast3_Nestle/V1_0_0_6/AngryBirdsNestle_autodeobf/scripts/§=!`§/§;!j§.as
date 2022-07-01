package §=!`§
{
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   
   public class §;!j§ extends §^^§
   {
      
      public static const §5I§:Number = 1000;
      
      public static const §6!H§:Number = 500;
      
      public static const §%]§:String = "yell";
      
      public static const §@J§:String = "blink";
       
      
      protected var §1!$§:Number = -1.0;
      
      protected var §1!'§:Number = -1.0;
      
      public function §;!j§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §3!G§() : Boolean
      {
         return this.§1!'§ >= 0;
      }
      
      public function get §5!;§() : Boolean
      {
         return this.§1!$§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§3!G§ && !this.§5!;§;
      }
      
      public function scream() : void
      {
         this.§1!$§ = §5I§;
         this.§1!'§ = -1;
         §8!p§.setAnimation(§%]§);
      }
      
      public function blink() : void
      {
         this.§1!'§ = §6!H§;
         this.§1!$§ = -1;
         §8!p§.setAnimation(§@J§);
      }
      
      protected function normalize() : void
      {
         this.§1!'§ = -1;
         this.§1!$§ = -1;
         §8!p§.setAnimation(§0U§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§5!;§)
         {
            this.§1!$§ -= param1;
         }
         if(this.§3!G§)
         {
            this.§1!'§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §&!z§(§;#§.§<!%§);
      }
   }
}
