package §!!,§
{
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.Sprite;
   import §9s§.§^9§;
   import §9s§.§^u§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;L§ extends §^=§
   {
      
      public static const §-d§:Number = 0.3;
       
      
      private var §4+§:Boolean = false;
      
      private var §[!<§:Number = 0;
      
      public function §;L§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §-a§ = param11;
         §[!H§.limitMultiplier = §-d§;
      }
      
      override public function addDestructionParticles(param1:§5O§) : void
      {
         var _loc2_:String = !!this.§4+§ ? §7D§.§[U§ : §7D§.§0!N§;
         if(§-a§ == "")
         {
            param1.§3S§(_loc2_,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.§5B§,§ 7§().GetPosition().x,§ 7§().GetPosition().y - 1,2000,"",§7D§.§;_§);
         }
         else
         {
            param1.§5!&§(§-a§,_loc2_,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.§5B§,§ 7§().GetPosition().x,§ 7§().GetPosition().y - 1,2000,"",§7D§.§;_§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§4+§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§[!<§ > 0)
         {
            this.§[!<§ -= param1;
            §!t§.mTryToScream = §?q§.§26§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function § f§() : void
      {
         this.§[!<§ = §^u§.§4>§;
         §!t§.mTryToScream = §?q§.§26§;
         playScreamingSoundEffect();
      }
   }
}
