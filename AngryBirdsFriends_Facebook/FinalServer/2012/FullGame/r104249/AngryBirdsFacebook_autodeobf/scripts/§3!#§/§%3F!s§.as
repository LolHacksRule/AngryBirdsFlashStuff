package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§3`§;
   import §0!2§.§5"L§;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §]!v§.Sprite;
   
   public class §?!s§ extends §0"7§
   {
      
      public static const §%!0§:Number = 0.3;
       
      
      private var §&!&§:Boolean = false;
      
      private var §7"D§:Number = 0;
      
      public function §?!s§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §2!L§ = param11;
         §8"+§.limitMultiplier = §%!0§;
      }
      
      override public function addDestructionParticles(param1:§3!p§) : void
      {
         var _loc2_:String = !!this.§&!&§ ? §4! §.§;!c§ : §4! §.§+Y§;
         if(§2!L§ == "")
         {
            param1.§`"6§(_loc2_,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.§,!]§,§`!y§().GetPosition().x,§`!y§().GetPosition().y - 1,2000,"",§4! §.§-p§);
         }
         else
         {
            param1.§-!O§(§2!L§,_loc2_,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.§,!]§,§`!y§().GetPosition().x,§`!y§().GetPosition().y - 1,2000,"",§4! §.§-p§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§&!&§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§7"D§ > 0)
         {
            this.§7"D§ -= param1;
            §<!K§.mTryToScream = §38§.§;""§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §"!Q§() : void
      {
         this.§7"D§ = §3`§.§?I§;
         §<!K§.mTryToScream = §38§.§;""§;
         playScreamingSoundEffect();
      }
   }
}
