package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §?!F§ extends §>"G§
   {
      
      private static const §%!-§:Array = [["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_2","PARTICLE_CHRISTMAS_SLINGSHOT_1_3","PARTICLE_CHRISTMAS_SLINGSHOT_1_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_1","PARTICLE_CHRISTMAS_SLINGSHOT_2_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_3","PARTICLE_CHRISTMAS_SLINGSHOT_2_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_1","PARTICLE_CHRISTMAS_SLINGSHOT_3_2","PARTICLE_CHRISTMAS_SLINGSHOT_3_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_4"]];
      
      private static const §@!Q§:String = "AmmoSound";
      
      private static const §?"i§:int = 1;
      
      private static const §4#U§:Number = 1;
       
      
      private var §5#Y§:int;
      
      public function §?!F§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         §-##§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §;N§ = true;
         § b§.§%#C§(§@!Q§,§?"i§,§4#U§);
         §2"j§.SetBullet(true);
         this.§5#Y§ = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §%!-§.length)
         {
            if(param2.name == §%!-§[_loc7_][0])
            {
               this.§5#Y§ = _loc7_;
               break;
            }
            _loc7_++;
         }
      }
      
      public static function §7!l§() : String
      {
         var _loc1_:int = Math.random() * §%!-§.length;
         return §%!-§[_loc1_][0];
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§'#`§ = §41§;
         _loc1_.§<L§ = 65535 & ~§+#N§ & ~§9!4§ & ~§[!u§;
         _loc1_.§<C§ = -1;
         getBody().SetForcedContactFiltering(true);
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = Math.random() * 360;
         param1.addParticle("XMAS_ORNAMENT_EXPLOSION",§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",0,Math.cos(_loc2_) * scale,0,5,0,1,10);
         var _loc3_:int = §%!-§[this.§5#Y§].length - 1;
         var _loc5_:int = 1;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * 360;
            _loc7_ = Math.random() * 2 < 1 ? Number(200) : Number(-200);
            _loc8_ = 450 + Math.random() * 200;
            §]$?§.§2#§.particles.addSimpleParticle(§%!-§[this.§5#Y§][_loc5_],"",§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,_loc8_,"",0,6 * Math.cos(_loc6_),-6 * Math.sin(_loc6_),10,_loc7_,1,1,true);
            _loc5_++;
         }
      }
   }
}
