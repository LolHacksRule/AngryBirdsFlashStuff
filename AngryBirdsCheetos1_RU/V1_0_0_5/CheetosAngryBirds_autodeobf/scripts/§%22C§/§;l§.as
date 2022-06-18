package §"C§
{
   import §%b§.§0!Z§;
   import §%b§.§=!!§;
   import §[W§.b2World;
   import §null §.Sprite;
   
   public class §;l§ extends §'!+§
   {
       
      
      public function §;l§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§7s§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §^v§(§=!!§.§3l§);
         return true;
      }
   }
}
