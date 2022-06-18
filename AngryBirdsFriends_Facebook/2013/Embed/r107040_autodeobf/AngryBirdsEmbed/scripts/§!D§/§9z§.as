package §!D§
{
   import §!!,§.§`Q§;
   import §6h§.§[!4§;
   import §[v§.§0&§;
   import §[v§.§7e§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   
   public class §9z§ extends §?!§
   {
       
      
      private var §8Q§:Number = 0;
      
      private const §'N§:Number = 1500;
      
      private var §[q§:§`Q§;
      
      public function §9z§(param1:§7e§, param2:§0&§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
      }
      
      override public function update(param1:Number) : Boolean
      {
         §4!5§ += 0.5;
         if(§4!5§ > 360)
         {
            §4!5§ = 0;
         }
         var _loc2_:Boolean = super.update(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(this.§[q§)
         {
            this.§[q§.§?Y§ = true;
            if(this.§8Q§ <= this.§'N§)
            {
               this.§8Q§ += param1;
               if(this.§[q§.§ 7§())
               {
                  this.§[q§.§ 7§().SetAwake(true);
                  this.§[q§.§ 7§().SetLinearVelocity(new b2Vec2(0,-10));
                  this.§?Q§();
                  §9!"§.visible = false;
               }
            }
            if(this.§[q§.§ 7§())
            {
               this.§[q§.§ 7§().SetAwake(true);
            }
            this.§[q§.§?Y§ = false;
         }
         else
         {
            §[!4§.§continue§.mLevelEngine.mWorld.QueryPoint(this.§%!8§,new b2Vec2(§3y§,§6@§));
         }
         return true;
      }
      
      private function §%!8§(param1:b2Fixture) : Boolean
      {
         var _loc2_:§`Q§ = null;
         if(param1.GetBody().GetUserData())
         {
            _loc2_ = param1.GetBody().GetUserData() as §`Q§;
            if(!this.§[q§ && _loc2_ && _loc2_.§[1§() && _loc2_.§?!6§.§#+§ != "MISC_FAIRY_BLOCK_4X4")
            {
               this.§[q§ = _loc2_;
               return false;
            }
            if(_loc2_ && (_loc2_.isTexture() || _loc2_.isGround()))
            {
               §%>§.visible = false;
            }
         }
         return false;
      }
      
      private function §?Q§() : void
      {
         var _loc1_:§0!M§ = §[!4§.§continue§.particles as §0!M§;
         var _loc2_:Number = this.§[q§.§ 7§().GetPosition().x;
         _loc2_ += this.§63§(-2,2);
         var _loc3_:Number = this.§[q§.§ 7§().GetPosition().y;
         _loc3_ += this.§63§(-2,2);
         var _loc4_:Number = Math.random() * 1;
         _loc1_.§5!&§("PARTICLE_WONDERLAND_DUST",§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_,_loc3_,400,"",§7D§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,20,_loc4_,0.5);
      }
      
      private function §63§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
