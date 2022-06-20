package §&E§
{
   import §6!^§.b2Vec2;
   import §6"1§.b2Fixture;
   import §8m§.§@"M§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`!G§.§[!8§;
   
   public class §""1§ extends §]6§
   {
       
      
      private var §7"&§:Number = 0;
      
      private const §>s§:Number = 1500;
      
      private var §=i§:§[!8§;
      
      public function §""1§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §!"W§ += 0.5;
         if(§!"W§ > 360)
         {
            §!"W§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§=i§)
         {
            this.§=i§.§]"K§ = true;
            if(this.§7"&§ <= this.§>s§)
            {
               this.§7"&§ += param1;
               if(this.§=i§.getBody())
               {
                  this.§=i§.getBody().SetAwake(true);
                  this.§=i§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  §@"M§.§3"C§("FairyDust_Particle_1","ChannelMisc");
                  this.§+!&§();
                  §>R§.visible = false;
               }
            }
            if(this.§=i§.getBody())
            {
               this.§=i§.getBody().SetAwake(true);
            }
            this.§=i§.§]"K§ = false;
         }
         else
         {
            §?l§.§'h§.mLevelEngine.mWorld.§6N§(this.§##§,new b2Vec2(§4!K§,§7!#§));
         }
         return true;
      }
      
      private function §##§(param1:b2Fixture) : Boolean
      {
         var _loc2_:§[!8§ = null;
         if(param1.GetBody().GetUserData())
         {
            _loc2_ = param1.GetBody().GetUserData() as §[!8§;
            if(!this.§=i§ && _loc2_ && _loc2_.§`"4§() && _loc2_.§^!f§.§@x§ != "MISC_FAIRY_BLOCK_4X4")
            {
               this.§=i§ = _loc2_;
               return false;
            }
            if(_loc2_ && (_loc2_.isTexture() || _loc2_.isGround()))
            {
               §"$§.visible = false;
            }
         }
         return false;
      }
      
      private function §+!&§() : void
      {
         var _loc1_:§="@§ = §?l§.§'h§.particles as §="@§;
         var _loc2_:Number = this.§=i§.getBody().GetPosition().x;
         _loc2_ += this.§=e§(-2,2);
         var _loc3_:Number = this.§=i§.getBody().GetPosition().y;
         _loc3_ += this.§=e§(-2,2);
         var _loc4_:Number = Math.random() * 1;
         _loc1_.§@6§("PARTICLE_WONDERLAND_DUST",§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_,_loc3_,400,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,20,_loc4_,0.5);
      }
      
      private function §=e§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
