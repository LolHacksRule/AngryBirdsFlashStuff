package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import §6A§.§4!C§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § $§ extends §^`§
   {
       
      
      public function § $§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §%3§(§4!C§.§,!N§);
         return true;
      }
   }
}
