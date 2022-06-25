package §`!f§
{
   import §%Q§.§=[§;
   import §%Q§.§`!<§;
   import §'!9§.Sprite;
   import §+!Q§.§<[§;
   import §,!5§.§^g§;
   import §`w§.b2World;
   
   public class §7!X§ extends §`!<§
   {
       
      
      public function §7!X§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§%!R§ <= 0)
            {
               if(_loc8_ || param1)
               {
                  if(_loc8_)
                  {
                     §§push(AngryBirdsFP11.sUserProgress as §<[§);
                     §§push("1000-");
                     if(_loc8_)
                     {
                        §§push(§§pop() + §<!]§.split("_")[3]);
                     }
                     §§pop().setEggUnlocked(§§pop());
                     addr72:
                     break;
                  }
                  continue;
               }
               §§goto(addr72);
            }
            return §%!R§;
         }
         §§goto(addr72);
      }
   }
}
