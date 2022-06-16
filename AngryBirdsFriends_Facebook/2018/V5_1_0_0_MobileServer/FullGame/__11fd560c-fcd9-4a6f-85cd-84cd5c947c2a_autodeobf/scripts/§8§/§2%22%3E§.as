package §8§#8
{
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2FilterData;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §2">§ extends §4!y§
   {
      
      private static const §?!y§:Array = [["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_2","PARTICLE_CHRISTMAS_SLINGSHOT_1_3","PARTICLE_CHRISTMAS_SLINGSHOT_1_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_1","PARTICLE_CHRISTMAS_SLINGSHOT_2_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_3","PARTICLE_CHRISTMAS_SLINGSHOT_2_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_1","PARTICLE_CHRISTMAS_SLINGSHOT_3_2","PARTICLE_CHRISTMAS_SLINGSHOT_3_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_4"]];
      
      private static const §<"f§:String = "AmmoSound";
      
      private static const §!"9§:int = 1;
      
      private static const §;"i§:Number = 1;
       
      
      private var §&$ §:int;
      
      public function §2">§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         §[#x§ = true;
         super(param1,param2,param3,param4,param5,param6);
         §=#]§ = true;
         §!"p§.§5#4§(§<"f§,§!"9§,§;"i§);
         §=#D§.SetBullet(true);
         this.§&$ § = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §?!y§.length)
         {
            if(param2.name == §?!y§[_loc7_][0])
            {
               this.§&$ § = _loc7_;
               break;
            }
            _loc7_++;
         }
      }
      
      public static function §,f§() : String
      {
         var _loc1_:int = Math.random() * §?!y§.length;
         return §?!y§[_loc1_][0];
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§+"p§ = §1"b§;
         _loc1_.§5!H§ = 65535 & ~§6!a§ & ~§,-§ & ~§+"'§;
         _loc1_.§]#s§ = -1;
         getBody().SetForcedContactFiltering(true);
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = Math.random() * 360;
         param1.addParticle("XMAS_ORNAMENT_EXPLOSION",§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",0,Math.cos(_loc2_) * scale,0,5,0,1,10);
         var _loc3_:int = §?!y§[this.§&$ §].length - 1;
         var _loc5_:int = 1;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * 360;
            _loc7_ = Math.random() * 2 < 1 ? Number(200) : Number(-200);
            _loc8_ = 450 + Math.random() * 200;
            §3#U§.§#$4§.particles.addSimpleParticle(§?!y§[this.§&$ §][_loc5_],"",§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,_loc8_,"",0,6 * Math.cos(_loc6_),-6 * Math.sin(_loc6_),10,_loc7_,1,1,true);
            _loc5_++;
         }
      }
   }
}
