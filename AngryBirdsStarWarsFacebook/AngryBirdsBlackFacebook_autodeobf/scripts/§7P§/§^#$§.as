package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §^#$§ extends §&#=§
   {
      
      public static const §`"[§:Number = 1000;
      
      public static const §0!p§:Number = 500;
      
      public static const §3"=§:String = "yell";
      
      public static const §^?§:String = "blink";
       
      
      protected var §=P§:Number = -1.0;
      
      protected var §7#N§:Number = -1.0;
      
      public function §^#$§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §5!+§() : Boolean
      {
         return this.§7#N§ >= 0;
      }
      
      public function get §;e§() : Boolean
      {
         return this.§=P§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§5!+§ && !this.§;e§;
      }
      
      public function scream() : void
      {
         this.§=P§ = §`"[§;
         this.§7#N§ = -1;
         §2N§.setAnimation(§3"=§,false);
      }
      
      public function blink() : void
      {
         this.§7#N§ = §0!p§;
         this.§=P§ = -1;
         §2N§.setAnimation(§^?§,false);
      }
      
      protected function normalize() : void
      {
         §2N§.setAnimation(§'%§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§;e§)
         {
            this.§=P§ -= param1;
         }
         if(this.§5!+§)
         {
            this.§7#N§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §[v§(§'#2§.§<&§);
      }
   }
}
