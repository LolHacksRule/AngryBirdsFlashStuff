package §'R§
{
   import §%"§.§ do§;
   import §%"§.§7?§;
   import §<!N§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §-0§ extends §7!0§
   {
       
      
      public function §-0§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§!m§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §8!'§(§7?§.§6!K§);
         return true;
      }
   }
}
