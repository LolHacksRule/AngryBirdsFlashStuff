package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §4!<§.§^!Z§;
   import §6"1§.b2World;
   
   public class §true § extends §<N§
   {
      
      public static const §,"A§:Number = 0.3;
       
      
      private var §'"J§:Boolean = false;
      
      private var §+"P§:Number = 0;
      
      public function §true §(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §0"9§ = param11;
         §?"!§.limitMultiplier = §,"A§;
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc2_:String = !!this.§'"J§ ? §0i§.§^">§ : §0i§.§^"X§;
         if(§0"9§ == "")
         {
            param1.§"!J§(_loc2_,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.§2L§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§0i§.§?"Z§);
         }
         else
         {
            param1.§@6§(§0"9§,_loc2_,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.§2L§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§0i§.§?"Z§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§'"J§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§+"P§ > 0)
         {
            this.§+"P§ -= param1;
            §2!8§.mTryToScream = §+T§.§<!t§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §7!;§() : void
      {
         this.§+"P§ = §^!Z§.§1"D§;
         §2!8§.mTryToScream = §+T§.§<!t§;
         playScreamingSoundEffect();
      }
   }
}
