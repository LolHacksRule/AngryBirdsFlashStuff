package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2World;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §%!"§ extends §&Y§
   {
      
      public static const §6!X§:Number = 0.3;
       
      
      private var §?T§:Boolean = false;
      
      private var §0P§:Number = 0;
      
      public function §%!"§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §?!T§ = param11;
         §1!7§.limitMultiplier = §6!X§;
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc2_:String = !!this.§?T§ ? §>p§.§#!J§ : §>p§.§@!J§;
         if(§?!T§ == "")
         {
            param1.§-M§(_loc2_,§=!%§.§2k§,§>p§.§>b§,§63§().GetPosition().x,§63§().GetPosition().y - 1,2000,"",§>p§.§4?§);
         }
         else
         {
            param1.§;4§(§?!T§,_loc2_,§=!%§.§2k§,§>p§.§>b§,§63§().GetPosition().x,§63§().GetPosition().y - 1,2000,"",§>p§.§4?§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§?T§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§0P§ > 0)
         {
            this.§0P§ -= param1;
            §+!j§.mTryToScream = §7!r§.§<!c§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §0"!§() : void
      {
         this.§0P§ = §2!y§.§-!k§;
         §+!j§.mTryToScream = §7!r§.§<!c§;
         playScreamingSoundEffect();
      }
   }
}
