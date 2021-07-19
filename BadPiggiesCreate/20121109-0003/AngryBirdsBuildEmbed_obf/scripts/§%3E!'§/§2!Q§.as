package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   
   public class §2!Q§ extends §7!U§
   {
       
      
      public function §2!Q§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr76:
                     §§push(true);
                  }
               }
               else
               {
                  § !>§(§;§.§5B§);
                  §§goto(addr76);
               }
               §§goto(addr76);
            }
            return §§pop();
         }
         §§goto(addr76);
      }
   }
}
