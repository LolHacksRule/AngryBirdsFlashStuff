package §!'§
{
   import § "%§.b2Vec2;
   import §4"O§.b2Fixture;
   import §8§.§4!y§;
   import §;#D§.§3#U§;
   import §@!M§.§!"p§;
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §`#R§ extends §8! §
   {
       
      
      private var §<"5§:Number = 0;
      
      private const §-"U§:Number = 1500;
      
      private var §0#w§:Number = 0;
      
      private const §4!2§:Number = 250;
      
      private const § $ §:Number = 150;
      
      private var §&"k§:§4!y§;
      
      public function §`#R§(param1:§`#+§, param2:§34§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §]#8§ += 0.5;
         if(§]#8§ > 360)
         {
            §]#8§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§&"k§)
         {
            this.§&"k§.§[#x§ = true;
            if(this.§<"5§ <= this.§-"U§)
            {
               if(this.§&"k§.getBody())
               {
                  if(this.§<"5§ == 0)
                  {
                     §!"p§.§%!R§("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.§0#w§ == 0)
                  {
                     this.§9#W§();
                  }
                  this.§0#w§ += param1;
                  if(this.§0#w§ >= this.§ $ §)
                  {
                     this.§0#w§ = 0;
                  }
                  this.§&"k§.getBody().SetAwake(true);
                  this.§&"k§.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.§<"5§ += param1;
            }
            this.§&"k§.§[#x§ = false;
         }
         else if(displayObject.visible)
         {
            §3#U§.§#$4§.mLevelEngine.mWorld.§'"C§(this.§#$!§,new b2Vec2(§8u§,§!#§));
         }
         return true;
      }
      
      private function §#$!§(param1:b2Fixture) : Boolean
      {
         var _loc3_:§4!y§ = null;
         var _loc2_:Boolean = true;
         if(param1.GetBody().GetUserData())
         {
            _loc3_ = param1.GetBody().GetUserData() as §4!y§;
            if(_loc3_ && !this.§&"k§)
            {
               if(_loc3_.§83§() || _loc3_.§=$,§())
               {
                  _loc2_ = true;
               }
               else if(_loc3_.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  _loc2_ = true;
               }
               else if(_loc3_.isDamageAwardingScore())
               {
                  this.§&"k§ = _loc3_;
                  _loc2_ = false;
                  displayObject.visible = false;
               }
            }
         }
         return _loc2_;
      }
      
      private function §9#W§() : void
      {
         (§3#U§.§#$4§.particles as §7#c§).addSimpleParticle("PARTICLE_WONDERLAND_DUST",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,this.§&"k§.getBody().GetPosition().x,this.§&"k§.getBody().GetPosition().y,this.§4!2§,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function §;#b§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
