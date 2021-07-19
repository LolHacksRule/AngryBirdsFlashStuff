package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §,§.§?9§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §^a§.Sprite;
   
   public class §7q§ extends §-!K§
   {
      
      public static const §`!9§:Number = 0.3;
       
      
      private var §,4§:Boolean = false;
      
      private var §]!]§:Number = 0;
      
      public function §7q§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §]'§ = param11;
         final.limitMultiplier = §`!9§;
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc2_:String = !!this.§,4§ ? §7!?§.§!o§ : §7!?§.§7V§;
         if(§]'§ == "")
         {
            param1.addParticle(_loc2_,§do§.§+!c§,§7!?§.§2B§,§`e§().GetPosition().x,§`e§().GetPosition().y - 1,2000,"",§7!?§.§=6§);
         }
         else
         {
            param1.§2!L§(§]'§,_loc2_,§do§.§+!c§,§7!?§.§2B§,§`e§().GetPosition().x,§`e§().GetPosition().y - 1,2000,"",§7!?§.§=6§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§,4§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§]!]§ > 0)
         {
            this.§]!]§ -= param1;
            §5d§.mTryToScream = §%$§.§&!D§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §'![§() : void
      {
         this.§]!]§ = §?9§.§]m§;
         §5d§.mTryToScream = §%$§.§&!D§;
         playScreamingSoundEffect();
      }
   }
}
