package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §<L§.§!!G§;
   import §<L§.§6H§;
   
   public class §-!2§ extends §^!P§
   {
      
      public static const §'!C§:Number = 0.3;
       
      
      private var §2n§:Boolean = false;
      
      private var §;a§:Number = 0;
      
      public function §-!2§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §?3§ = param11;
         §8g§.limitMultiplier = §'!C§;
      }
      
      override public function addDestructionParticles(param1:§'F§) : void
      {
         var _loc2_:String = !!this.§2n§ ? §9!-§.§<<§ : §9!-§.§'#§;
         if(§?3§ == "")
         {
            param1.§]!5§(_loc2_,§'F§.§8e§,§9!-§.§2q§,§;G§().GetPosition().x,§;G§().GetPosition().y - 1,2000,"",§9!-§.§4!X§);
         }
         else
         {
            param1.§if§(§?3§,_loc2_,§'F§.§8e§,§9!-§.§2q§,§;G§().GetPosition().x,§;G§().GetPosition().y - 1,2000,"",§9!-§.§4!X§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§2n§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§;a§ > 0)
         {
            this.§;a§ -= param1;
            §<i§.mTryToScream = §+!+§.§'!0§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §-!k§() : void
      {
         this.§;a§ = §6H§.§[Q§;
         §<i§.mTryToScream = §+!+§.§'!0§;
         playScreamingSoundEffect();
      }
   }
}
