package §"h§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   
   public class §1!5§ extends §?F§
   {
       
      
      public function §1!5§(param1:§>"§, param2:§>a§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!U§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(!_loc16_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(§?q§.§-! §);
               addr117:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc17_)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc17_)
                           {
                              return new §?q§(§?!O§,textureManager,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
                           }
                           if(_loc17_ || param3)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return super.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
                        addr72:
                     }
                  }
                  addr122:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr115:
         }
         while(true)
         {
            §§push(param3);
            if(!(_loc16_ && param2))
            {
               §§push(§?q§.§%!9§);
               if(_loc17_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc17_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr117);
               }
               §§goto(addr72);
            }
            else
            {
               §§goto(addr115);
            }
         }
      }
   }
}
