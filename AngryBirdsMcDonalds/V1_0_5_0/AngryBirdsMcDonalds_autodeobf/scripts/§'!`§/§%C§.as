package §'!`§
{
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§7!k§;
   import §55§.§>![§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   
   public class §%C§ extends §]!§
   {
      
      public static const §8!S§:Number = 0.3;
       
      
      private var §%2§:Boolean = false;
      
      private var §2^§:Number = 0;
      
      public function §%C§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §8!8§ = param11;
         §`T§.limitMultiplier = §8!S§;
      }
      
      override public function addDestructionParticles(param1:§,!j§) : void
      {
         var _loc2_:String = !!this.§%2§ ? §3!f§.§?V§ : §3!f§.§;!R§;
         if(§8!8§ == "")
         {
            param1.§4!2§(_loc2_,§,!j§.§++§,§3!f§.§"![§,§&!p§().GetPosition().x,§&!p§().GetPosition().y - 1,2000,"",§3!f§.§<x§);
         }
         else
         {
            param1.§"_§(§8!8§,_loc2_,§,!j§.§++§,§3!f§.§"![§,§&!p§().GetPosition().x,§&!p§().GetPosition().y - 1,2000,"",§3!f§.§<x§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§%2§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§2^§ > 0)
         {
            this.§2^§ -= param1;
            §@!5§.mTryToScream = §-!W§.§3!]§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §&>§() : void
      {
         this.§2^§ = §7!k§.§]!9§;
         §@!5§.mTryToScream = §-!W§.§3!]§;
         playScreamingSoundEffect();
      }
   }
}
