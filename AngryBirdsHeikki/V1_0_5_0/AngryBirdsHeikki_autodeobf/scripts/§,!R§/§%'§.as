package §,!R§
{
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §`!H§.§9;§;
   import §`!H§.§@!E§;
   
   public class §%'§ extends §[,§
   {
       
      
      public function §%'§(param1:§9;§, param2:§@!E§)
      {
         super(param1,param2);
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!U§
      {
         if(param3 == §;l§.§1b§ || param3 == §;l§.§#^§)
         {
            return new §;l§(§]!%§,textureManager,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         }
         return super.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
   }
}
