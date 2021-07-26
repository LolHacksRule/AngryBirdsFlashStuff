package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §2"V§ extends §[!8§
   {
       
      
      protected var §,!o§:String = "PARTICLE_HEARTCANNON_SHOT";
      
      public function §2"V§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         §]"K§ = true;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         param1.§@6§(this.§,!o§,this.§,!o§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,this.x * §'!S§.§2"<§,this.y * §'!S§.§2"<§,1000,"",0,0,0.5,8,10,1,15,true);
      }
   }
}
