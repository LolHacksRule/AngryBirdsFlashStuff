package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§3X§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4y§ extends §8j§
   {
       
      
      public function §4y§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §^§(§3X§.§-'§);
         return true;
      }
   }
}
