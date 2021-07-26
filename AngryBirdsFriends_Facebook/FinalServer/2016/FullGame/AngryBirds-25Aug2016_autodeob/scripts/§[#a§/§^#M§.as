package §[#a§
{
   import §,#L§.§!#%§;
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2FilterData;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §^#M§ extends §="@§
   {
      
      private static const §!#B§:Array = [["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_2","PARTICLE_CHRISTMAS_SLINGSHOT_1_3","PARTICLE_CHRISTMAS_SLINGSHOT_1_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_1","PARTICLE_CHRISTMAS_SLINGSHOT_2_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_3","PARTICLE_CHRISTMAS_SLINGSHOT_2_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_1","PARTICLE_CHRISTMAS_SLINGSHOT_3_2","PARTICLE_CHRISTMAS_SLINGSHOT_3_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_4"]];
      
      private static const §7"E§:String = "AmmoSound";
      
      private static const §-3§:int = 1;
      
      private static const §%O§:Number = 1;
       
      
      private var §>!D§:int;
      
      public function §^#M§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         §]B§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §4$3§ = true;
         §#$+§.§9"]§(§7"E§,§-3§,§%O§);
         § !7§.SetBullet(true);
         this.§>!D§ = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §!#B§.length)
         {
            if(param2.name == §!#B§[_loc7_][0])
            {
               this.§>!D§ = _loc7_;
               break;
            }
            _loc7_++;
         }
      }
      
      public static function §2$6§() : String
      {
         var _loc1_:int = Math.random() * §!#B§.length;
         return §!#B§[_loc1_][0];
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§;#<§ = § !j§;
         _loc1_.§!"y§ = 65535 & ~§+#S§ & ~§>"2§;
         _loc1_.§="%§ = -1;
         getBody().SetForcedContactFiltering(true);
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = Math.random() * 360;
         param1.addParticle("XMAS_ORNAMENT_EXPLOSION",§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",0,Math.cos(_loc2_) * scale,0,5,0,1,10);
         var _loc3_:int = §!#B§[this.§>!D§].length - 1;
         var _loc5_:int = 1;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * 360;
            _loc7_ = Math.random() * 2 < 1 ? Number(200) : Number(-200);
            _loc8_ = 450 + Math.random() * 200;
            §>"$§.§3#'§.particles.addSimpleParticle(§!#B§[this.§>!D§][_loc5_],"",§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,_loc8_,"",0,6 * Math.cos(_loc6_),-6 * Math.sin(_loc6_),10,_loc7_,1,1,true);
            _loc5_++;
         }
      }
   }
}
