package §^!$§
{
   import §&!9§.Sprite;
   import §&F§.§-w§;
   import §&F§.§>!2§;
   import §<!L§.b2World;
   import §?=§.§&j§;
   import §?=§.§8S§;
   
   public class § !L§ extends §6!3§
   {
      
      public static const §4v§:Number = 0.3;
       
      
      private var §`!`§:Boolean = false;
      
      private var §%q§:Number = 0;
      
      public function § !L§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §#]§ = param11;
         § !N§.limitMultiplier = §4v§;
      }
      
      override public function addDestructionParticles(param1:§&j§) : void
      {
         var _loc2_:String = !!this.§`!`§ ? §8S§.§<!=§ : §8S§.§94§;
         if(§#]§ == "")
         {
            param1.§<§(_loc2_,§&j§.§`W§,§8S§.§?m§,§#!!§().GetPosition().x,§#!!§().GetPosition().y - 1,2000,"",§8S§.§95§);
         }
         else
         {
            param1.§@O§(§#]§,_loc2_,§&j§.§`W§,§8S§.§?m§,§#!!§().GetPosition().x,§#!!§().GetPosition().y - 1,2000,"",§8S§.§95§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§`!`§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§%q§ > 0)
         {
            this.§%q§ -= param1;
            §^!9§.mTryToScream = §4<§.§]7§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §5!K§() : void
      {
         this.§%q§ = §-w§.§1b§;
         §^!9§.mTryToScream = §4<§.§]7§;
         playScreamingSoundEffect();
      }
   }
}
