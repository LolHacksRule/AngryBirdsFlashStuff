package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §90§.Sprite;
   import §`!4§.§6l§;
   import §`!4§.§=Z§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § !E§ extends §!]§
   {
      
      public static const §3!2§:Number = 0.3;
       
      
      private var §#r§:Boolean = false;
      
      private var §"!9§:Number = 0;
      
      public function § !E§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §"!?§ = param11;
         §!!3§.limitMultiplier = §3!2§;
      }
      
      override public function addDestructionParticles(param1:§6!C§) : void
      {
         var _loc2_:String = !!this.§#r§ ? §@!<§.§9G§ : §@!<§.§%F§;
         if(§"!?§ == "")
         {
            param1.§-!$§(_loc2_,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.§5!,§,§<!9§().GetPosition().x,§<!9§().GetPosition().y - 1,2000,"",§@!<§.§@!L§);
         }
         else
         {
            param1.§1!7§(§"!?§,_loc2_,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.§5!,§,§<!9§().GetPosition().x,§<!9§().GetPosition().y - 1,2000,"",§@!<§.§@!L§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§#r§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§"!9§ > 0)
         {
            this.§"!9§ -= param1;
            §2W§.mTryToScream = §=0§.§<`§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §<§() : void
      {
         this.§"!9§ = §=Z§.§7!3§;
         §2W§.mTryToScream = §=0§.§<`§;
         playScreamingSoundEffect();
      }
   }
}
