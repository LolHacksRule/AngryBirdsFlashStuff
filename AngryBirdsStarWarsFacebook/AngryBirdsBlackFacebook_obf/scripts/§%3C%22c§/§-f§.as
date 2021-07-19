package §<"c§
{
   import §"a§.§6#!§;
   import §5t§.§`"+§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.events.KeyboardEvent;
   
   public class §-f§ extends §]"_§
   {
       
      
      protected var § F§:§6#!§;
      
      protected var §5!Q§:Boolean = false;
      
      private var §7#=§:Boolean = false;
      
      public function §-f§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
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
            this.§ F§.init();
            do
            {
               this.§7#=§ = false;
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§,!q§.§9!,§);
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     §§pop().§]"J§(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§,!q§.§9!,§);
                        loop4:
                        while(true)
                        {
                           §§push(true);
                           if(_loc2_ && _loc2_)
                           {
                              break;
                           }
                           §§pop().§--§(§§pop());
                           while(true)
                           {
                              this.resumeEngine();
                              continue loop0;
                              addr110:
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              this.§ F§ = this.getGameLogicController(§,!q§.§9!,§);
                              while(true)
                              {
                                 addr83:
                                 while(true)
                                 {
                                    §,!q§.§3!Q§(this.§ F§);
                                    loop8:
                                    for(; _loc3_ || _loc3_; while(_loc3_ || param1)
                                    {
                                       §§goto(addr29);
                                    })
                                    {
                                       while(true)
                                       {
                                          §§push(§,!q§.§9!,§);
                                          loop11:
                                          for(; _loc3_; while(true)
                                          {
                                             §§push(§,!q§.§9!,§);
                                             if(!(_loc2_ && param1))
                                             {
                                                continue loop4;
                                             }
                                             continue loop11;
                                          },continue loop4)
                                          {
                                             if(§§pop().§9""§ != 0)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                this.levelStarted();
                                                continue loop8;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           §§pop().background.playAmbientSound();
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr123);
                                 }
                                 return;
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr65);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      protected function resumeEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §,!q§.resume();
         }
      }
      
      protected function getGameLogicController(param1:§#_§) : §6#!§
      {
         return new §6#!§(param1,§+!b§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§,!q§.isPaused);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ F§);
                     addr239:
                     while(true)
                     {
                        §§pop().update(param1);
                        addr241:
                        while(true)
                        {
                        }
                     }
                  }
                  addr237:
               }
               while(true)
               {
                  §§push(this.§ F§);
                  loop5:
                  while(!(_loc2_ && this))
                  {
                     §§push(§§pop().§2#Q§());
                     loop6:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop12:
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    this.§5!Q§ = false;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    §§push(this.§ F§);
                                    loop14:
                                    for(; !_loc2_; §§push(this.§ F§),if(_loc2_ && _loc2_)
                                    {
                                       continue;
                                    },§§goto(addr36))
                                    {
                                       §§push(§§pop().§2#F§);
                                       while(true)
                                       {
                                          §§push(§6#!§.LEVEL_STATE_VICTORY2_END);
                                          addr159:
                                          addr160:
                                          while(§§pop() != §§pop())
                                          {
                                             continue loop14;
                                          }
                                          addr160:
                                          if(!_loc3_)
                                          {
                                             continue loop13;
                                          }
                                          addr164:
                                          §§push(this.§7#=§);
                                          addr36:
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             addr167:
                                             this.§7#=§ = true;
                                             addr170:
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.levelCompleted();
                                                   addr105:
                                                   addr108:
                                                   §§push(this.isAllowedToChangeVictoryState());
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr164);
                                                   }
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                   addr150:
                                                }
                                                §§goto(addr237);
                                             }
                                             loop9:
                                             while(_loc3_)
                                             {
                                                §§push(this.§5!Q§);
                                                while(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop9;
                                                }
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr105);
                                          §§push(§§pop().§2#F§);
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          §§push(§6#!§.§7!T§);
                                          if(!(_loc2_ && this))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.isAllowedToChangeFailState());
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr84:
                                                                     if(!_loc2_)
                                                                     {
                                                                        § g§(this.getLoserStateName());
                                                                     }
                                                                     else
                                                                     {
                                                                        addr24:
                                                                        break loop12;
                                                                        addr146:
                                                                     }
                                                                  }
                                                                  if(!(_loc2_ && param1))
                                                                  {
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               break loop12;
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr135:
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr142:
                                                         § g§(this.getVictoryStateName());
                                                         §§goto(addr146);
                                                      }
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr84);
                                             }
                                             break loop12;
                                          }
                                          §§goto(addr159);
                                          §§goto(addr160);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              return;
                              addr198:
                           }
                           §§goto(addr220);
                        }
                     }
                  }
                  §§goto(addr239);
               }
            }
         }
         §§goto(addr142);
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function isAllowedToChangeFailState() : Boolean
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§,!q§.§<N§)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc3_ || param1)
               {
                  §§push(87);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr113:
                           §§push(1);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(66);
                        if(!_loc4_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              §§goto(addr113);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                  }
                  switch(§§pop())
                  {
                     case 0:
                        break;
                     case 1:
                        §§push(§,!q§.§9!,§);
                        §§push(§,!q§.§9!,§);
                        if(!(_loc3_ || _loc3_))
                        {
                           addr144:
                           break;
                        }
                        §§pop().§4"m§();
                        if(_loc4_ && param1)
                        {
                           return;
                        }
                        if(true)
                        {
                           break loop1;
                        }
                        continue;
                  }
                  §§pop().§5h§();
                  if(!_loc4_)
                  {
                     break;
                  }
                  break;
               }
               §§goto(addr113);
            }
            §,!q§.§>k§.keyDown(param1);
            §§goto(addr144);
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
               §,!q§.§>k§.keyUp(param1);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §##§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,!q§.§9!,§.camera.§'"2§);
         if(!_loc3_)
         {
            §§push(§§pop() - §,!q§.§9!,§.camera.§^r§);
            if(_loc4_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§,!q§.§9!,§.camera.§7i§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() - §,!q§.§9!,§.camera.§^r§);
               if(!_loc3_)
               {
                  addr60:
                  §§push(§§pop() / 2);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  if(_loc1_ <= _loc2_)
                  {
                     §`"+§.§-G§("Cursor_Zoom_In");
                     if(_loc3_ && this)
                     {
                        addr105:
                     }
                     return;
                  }
                  if(_loc4_)
                  {
                     §`"+§.§-G§("Cursor_Zoom_Out");
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr60);
         }
         §§goto(addr30);
      }
   }
}
