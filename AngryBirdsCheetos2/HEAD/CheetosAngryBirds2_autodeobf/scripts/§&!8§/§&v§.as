package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §^a§.Sprite;
   
   public class §&v§ extends §]V§
   {
       
      
      public function §&v§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §5!W§(§7!N§.§0C§);
         return true;
      }
   }
}
