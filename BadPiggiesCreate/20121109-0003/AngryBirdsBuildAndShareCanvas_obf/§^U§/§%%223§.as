package §^U§
{
   import §%!0§.§,4§;
   import §,P§.§'_§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §]§.§?h§;
   import flash.events.KeyboardEvent;
   
   public class §%"3§ extends §'B§
   {
       
      
      protected var §%!x§:§?h§;
      
      protected var §-"8§:Boolean = false;
      
      protected var §<s§:Boolean = false;
      
      private var §>!?§:Boolean = false;
      
      public function §%"3§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§%!x§.init();
            do
            {
               this.§>!?§ = false;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §`!r§.§1&§ = false;
               loop1:
               while(true)
               {
                  §§push(§'_§.§=M§);
                  while(true)
                  {
                     §§push(true);
                     addr148:
                     while(true)
                     {
                        §§pop().§'"@§(§§pop());
                     }
                     addr28:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     addr35:
                     §§pop().background.§@Q§();
                     if(_loc1_ || this)
                     {
                        addr44:
                        if(_loc1_ || this)
                        {
                           if(!_loc1_)
                           {
                              loop9:
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(§'_§.§=M§);
                                          loop11:
                                          for(; _loc1_; §§push(§'_§.§=M§),if(_loc2_)
                                          {
                                             continue;
                                          },§§goto(addr28))
                                          {
                                             if(§§pop().§<I§ == 0)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   this.levelStarted();
                                                   addr91:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§%!x§ = this.§1!]§(§'_§.§=M§);
                                                            break loop12;
                                                         }
                                                         addr99:
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                   continue loop9;
                                                   addr91:
                                                }
                                                §§goto(addr91);
                                             }
                                             while(true)
                                             {
                                                §'_§.§^`§(this.§%!x§);
                                                addr61:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop0;
                                                   §§goto(addr35);
                                                }
                                                continue loop1;
                                             }
                                          }
                                          addr122:
                                          while(true)
                                          {
                                             §§push(true);
                                             if(_loc1_)
                                             {
                                                §§pop().§"!X§(§§pop());
                                                break loop9;
                                             }
                                             break;
                                          }
                                          §§goto(addr148);
                                       }
                                       addr64:
                                    }
                                    break;
                                 }
                                 addr118:
                                 while(true)
                                 {
                                    if(this.§%!x§ != null)
                                    {
                                       §§goto(addr64);
                                    }
                                    §§goto(addr99);
                                    continue loop9;
                                 }
                              }
                              while(_loc1_ || this)
                              {
                                 §'_§.resume();
                                 §§goto(addr118);
                              }
                              while(true)
                              {
                                 §§goto(addr122);
                              }
                              addr149:
                           }
                           if(!_loc2_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr61);
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      protected function §1!]§(param1:§,4§) : §?h§
      {
         return new §?h§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     §§push(this.§-"8§);
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§'_§.isPaused);
                           while(_loc3_ || this)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§%!x§);
                                    addr274:
                                    while(true)
                                    {
                                       §§pop().update(param1);
                                       addr276:
                                       while(true)
                                       {
                                       }
                                    }
                                    loop24:
                                    while(_loc3_ || _loc2_)
                                    {
                                       addr202:
                                       this.§>!?§ = true;
                                       loop18:
                                       while(true)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                this.§[w§();
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         mNextState = this.getVictoryState();
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue loop24;
                                                            }
                                                            §`!r§.§1&§ = true;
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  continue loop19;
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                         continue loop24;
                                                      }
                                                      addr117:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         break loop19;
                                                      }
                                                      addr282:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr51);
                                                }
                                                return §§pop();
                                             }
                                             addr287:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      this.§-"8§ = false;
                                                      break loop18;
                                                   }
                                                   addr294:
                                                }
                                                else
                                                {
                                                   addr319:
                                                   §§push(_loc2_);
                                                }
                                             }
                                             §§goto(addr320);
                                          }
                                          break;
                                          §§goto(addr202);
                                       }
                                       while(true)
                                       {
                                          mNextState = §@!y§.§%!Q§;
                                          §§goto(addr282);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr253);
                                 §§goto(addr276);
                              }
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr233);
                              §§push(Boolean(§§pop()));
                           }
                           continue;
                        }
                        §§goto(addr287);
                     }
                  }
               }
               §§goto(addr319);
            }
            §§goto(addr320);
         }
         §§goto(addr294);
      }
      
      protected function §#e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = this.getLoserState();
         }
      }
      
      protected function §[w§() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         if(!(_loc3_ && this))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§'_§.§^q§)
            {
               if(_loc3_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(!(_loc3_ && _loc3_))
               {
                  §§push(87);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc4_ || this)
                           {
                              addr127:
                              switch(§§pop())
                              {
                                 case 0:
                                    break;
                                 case 1:
                                    §§push(§'_§.§=M§);
                                    §§push(§'_§.§=M§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§pop().§@"%§();
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             break loop1;
                                          }
                                          if(true)
                                          {
                                             break loop1;
                                          }
                                          continue;
                                          addr65:
                                       }
                                       break loop1;
                                    }
                                    break;
                              }
                              §§pop().§7!E§();
                              §§goto(addr65);
                           }
                           else
                           {
                              addr112:
                              if(§§pop() === _loc2_)
                              {
                                 addr114:
                                 §§push(1);
                                 if(_loc4_ || this)
                                 {
                                 }
                                 §§goto(addr127);
                              }
                              else
                              {
                                 §§goto(addr127);
                                 §§push(2);
                              }
                              §§goto(addr127);
                           }
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        §§push(66);
                        if(!_loc3_)
                        {
                           §§goto(addr112);
                        }
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr114);
            }
            §'_§.§=R§.keyDown(param1);
            return;
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.keyUp(param1);
            do
            {
               §'_§.§=R§.keyUp(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §&"6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§'_§.§=M§.camera.§<>§);
         if(_loc3_)
         {
            §§push(§§pop() - §'_§.§=M§.camera.§,!l§);
            if(!_loc4_)
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§'_§.§=M§.camera.§1!Q§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() - §'_§.§=M§.camera.§,!l§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() / 2);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               if(_loc1_ <= _loc2_)
               {
                  §8!W§.§9i§("Cursor_Zoom_In");
                  if(_loc4_)
                  {
                     addr109:
                  }
                  return;
               }
               if(!_loc4_)
               {
                  addr106:
                  §8!W§.§9i§("Cursor_Zoom_Out");
               }
               §§goto(addr109);
            }
            §§goto(addr106);
         }
         §§goto(addr29);
      }
   }
}
