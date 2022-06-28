package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §#V§.b2World;
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §7!B§.Sprite;
   
   public class §=B§ extends §72§
   {
      
      public static const §=![§:Number = 0.3;
       
      
      private var §6H§:Boolean = false;
      
      private var §6n§:Number = 0;
      
      public function §=B§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §&;§ = param11;
         §[!e§.limitMultiplier = §=![§;
      }
      
      override public function addDestructionParticles(param1:§^z§) : void
      {
         var _loc2_:String = !!this.§6H§ ? §9!B§.§^8§ : §9!B§.§]!$§;
         if(§&;§ == "")
         {
            param1.§#Z§(_loc2_,§^z§.§!!B§,§9!B§.§6I§,§3J§().GetPosition().x,§3J§().GetPosition().y - 1,2000,"",§9!B§.§2#§);
         }
         else
         {
            param1.§2!c§(§&;§,_loc2_,§^z§.§!!B§,§9!B§.§6I§,§3J§().GetPosition().x,§3J§().GetPosition().y - 1,2000,"",§9!B§.§2#§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§6H§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§6n§ > 0)
         {
            this.§6n§ -= param1;
            §7![§.mTryToScream = § 6§.§8!3§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §6!5§() : void
      {
         this.§6n§ = §,L§.§2!P§;
         §7![§.mTryToScream = § 6§.§8!3§;
         playScreamingSoundEffect();
      }
   }
}
