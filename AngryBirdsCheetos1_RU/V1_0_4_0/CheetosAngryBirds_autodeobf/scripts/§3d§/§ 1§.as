package §3d§
{
   import §0V§.§6d§;
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §9t§.b2World;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   
   public class § 1§ extends §0a§
   {
      
      public static const §"<§:Number = 0.3;
       
      
      private var §=h§:Boolean = false;
      
      private var §!!=§:Number = 0;
      
      public function § 1§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §6j§ = param11;
         §9h§.limitMultiplier = §"<§;
      }
      
      override public function addDestructionParticles(param1:§"^§) : void
      {
         var _loc2_:String = !!this.§=h§ ? §7!%§.§81§ : §7!%§.§#!<§;
         if(§6j§ == "")
         {
            param1.addParticle(_loc2_,§"^§.§<!L§,§7!%§.§%<§,§=!,§().GetPosition().x,§=!,§().GetPosition().y - 1,2000,"",§7!%§.§4!"§);
         }
         else
         {
            param1.§<w§(§6j§,_loc2_,§"^§.§<!L§,§7!%§.§%<§,§=!,§().GetPosition().x,§=!,§().GetPosition().y - 1,2000,"",§7!%§.§4!"§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§=h§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§!!=§ > 0)
         {
            this.§!!=§ -= param1;
            §5!@§.mTryToScream = §,Q§.§<!&§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §&$§() : void
      {
         this.§!!=§ = §6d§.§-G§;
         §5!@§.mTryToScream = §,Q§.§<!&§;
         playScreamingSoundEffect();
      }
   }
}
