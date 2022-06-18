package §4n§
{
   import §;'§.§8!;§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §>j§ extends §>!4§
   {
       
      
      public function §>j§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8y§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §!!J§(§8!;§.§4#§);
         return true;
      }
   }
}
