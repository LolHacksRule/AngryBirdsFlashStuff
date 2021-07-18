package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §-r§.§!"M§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §8!4§ extends §[!8§
   {
       
      
      private var §8j§:Boolean = false;
      
      public function §8!4§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:int = 1 + Math.floor(Math.random() * 3);
         this.§8j§ = false;
         super(param1,param2,param3,param4,param5,"MISC_WONDERLAND_EGG_" + _loc12_,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§ d§ <= 0 && !this.§8j§)
         {
            this.§6^§();
            (container.mLevelMain.getController() as §!"M§).§3!_§(§@x§);
            this.§8j§ = true;
         }
         return § d§;
      }
      
      private function §6^§() : void
      {
         var _loc1_:§="@§ = §?l§.§'h§.particles as §="@§;
         _loc1_.§@6§("WONDERLAND_MISC_SPLASH",§0i§.§^"X§,§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§0i§.§?"Z§,0,0,0,0,1.5,15,true);
      }
   }
}
