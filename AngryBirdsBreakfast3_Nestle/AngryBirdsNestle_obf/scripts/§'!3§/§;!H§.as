package §'!3§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §1!i§.§ 3§;
   import §1!i§.§"g§;
   import flash.display.MovieClip;
   
   public class §;!H§ extends §"g§
   {
       
      
      public function §;!H§(param1:MovieClip, param2:§+f§, param3:§5O§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §=!5§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§ 3§ = null;
         if(_loc8_ || param1)
         {
            super.closeAllPopups(param1,param2);
         }
         for each(_loc4_ in §3S§)
         {
            §§push(Boolean(_loc4_));
            if(!_loc7_)
            {
               §§push(§§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§push(!_loc4_.isPersistentLayer);
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc8_ || param3)
                           {
                              addr81:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    addr90:
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(param3);
                                       if(_loc7_ && param1)
                                       {
                                       }
                                       addr102:
                                       if(§§pop())
                                       {
                                          if(_loc8_ || param2)
                                          {
                                             _loc4_.§4"3§();
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr102);
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr81);
         }
      }
   }
}
