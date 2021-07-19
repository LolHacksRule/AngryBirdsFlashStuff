package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §5!;§ extends §@_§
   {
      
      public static const §`!I§:Number = 1000;
      
      public static const §@""§:Number = 500;
      
      public static const §;1§:String = "yell";
      
      public static const §>!d§:String = "blink";
       
      
      protected var §!!g§:Number = -1.0;
      
      protected var §+'§:Number = -1.0;
      
      public function §5!;§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §7!s§() : Boolean
      {
         return this.§+'§ >= 0;
      }
      
      public function get §+!3§() : Boolean
      {
         return this.§!!g§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§7!s§ && !this.§+!3§;
      }
      
      public function scream() : void
      {
         this.§!!g§ = §`!I§;
         this.§+'§ = -1;
         §=K§.setAnimation(§;1§,false);
      }
      
      public function blink() : void
      {
         this.§+'§ = §@""§;
         this.§!!g§ = -1;
         §=K§.setAnimation(§>!d§,false);
      }
      
      protected function normalize() : void
      {
         §=K§.setAnimation(§&P§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§+!3§)
         {
            this.§!!g§ -= param1;
         }
         if(this.§7!s§)
         {
            this.§+'§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §8!U§(§89§.§3!M§);
      }
   }
}
