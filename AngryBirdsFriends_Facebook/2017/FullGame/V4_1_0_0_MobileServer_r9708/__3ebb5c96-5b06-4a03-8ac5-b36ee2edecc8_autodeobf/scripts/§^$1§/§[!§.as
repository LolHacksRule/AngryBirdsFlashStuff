package §^$1§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Fixture;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   import §>!5§.§^"9§;
   
   public class §[!§ extends §88§
   {
       
      
      private var §6$4§:Number = 0;
      
      private const §3^§:Number = 1500;
      
      private var §2!k§:Number = 0;
      
      private const §[!l§:Number = 250;
      
      private const §9$8§:Number = 150;
      
      private var §7"?§:§^"9§;
      
      public function §[!§(param1:§"I§, param2:§'0§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §,!H§ += 0.5;
         if(§,!H§ > 360)
         {
            §,!H§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§7"?§)
         {
            this.§7"?§.§0#l§ = true;
            if(this.§6$4§ <= this.§3^§)
            {
               if(this.§7"?§.getBody())
               {
                  if(this.§6$4§ == 0)
                  {
                     §!#&§.§2!A§("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.§2!k§ == 0)
                  {
                     this.§-" §();
                  }
                  this.§2!k§ += param1;
                  if(this.§2!k§ >= this.§9$8§)
                  {
                     this.§2!k§ = 0;
                  }
                  this.§7"?§.getBody().SetAwake(true);
                  this.§7"?§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.§6$4§ += param1;
            }
            this.§7"?§.§0#l§ = false;
         }
         else if(displayObject.visible)
         {
            §!#A§.§#F§.mLevelEngine.mWorld.§8"%§(this.§6"@§,new b2Vec2(§?!l§,§`"T§));
         }
         return true;
      }
      
      private function §6"@§(param1:b2Fixture) : Boolean
      {
         var _loc3_:§^"9§ = null;
         var _loc2_:Boolean = true;
         if(param1.GetBody().GetUserData())
         {
            _loc3_ = param1.GetBody().GetUserData() as §^"9§;
            if(_loc3_ && !this.§7"?§)
            {
               if(_loc3_.§5!P§() || _loc3_.§-"V§())
               {
                  _loc2_ = true;
               }
               else if(_loc3_.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  _loc2_ = true;
               }
               else if(_loc3_.isDamageAwardingScore())
               {
                  this.§7"?§ = _loc3_;
                  _loc2_ = false;
                  displayObject.visible = false;
               }
            }
         }
         return _loc2_;
      }
      
      private function §-" §() : void
      {
         (§!#A§.§#F§.particles as §6#J§).addSimpleParticle("PARTICLE_WONDERLAND_DUST",§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,this.§7"?§.getBody().GetPosition().x,this.§7"?§.getBody().GetPosition().y,this.§[!l§,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function §[§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
