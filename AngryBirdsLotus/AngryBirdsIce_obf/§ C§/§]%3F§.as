package § C§
{
   import §!F§.§#T§;
   import §!Y§.§[o§;
   import §3"§.§0$§;
   import §;8§.§!$§;
   import §[x§.§2^§;
   import §]4§.§-§;
   import flash.events.KeyboardEvent;
   
   public class §]?§ extends §-§
   {
       
      
      protected var §&!G§:§#T§;
      
      protected var §1p§:Boolean = false;
      
      protected var §4!§:Boolean = false;
      
      private var §@! §:Boolean = false;
      
      public function §]?§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§&!G§.init();
            do
            {
               this.§@! § = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         §0$§.§+!1§ = false;
         loop0:
         while(true)
         {
            §§push(§[o§.§='§);
            while(true)
            {
               §§push(true);
               while(true)
               {
                  §§pop().§"3§(§§pop());
                  §§push(§[o§.§='§);
                  loop3:
                  while(true)
                  {
                     §§push(true);
                     if(_loc1_ && this)
                     {
                        break;
                     }
                     §§pop().§[!C§(§§pop());
                     §[o§.resume();
                     while(true)
                     {
                        if(this.§&!G§ == null)
                        {
                           this.§&!G§ = this.getGameLogicController(§[o§.§='§);
                        }
                        §§push(§[o§.§='§);
                        continue loop3;
                        addr63:
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              this.levelStarted();
                              addr32:
                              §[o§.§%!<§(this.§&!G§);
                              while(true)
                              {
                                 §§push(§[o§.§='§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().background.§0#§();
                                 if(!_loc1_)
                                 {
                                    return;
                                 }
                              }
                              continue loop3;
                              addr37:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               if(!_loc2_)
               {
                  continue;
               }
               if(§§pop().§6&§ == 0)
               {
                  §§goto(addr63);
               }
               §§goto(addr32);
            }
         }
      }
      
      protected function getGameLogicController(param1:§2^§) : §#T§
      {
         return new §#T§(param1);
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
         §§push(_loc2_);
         if(!_loc4_)
         {
            if(§§pop() != §-§.STATE_STATUS_RUNNING)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr247);
               }
               else
               {
                  while(true)
                  {
                     addr102:
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     loop20:
                     while(true)
                     {
                        mNextState = this.getVictoryState();
                        loop6:
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §0$§.§+!1§ = true;
                              if(!_loc4_)
                              {
                                 break;
                              }
                              loop17:
                              while(_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§@! § = true;
                                    this.levelCompleted();
                                    continue loop17;
                                 }
                              }
                              §§goto(addr102);
                           }
                           loop7:
                           while(true)
                           {
                              §§push(this.§&!G§);
                              loop8:
                              while(true)
                              {
                                 §§pop().update(param1);
                                 loop9:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§&!G§);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop().§;Q§()));
                                          if(!_loc4_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§push(this.§4!§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop16:
                                                            while(!(_loc4_ && _loc3_))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr44);
                                                                     }
                                                                  }
                                                                  addr24:
                                                                  this.§4!§ = false;
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§&!G§);
                                                                  loop13:
                                                                  while(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop().§5_§);
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(§#T§.LEVEL_STATE_VICTORY2_END);
                                                                        addr135:
                                                                        addr43:
                                                                        addr44:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              §§push(this.§&!G§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§push(this.§@! §);
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           §§goto(addr160);
                                                                        }
                                                                        §§push(§§pop().§5_§);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              §§push(§#T§.§9!F§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc4_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       mNextState = this.getLoserState();
                                                                                       break;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr135);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr247);
                                                                           }
                                                                           §§goto(addr43);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                                  return §§pop();
                                                                  continue loop16;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr24);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(§[o§.§'Z§);
                                                                  break loop15;
                                                               }
                                                               this.§1p§ = false;
                                                               mNextState = §,§.§?B§;
                                                               §§goto(addr224);
                                                               §§goto(addr172);
                                                            }
                                                            addr172:
                                                            addr228:
                                                         }
                                                         break;
                                                      }
                                                      continue loop14;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                addr196:
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr24);
                     }
                  }
                  addr248:
               }
               §§goto(addr247);
            }
            while(true)
            {
               §§goto(addr228);
               §§goto(addr248);
            }
         }
         addr247:
         return _loc2_;
      }
      
      protected function levelCompleted() : void
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
         if(!(_loc1_ && this))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyDown(param1);
            while(true)
            {
               §§goto(addr37);
            }
         }
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!(_loc3_ && _loc2_))
            {
               §§push(87);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() === _loc2_)
                  {
                     if(_loc4_)
                     {
                        addr100:
                        §§push(0);
                        if(_loc3_)
                        {
                           addr122:
                           if(§§pop() !== _loc2_)
                           {
                              addr132:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr52:
                                    §[o§.§='§.§=!G§();
                                    if(_loc4_ || param1)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    §§push(§[o§.§='§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§pop().§'=§();
                                       if(!_loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          addr37:
                                          §§goto(addr141);
                                       }
                                       break;
                                    }
                                    §§goto(addr52);
                              }
                              addr141:
                              while(§[o§.§'Q§)
                              {
                                 continue loop0;
                              }
                              §[o§.controller.keyDown(param1);
                              return;
                              §§push(2);
                           }
                        }
                        §§goto(addr132);
                     }
                     §§push(1);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(66);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr122);
                     }
                  }
               }
               §§goto(addr132);
            }
            §§goto(addr100);
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
               §[o§.controller.keyUp(param1);
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §^!,§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§[o§.§='§.camera.§=[§);
         if(_loc3_)
         {
            §§push(§§pop() - §[o§.§='§.camera.§^Y§);
            if(_loc3_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§[o§.§='§.camera.§9D§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - §[o§.§='§.camera.§^Y§);
            if(_loc3_)
            {
               §§push(§§pop() / 2);
               if(!(_loc4_ && _loc3_))
               {
                  addr73:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_ <= _loc2_)
               {
                  §!$§.§`T§("Cursor_Zoom_In");
                  if(!(_loc4_ && _loc1_))
                  {
                     if(_loc4_ && _loc3_)
                     {
                        addr116:
                        §!$§.§`T§("Cursor_Zoom_Out");
                        addr119:
                     }
                     else
                     {
                        addr112:
                     }
                     return;
                  }
                  §§goto(addr119);
               }
               §§goto(addr116);
            }
            §§goto(addr112);
         }
         §§goto(addr73);
      }
   }
}
