package §]r§
{
   import §7q§.Sprite;
   import §=9§.b2World;
   import §=b§.§-!K§;
   import §=b§.§5?§;
   
   public class §>d§ extends §<!$§
   {
       
      
      public function §>d§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§2"%§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         § "3§(§5?§.§4!k§);
         return true;
      }
   }
}
