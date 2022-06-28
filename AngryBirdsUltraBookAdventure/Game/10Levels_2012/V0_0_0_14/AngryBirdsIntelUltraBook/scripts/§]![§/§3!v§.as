package §]![§
{
   import § D§.b2World;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §9E§.Sprite;
   
   public class §3!v§ extends §4J§
   {
       
      
      public function §3!v§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§[?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §&!Y§(§ R§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
