package §8x§
{
   import §,!F§.§#§;
   import §,!F§.§,!7§;
   import §4G§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;!1§ extends § %§
   {
       
      
      public function §;!1§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>A§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §#P§(§,!7§.§"$§);
         return true;
      }
   }
}
