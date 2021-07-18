package §1!c§
{
   import §#!`§.§3!o§;
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §24§.§=!L§;
   import §@V§.§#=§;
   import flash.events.KeyboardEvent;
   
   public class §7t§ extends §7X§
   {
       
      
      protected var §4!"§:§3!o§;
      
      protected var § !a§:Boolean = false;
      
      private var §&!-§:Boolean = false;
      
      public function §7t§(param1:§0![§, param2:§+f§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4!"§.init();
         }
         do
         {
            this.§&!-§ = false;
         }
         while(_loc1_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.activate(param1);
            while(true)
            {
               §§push(§@!S§.§2A§);
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     §§pop().§`!V§(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§@!S§.§2A§);
                        loop4:
                        while(true)
                        {
                           §§push(true);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().§+"2§(§§pop());
                           loop5:
                           while(true)
                           {
                              this.§@!R§();
                              while(!(_loc3_ && _loc2_))
                              {
                                 if(this.§4!"§ == null)
                                 {
                                    addr122:
                                    if(_loc2_ || param1)
                                    {
                                       this.§4!"§ = this.getGameLogicController(§@!S§.§2A§);
                                    }
                                    while(true)
                                    {
                                       addr62:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue loop5;
                                       }
                                    }
                                    addr122:
                                 }
                                 while(true)
                                 {
                                    §@!S§.setController(this.§4!"§);
                                    §§goto(addr122);
                                 }
                                 while(!(_loc3_ && this))
                                 {
                                    while(true)
                                    {
                                       §§push(§@!S§.§2A§);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    loop10:
                                    while(_loc2_)
                                    {
                                       if(§§pop().§'!n§ == 0)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr62);
                                             }
                                             addr103:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr122);
                                          addr55:
                                       }
                                       else
                                       {
                                          §§goto(addr28);
                                       }
                                    }
                                    addr28:
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      protected function §@!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!S§.resume();
         }
      }
      
      protected function getGameLogicController(param1:§#=§) : §3!o§
      {
         return new §3!o§(param1,§4a§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§@!S§.isPaused);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§4!"§);
                     addr214:
                     while(true)
                     {
                        §§pop().update(param1);
                        addr216:
                        while(true)
                        {
                        }
                     }
                  }
                  addr212:
               }
               while(true)
               {
                  §§push(this.§4!"§);
                  loop5:
                  while(true)
                  {
                     §§push(§§pop().§?#§());
                     addr194:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr195:
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§ !a§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr112:
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       if(§§pop())
                                       {
                                          addr122:
                                          if(_loc3_)
                                          {
                                             if(_loc2_ && param1)
                                             {
                                                addr169:
                                                if(_loc2_ && _loc3_)
                                                {
                                                   continue loop9;
                                                }
                                                this.§&!-§ = true;
                                                this.levelCompleted();
                                                if(!_loc2_)
                                                {
                                                   addr107:
                                                   addr110:
                                                   §§push(this.isAllowedToChangeVictoryState());
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr112);
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr107);
                                                }
                                                §§goto(addr216);
                                                addr179:
                                             }
                                             if(_loc3_)
                                             {
                                                §7"6§(this.getVictoryStateName());
                                                addr137:
                                                if(!_loc2_)
                                                {
                                                   addr20:
                                                   return;
                                                   addr24:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§ !a§ = false;
                                                      addr189:
                                                      while(true)
                                                      {
                                                         §§push(this.§4!"§);
                                                         continue loop5;
                                                      }
                                                   }
                                                   addr186:
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr212);
                                             }
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr24);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              addr185:
                              while(§§pop())
                              {
                                 §§goto(addr186);
                              }
                              §§goto(addr20);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr189);
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §#g§() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§@!S§.§!L§)
            {
               if(_loc3_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc4_ || param1)
               {
                  §§push(87);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_ || this)
                        {
                           addr95:
                           §§push(0);
                           if(_loc4_)
                           {
                              addr98:
                           }
                           else
                           {
                              addr117:
                           }
                        }
                        else
                        {
                           addr109:
                           §§push(1);
                           if(!(_loc3_ && param1))
                           {
                              §§goto(addr117);
                           }
                        }
                        addr122:
                        switch(§§pop())
                        {
                           case 0:
                              break;
                           case 1:
                              §§push(§@!S§.§2A§);
                              §§push(§@!S§.§2A§);
                              if(!_loc4_)
                              {
                                 addr145:
                                 break;
                              }
                              §§pop().§9A§();
                              if(!(_loc4_ || _loc3_))
                              {
                                 return;
                              }
                              if(true)
                              {
                                 break loop1;
                              }
                              continue;
                        }
                        §§pop().§[!K§();
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        break;
                     }
                     §§push(66);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           §§goto(addr109);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr98);
               }
               §§goto(addr95);
            }
            §@!S§.controller.keyDown(param1);
            §§goto(addr145);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.keyUp(param1);
            do
            {
               §@!S§.controller.keyUp(param1);
            }
            while(_loc2_);
            
         }
      }
      
      public function §0!i§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§@!S§.§2A§.camera.§=Q§);
         if(_loc3_ || this)
         {
            §§push(§§pop() - §@!S§.§2A§.camera.§6X§);
            if(_loc3_)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§@!S§.§2A§.camera.§!"5§);
            if(!_loc4_)
            {
               §§push(§§pop() - §@!S§.§2A§.camera.§6X§);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc4_)
                  {
                     addr68:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc3_ || _loc1_)
               {
                  if(_loc1_ <= _loc2_)
                  {
                     §=!L§.§`a§("Cursor_Zoom_In");
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           addr106:
                           §=!L§.§`a§("Cursor_Zoom_Out");
                           addr109:
                        }
                        else
                        {
                           addr102:
                        }
                        return;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr106);
               }
               §§goto(addr102);
            }
            §§goto(addr68);
         }
         §§goto(addr34);
      }
   }
}
