package §%A§
{
   import §-!!§.§8"J§;
   import §8#t§.b2Fixture;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   import §`# §.b2Vec2;
   
   public class §&$$§ extends §3!t§
   {
       
      
      private var §0"2§:Number = 0;
      
      private const §3"g§:Number = 1500;
      
      private var § Q§:Number = 0;
      
      private const §<J§:Number = 250;
      
      private const §-#^§:Number = 150;
      
      private var §9#a§:§8"J§;
      
      public function §&$$§(param1:§2#6§, param2:§=#;§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §%"b§ += 0.5;
         if(§%"b§ > 360)
         {
            §%"b§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§9#a§)
         {
            this.§9#a§.§^#v§ = true;
            if(this.§0"2§ <= this.§3"g§)
            {
               if(this.§9#a§.getBody())
               {
                  if(this.§0"2§ == 0)
                  {
                     §[#%§.§!"0§("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.§ Q§ == 0)
                  {
                     this.§+#6§();
                  }
                  this.§ Q§ += param1;
                  if(this.§ Q§ >= this.§-#^§)
                  {
                     this.§ Q§ = 0;
                  }
                  this.§9#a§.getBody().SetAwake(true);
                  this.§9#a§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.§0"2§ += param1;
            }
            this.§9#a§.§^#v§ = false;
         }
         else if(displayObject.visible)
         {
            §%"T§.§;`§.mLevelEngine.mWorld.§^!e§(this.§2z§,new b2Vec2(§-##§,§0#[§));
         }
         return true;
      }
      
      private function §2z§(param1:b2Fixture) : Boolean
      {
         var _loc3_:§8"J§ = null;
         var _loc2_:Boolean = true;
         if(param1.GetBody().GetUserData())
         {
            _loc3_ = param1.GetBody().GetUserData() as §8"J§;
            if(_loc3_ && !this.§9#a§)
            {
               if(_loc3_.§"!g§() || _loc3_.§&"y§())
               {
                  _loc2_ = true;
               }
               else if(_loc3_.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  _loc2_ = true;
               }
               else if(_loc3_.isDamageAwardingScore())
               {
                  this.§9#a§ = _loc3_;
                  _loc2_ = false;
                  displayObject.visible = false;
               }
            }
         }
         return _loc2_;
      }
      
      private function §+#6§() : void
      {
         (§%"T§.§;`§.particles as §]#e§).addSimpleParticle("PARTICLE_WONDERLAND_DUST",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,this.§9#a§.getBody().GetPosition().x,this.§9#a§.getBody().GetPosition().y,this.§<J§,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function §!U§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
