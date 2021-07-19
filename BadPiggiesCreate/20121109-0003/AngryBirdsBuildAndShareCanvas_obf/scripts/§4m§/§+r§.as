package §4m§
{
   import §&!P§.§^!!§;
   import §7&§.§74§;
   import flash.display.DisplayObject;
   
   public class §+r§ extends §8o§
   {
       
      
      private const §3"<§:int = 3000;
      
      private const §@$§:int = 3000;
      
      private var §3R§:int;
      
      private var §?V§:§74§;
      
      private var §@&§:int;
      
      public function §+r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§?V§ = new §74§();
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     §]B§ = "Check stability";
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function update(param1:§^!!§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3R§ -= param2;
            loop0:
            while(true)
            {
               §§push(!§ !7§);
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     loop17:
                     while(true)
                     {
                        §§pop();
                        loop13:
                        while(true)
                        {
                           §§push(this.§3R§);
                           if(!(_loc4_ && param2))
                           {
                              §§push(0);
                              if(!_loc4_)
                              {
                                 addr143:
                                 §§push(§§pop() <= §§pop());
                                 while(_loc4_ && param1)
                                 {
                                    continue loop17;
                                    §§goto(addr143);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop13;
                                          }
                                          §§push(this.§@&§);
                                          while(true)
                                          {
                                             §§push(param1.getPigCount());
                                             addr159:
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   §§push(param1.isWorldAtSleep());
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            finish(this.§@$§);
                                                            addr110:
                                                            while(true)
                                                            {
                                                               §§push(this.§?V§);
                                                               addr84:
                                                               while(true)
                                                               {
                                                                  §§pop().§]!y§();
                                                                  while(_loc3_)
                                                                  {
                                                                     § !7§ = true;
                                                                     while(_loc3_ || param2)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                addr173:
                                                while(true)
                                                {
                                                   §§push(this.§?V§);
                                                   addr121:
                                                   while(true)
                                                   {
                                                      §§pop().§%!§();
                                                   }
                                                }
                                                addr173:
                                                while(!(_loc4_ && param2))
                                                {
                                                   § !7§ = true;
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break loop4;
                                                      }
                                                      break;
                                                      addr54:
                                                      while(!(_loc4_ && param2))
                                                      {
                                                         super.update(param1,param2);
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               return;
                                                               addr39:
                                                            }
                                                            §§goto(addr110);
                                                         }
                                                         §§goto(addr66);
                                                      }
                                                   }
                                                   §§goto(addr173);
                                                   §§goto(addr121);
                                                }
                                                continue loop2;
                                             }
                                             continue loop13;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§?V§);
                                       if(_loc3_)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().update(param2);
                                             §§goto(addr54);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr84);
                                    }
                                    §§goto(addr39);
                                 }
                                 addr144:
                                 addr151:
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr157);
                        }
                     }
                     addr196:
                  }
                  §§goto(addr151);
               }
               §§goto(addr196);
            }
         }
         §§goto(addr173);
      }
      
      override public function startCheck(param1:§^!!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.startCheck(param1);
            while(true)
            {
               this.§3R§ = this.§3"<§;
               §§goto(addr63);
            }
         }
         addr63:
         while(true)
         {
            this.§@&§ = param1.getPigCount();
            if(!(_loc3_ && param1))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§?V§]);
      }
   }
}
