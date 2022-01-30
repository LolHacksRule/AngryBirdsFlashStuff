package §="§
{
   import §4!s§.§%I§;
   import §4!s§.§7!$§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §^I§.Sprite;
   import §`]§.b2World;
   
   public class §+!w§ extends §#!&§
   {
      
      public static const §8!u§:Number = 0.3;
       
      
      private var §4!_§:Boolean = false;
      
      private var §4h§:Number = 0;
      
      public function §+!w§(param1:§="-§, param2:Sprite, param3:b2World, param4:§%I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §^Z§ = param11;
         § !g§.limitMultiplier = §8!u§;
      }
      
      override public function addDestructionParticles(param1:§3!8§) : void
      {
         var _loc2_:String = !!this.§4!_§ ? §7!0§.§+"%§ : §7!0§.§;!v§;
         if(§^Z§ == "")
         {
            param1.§`!N§(_loc2_,§3!8§.§^D§,§7!0§.§+!'§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§7!0§.§8!H§);
         }
         else
         {
            param1.§7!7§(§^Z§,_loc2_,§3!8§.§^D§,§7!0§.§+!'§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§7!0§.§8!H§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§4!_§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§4h§ > 0)
         {
            this.§4h§ -= param1;
            §7!w§.mTryToScream = §<!e§.§@!v§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §2"&§() : void
      {
         this.§4h§ = §7!$§.§'@§;
         §7!w§.mTryToScream = §<!e§.§@!v§;
         playScreamingSoundEffect();
      }
   }
}
