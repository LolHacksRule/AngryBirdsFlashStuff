package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2FilterData;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class § ",§ extends §^"9§
   {
      
      private static const §3!a§:Array = [["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_2","PARTICLE_CHRISTMAS_SLINGSHOT_1_3","PARTICLE_CHRISTMAS_SLINGSHOT_1_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_1","PARTICLE_CHRISTMAS_SLINGSHOT_2_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_3","PARTICLE_CHRISTMAS_SLINGSHOT_2_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_1","PARTICLE_CHRISTMAS_SLINGSHOT_3_2","PARTICLE_CHRISTMAS_SLINGSHOT_3_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_4"]];
      
      private static const §>"z§:String = "AmmoSound";
      
      private static const §;"I§:int = 1;
      
      private static const §;!h§:Number = 1;
       
      
      private var §1!8§:int;
      
      public function § ",§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         §0#l§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §7#p§ = true;
         §!#&§.§!"k§(§>"z§,§;"I§,§;!h§);
         §-[§.SetBullet(true);
         this.§1!8§ = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §3!a§.length)
         {
            if(param2.name == §3!a§[_loc7_][0])
            {
               this.§1!8§ = _loc7_;
               break;
            }
            _loc7_++;
         }
      }
      
      public static function §!!Y§() : String
      {
         var _loc1_:int = Math.random() * §3!a§.length;
         return §3!a§[_loc1_][0];
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§=]§ = §@"f§;
         _loc1_.§4"?§ = 65535 & ~§'!W§ & ~§ "v§;
         _loc1_.§4"Z§ = -1;
         getBody().SetForcedContactFiltering(true);
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = Math.random() * 360;
         param1.addParticle("XMAS_ORNAMENT_EXPLOSION",§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",0,Math.cos(_loc2_) * scale,0,5,0,1,10);
         var _loc3_:int = §3!a§[this.§1!8§].length - 1;
         var _loc5_:int = 1;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * 360;
            _loc7_ = Math.random() * 2 < 1 ? Number(200) : Number(-200);
            _loc8_ = 450 + Math.random() * 200;
            §!#A§.§#F§.particles.addSimpleParticle(§3!a§[this.§1!8§][_loc5_],"",§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,_loc8_,"",0,6 * Math.cos(_loc6_),-6 * Math.sin(_loc6_),10,_loc7_,1,1,true);
            _loc5_++;
         }
      }
   }
}
