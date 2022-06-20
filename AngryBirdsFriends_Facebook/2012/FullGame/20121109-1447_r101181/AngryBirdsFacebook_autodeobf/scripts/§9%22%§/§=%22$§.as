package §9"%§
{
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§4"F§;
   import §9"!§.§9"3§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   
   public class §="$§ extends §#+§
   {
      
      public static const §>!e§:Number = 0.3;
       
      
      private var §9!-§:Boolean = false;
      
      private var §'!0§:Number = 0;
      
      public function §="$§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         § R§ = param11;
         §],§.limitMultiplier = §>!e§;
      }
      
      override public function addDestructionParticles(param1:§^!f§) : void
      {
         var _loc2_:String = !!this.§9!-§ ? §'G§.§?!s§ : §'G§.§9!>§;
         if(§ R§ == "")
         {
            param1.§;!u§(_loc2_,§^!f§.§>"F§,§'G§.§5!l§,§=!y§().GetPosition().x,§=!y§().GetPosition().y - 1,2000,"",§'G§.§0=§);
         }
         else
         {
            param1.§4!P§(§ R§,_loc2_,§^!f§.§>"F§,§'G§.§5!l§,§=!y§().GetPosition().x,§=!y§().GetPosition().y - 1,2000,"",§'G§.§0=§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§9!-§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§'!0§ > 0)
         {
            this.§'!0§ -= param1;
            §"!&§.mTryToScream = §#!D§.§%"$§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §4!B§() : void
      {
         this.§'!0§ = §4"F§.§4"E§;
         §"!&§.mTryToScream = §#!D§.§%"$§;
         playScreamingSoundEffect();
      }
   }
}
