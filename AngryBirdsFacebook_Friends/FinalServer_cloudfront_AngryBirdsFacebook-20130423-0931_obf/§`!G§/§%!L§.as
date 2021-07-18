package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §%!L§ extends §2"L§
   {
       
      
      public function §%!L§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §%<§(§&=§.BIRD_LAUNCH_FORCE);
                  if(!(_loc2_ && _loc3_))
                  {
                     break;
                  }
                  addr75:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(!_loc3_)
               {
                  break;
               }
               §§push(true);
               if(!_loc3_)
               {
                  return §§pop();
               }
               addr74:
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            §§goto(addr74);
            §§push(false);
         }
         §§goto(addr75);
      }
   }
}
