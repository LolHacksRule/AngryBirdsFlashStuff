package §[>§
{
   import §4]§.b2World;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.Sprite;
   import §9T§.§'_§;
   import §9T§.§=!^§;
   
   public class §,!?§ extends §[!;§
   {
      
      public static const §@x§:Number = 0.3;
       
      
      private var § !-§:Boolean = false;
      
      private var §&N§:Number = 0;
      
      public function §,!?§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §<v§ = param11;
         §[!U§.limitMultiplier = §@x§;
      }
      
      override public function addDestructionParticles(param1:§2!4§) : void
      {
         var _loc2_:String = !!this.§ !-§ ? §%v§.§"!U§ : §%v§.§-;§;
         if(§<v§ == "")
         {
            param1.addParticle(_loc2_,§2!4§.§8!Q§,§%v§.§'c§,§7!<§().GetPosition().x,§7!<§().GetPosition().y - 1,2000,"",§%v§.§0e§);
         }
         else
         {
            param1.§,!>§(§<v§,_loc2_,§2!4§.§8!Q§,§%v§.§'c§,§7!<§().GetPosition().x,§7!<§().GetPosition().y - 1,2000,"",§%v§.§0e§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§ !-§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§&N§ > 0)
         {
            this.§&N§ -= param1;
            §#!9§.mTryToScream = §]S§.§]T§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §!!K§() : void
      {
         this.§&N§ = §'_§.§ !Z§;
         §#!9§.mTryToScream = §]S§.§]T§;
         playScreamingSoundEffect();
      }
   }
}
