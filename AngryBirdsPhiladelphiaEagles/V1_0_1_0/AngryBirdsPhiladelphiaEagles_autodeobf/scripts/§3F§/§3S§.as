package §3F§
{
   import §3H§.Sprite;
   import §>2§.§+!E§;
   import §>2§.§4h§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §3S§ extends §=4§
   {
       
      
      public function §3S§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§0z§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §#e§(§+!E§.§@M§);
         return true;
      }
   }
}
