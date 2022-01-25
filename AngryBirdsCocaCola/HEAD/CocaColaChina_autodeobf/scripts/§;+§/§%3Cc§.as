package §;+§
{
   import § !K§.Sprite;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §4A§.§3m§;
   
   public class §<c§ extends §"!R§
   {
       
      
      public function §<c§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§+!?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §,!X§(§3m§.§?!K§);
         return true;
      }
   }
}
