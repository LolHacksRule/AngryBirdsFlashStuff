package §4!#§
{
   import §&!M§.b2World;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   import §[B§.§^W§;
   
   public class §4!>§ extends §@!m§
   {
       
      
      public function §4!>§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§[R§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §+w§(§^W§.§-!U§);
         return true;
      }
   }
}
