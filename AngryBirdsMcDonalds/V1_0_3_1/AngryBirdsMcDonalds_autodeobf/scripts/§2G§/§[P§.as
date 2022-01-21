package §2G§
{
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   import §?!§.§,Q§;
   import §?!P§.§4!-§;
   
   public class §[P§ extends §,Q§
   {
       
      
      public function §[P§(param1:§;!j§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§4!-§) : void
      {
         §3!G§ = "BIRD_REDBIG";
         super.addDestructionParticles(param1);
      }
      
      override public function addDamageParticles(param1:§4!-§, param2:int) : void
      {
         §3!G§ = "BIRD_REDBIG";
         super.addDamageParticles(param1,param2);
      }
   }
}
