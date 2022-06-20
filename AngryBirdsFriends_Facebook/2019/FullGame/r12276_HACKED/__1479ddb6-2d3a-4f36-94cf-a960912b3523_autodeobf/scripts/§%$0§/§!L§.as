package §%$0§
{
   import § "v§.§4$4§;
   import §+!n§.§+!p§;
   import §3#h§.b2Fixture;
   import §6!R§.b2Vec2;
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   import §^0§.§=Q§;
   
   public class §!L§ extends §'T§
   {
       
      
      private var §@J§:Number = 0;
      
      private const §'!P§:Number = 1500;
      
      private var §3!4§:Number = 0;
      
      private const §1!R§:Number = 250;
      
      private const §]!<§:Number = 150;
      
      private var §["c§:§=Q§;
      
      public function §!L§(param1:§!!]§, param2:§%"=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §^I§ += 0.5;
         if(§^I§ > 360)
         {
            §^I§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§["c§)
         {
            this.§["c§.§@"<§ = true;
            if(this.§@J§ <= this.§'!P§)
            {
               if(this.§["c§.getBody())
               {
                  if(this.§@J§ == 0)
                  {
                     §4$4§.§'"j§("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.§3!4§ == 0)
                  {
                     this.§'M§();
                  }
                  this.§3!4§ += param1;
                  if(this.§3!4§ >= this.§]!<§)
                  {
                     this.§3!4§ = 0;
                  }
                  this.§["c§.getBody().SetAwake(true);
                  this.§["c§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.§@J§ += param1;
            }
            this.§["c§.§@"<§ = false;
         }
         else if(displayObject.visible)
         {
            §+!p§.§`?§.mLevelEngine.mWorld.§2#;§(this.§&#4§,new b2Vec2(§0k§,§@_§));
         }
         return true;
      }
      
      private function §&#4§(param1:b2Fixture) : Boolean
      {
         var _loc3_:§=Q§ = null;
         var _loc2_:Boolean = true;
         if(param1.GetBody().GetUserData())
         {
            _loc3_ = param1.GetBody().GetUserData() as §=Q§;
            if(_loc3_ && !this.§["c§)
            {
               if(_loc3_.§[#o§() || _loc3_.§0#o§())
               {
                  _loc2_ = true;
               }
               else if(_loc3_.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  _loc2_ = true;
               }
               else if(_loc3_.isDamageAwardingScore())
               {
                  this.§["c§ = _loc3_;
                  _loc2_ = false;
                  displayObject.visible = false;
               }
            }
         }
         return _loc2_;
      }
      
      private function §'M§() : void
      {
         (§+!p§.§`?§.particles as §0E§).addSimpleParticle("PARTICLE_WONDERLAND_DUST",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,this.§["c§.getBody().GetPosition().x,this.§["c§.getBody().GetPosition().y,this.§1!R§,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function §!7§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
