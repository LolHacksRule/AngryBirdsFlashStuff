package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §?"!§ extends §;!U§
   {
      
      private static const §'"p§:Array = [["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_2","PARTICLE_CHRISTMAS_SLINGSHOT_1_3","PARTICLE_CHRISTMAS_SLINGSHOT_1_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_1","PARTICLE_CHRISTMAS_SLINGSHOT_2_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_3","PARTICLE_CHRISTMAS_SLINGSHOT_2_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_1","PARTICLE_CHRISTMAS_SLINGSHOT_3_2","PARTICLE_CHRISTMAS_SLINGSHOT_3_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_4"]];
      
      private static const §%!O§:String = "AmmoSound";
      
      private static const §^!m§:int = 1;
      
      private static const §8$7§:Number = 1;
       
      
      private var §^!s§:int;
      
      public function §?"!§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         §!"N§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §9#4§ = true;
         §3Z§.§'#E§(§%!O§,§^!m§,§8$7§);
         § "8§.SetBullet(true);
         this.§^!s§ = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §'"p§.length)
         {
            if(param2.name == §'"p§[_loc7_][0])
            {
               this.§^!s§ = _loc7_;
               break;
            }
            _loc7_++;
         }
      }
      
      public static function §7!y§() : String
      {
         var _loc1_:int = Math.random() * §'"p§.length;
         return §'"p§[_loc1_][0];
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§`"!§ = §-"3§;
         _loc1_.§#!+§ = 65535 & ~§!!_§ & ~§'[§ & ~§1"r§;
         _loc1_.§5$8§ = -1;
         getBody().SetForcedContactFiltering(true);
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = Math.random() * 360;
         param1.addParticle("XMAS_ORNAMENT_EXPLOSION",§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",0,Math.cos(_loc2_) * scale,0,5,0,1,10);
         var _loc3_:int = §'"p§[this.§^!s§].length - 1;
         var _loc5_:int = 1;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * 360;
            _loc7_ = Math.random() * 2 < 1 ? Number(200) : Number(-200);
            _loc8_ = 450 + Math.random() * 200;
            §7n§.§6#K§.particles.addSimpleParticle(§'"p§[this.§^!s§][_loc5_],"",§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,_loc8_,"",0,6 * Math.cos(_loc6_),-6 * Math.sin(_loc6_),10,_loc7_,1,1,true);
            _loc5_++;
         }
      }
   }
}
