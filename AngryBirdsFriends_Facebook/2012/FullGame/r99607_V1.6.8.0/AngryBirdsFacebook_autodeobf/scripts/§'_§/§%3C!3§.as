package §'_§
{
   import § !k§.b2World;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§[!;§;
   import §3,§.§`a§;
   import §]&§.Sprite;
   
   public class §<!3§ extends §@1§
   {
      
      public static const §["6§:Number = 0.3;
       
      
      private var §[@§:Boolean = false;
      
      private var §="9§:Number = 0;
      
      public function §<!3§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §"!$§ = param11;
         §=!X§.limitMultiplier = §["6§;
      }
      
      override public function addDestructionParticles(param1:§,>§) : void
      {
         var _loc2_:String = !!this.§[@§ ? §5!$§.§@!L§ : §5!$§.§]^§;
         if(§"!$§ == "")
         {
            param1.§&!J§(_loc2_,§,>§.§^!<§,§5!$§.§3!G§,§2"7§().GetPosition().x,§2"7§().GetPosition().y - 1,2000,"",§5!$§.§7>§);
         }
         else
         {
            param1.§`K§(§"!$§,_loc2_,§,>§.§^!<§,§5!$§.§3!G§,§2"7§().GetPosition().x,§2"7§().GetPosition().y - 1,2000,"",§5!$§.§7>§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§[@§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§="9§ > 0)
         {
            this.§="9§ -= param1;
            §@!'§.mTryToScream = §5!;§.§9!8§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §<u§() : void
      {
         this.§="9§ = §`a§.§0!M§;
         §@!'§.mTryToScream = §5!;§.§9!8§;
         playScreamingSoundEffect();
      }
   }
}
