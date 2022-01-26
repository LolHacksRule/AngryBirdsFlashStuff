package §9!T§
{
   import §+D§.§5!P§;
   import §+D§.§5@§;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §<h§ extends §5g§
   {
       
      
      public function §<h§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §6&§(§5@§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
