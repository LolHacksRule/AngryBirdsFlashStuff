package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §7!B§.Sprite;
   
   public class §@#§ extends §0d§
   {
       
      
      public function §@#§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr74:
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  §1;§(§8![§.BIRD_LAUNCH_FORCE);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
               §§push(true);
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
               addr58:
            }
            addr73:
            return false;
         }
         §§goto(addr58);
      }
   }
}
