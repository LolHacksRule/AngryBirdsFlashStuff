package §=!7§
{
   import §0m§.b2Vec2;
   import §8§.§#$+§;
   import §=#n§.b2Fixture;
   import §?§.§>"$§;
   import §@"§.§&!=§;
   import §@"§.§]!-§;
   import §[#a§.§="@§;
   
   public class §6O§ extends §,"?§
   {
       
      
      private var §%"o§:Number = 0;
      
      private const §!"Y§:Number = 1500;
      
      private var §<!m§:§="@§;
      
      public function §6O§(param1:§]!-§, param2:§&!=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §%##§ += 0.5;
         if(§%##§ > 360)
         {
            §%##§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§<!m§)
         {
            this.§<!m§.§]B§ = true;
            if(this.§%"o§ <= this.§!"Y§)
            {
               this.§%"o§ += param1;
               if(this.§<!m§.getBody())
               {
                  this.§<!m§.getBody().SetAwake(true);
                  this.§<!m§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  §#$+§.playSound("FairyDust_Particle_1","ChannelMisc");
                  this.§3!I§();
                  displayObject.visible = false;
               }
            }
            if(this.§<!m§.getBody())
            {
               this.§<!m§.getBody().SetAwake(true);
            }
            this.§<!m§.§]B§ = false;
         }
         else
         {
            §>"$§.§3#'§.mLevelEngine.mWorld.§3!`§(this.§;#9§,new b2Vec2(§+!5§,§'! §));
         }
         return true;
      }
      
      private function §;#9§(param1:b2Fixture) : Boolean
      {
         var _loc2_:§="@§ = null;
         if(param1.GetBody().GetUserData())
         {
            _loc2_ = param1.GetBody().GetUserData() as §="@§;
            if(!this.§<!m§ && _loc2_ && _loc2_.isDamageAwardingScore() && _loc2_.levelItem.itemName != "MISC_FAIRY_BLOCK_4X4")
            {
               this.§<!m§ = _loc2_;
               return false;
            }
            if(_loc2_ && (_loc2_.§?#C§() || _loc2_.§=P§()))
            {
               displayObject.visible = false;
            }
         }
         return false;
      }
      
      private function §3!I§() : void
      {
         var _loc1_:§ #f§ = §>"$§.§3#'§.particles as § #f§;
         var _loc2_:Number = this.§<!m§.getBody().GetPosition().x;
         _loc2_ += this.§?#1§(-2,2);
         var _loc3_:Number = this.§<!m§.getBody().GetPosition().y;
         _loc3_ += this.§?#1§(-2,2);
         var _loc4_:Number = Math.random() * 1;
         _loc1_.addSimpleParticle("PARTICLE_WONDERLAND_DUST",§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_,_loc3_,400,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,20,_loc4_,0.5);
      }
      
      private function §?#1§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
