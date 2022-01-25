package §^!$§
{
   import §&!9§.Sprite;
   import §&F§.§2!4§;
   import §&F§.§>!2§;
   import §<!L§.b2World;
   
   public class §#0§ extends §6y§
   {
       
      
      public function §#0§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;!D§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §&!U§(§2!4§.§`g§);
         return true;
      }
   }
}
