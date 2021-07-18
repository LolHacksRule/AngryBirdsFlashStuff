package §;!§
{
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §@L§.§?!'§;
   import §^!3§.§,"'§;
   import com.angrybirds.§&!"§;
   import each.§5<§;
   import flash.events.KeyboardEvent;
   
   public class §6!X§ extends §;" §
   {
       
      
      protected var §>A§:§,"'§;
      
      protected var §19§:Boolean = false;
      
      private var §1!d§:Boolean = false;
      
      public function §6!X§(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>A§.init();
            do
            {
               this.§1!d§ = false;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§&!"§.§1!D§);
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     §§pop().§"!Q§(§§pop());
                     while(true)
                     {
                        §§push(§&!"§.§1!D§);
                        loop4:
                        while(true)
                        {
                           §§push(true);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§pop().§2f§(§§pop());
                           while(!_loc2_)
                           {
                              this.§4%§();
                              addr77:
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              this.levelStarted();
                              loop12:
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§&!"§.§1!D§);
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop().§4@§ == 0)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr77);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr87:
                                                      while(true)
                                                      {
                                                         §&!"§.setController(this.§>A§);
                                                         break loop11;
                                                      }
                                                   }
                                                   addr113:
                                                }
                                             }
                                             break;
                                             addr63:
                                          }
                                          continue loop12;
                                       }
                                       continue loop13;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr53);
                                          §§push(§&!"§.§1!D§);
                                       }
                                       else
                                       {
                                          while(_loc3_)
                                          {
                                             this.§>A§ = this.getGameLogicController(§&!"§.§1!D§);
                                             §§goto(addr113);
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             if(this.§>A§ == null)
                                             {
                                                §§goto(addr105);
                                             }
                                             §§goto(addr87);
                                          }
                                          addr105:
                                          addr117:
                                       }
                                    }
                                    addr53:
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      protected function §4%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&!"§.resume();
         }
      }
      
      protected function getGameLogicController(param1:§?!'§) : §,"'§
      {
         return new §,"'§(param1,§&" §);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(§&!"§.isPaused);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr247:
                  while(true)
                  {
                     §§push(this.§>A§);
                     addr249:
                     while(true)
                     {
                        §§pop().update(param1);
                        addr251:
                        while(true)
                        {
                        }
                     }
                  }
                  addr247:
               }
               while(true)
               {
                  §§push(this.§>A§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§@l§());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(§§pop())
                              {
                                 loop10:
                                 for(; _loc3_ || _loc3_; if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 },§§goto(addr97))
                                 {
                                    this.§19§ = false;
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§>A§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop().§0%§);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§,"'§.LEVEL_STATE_VICTORY2_END);
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(this.§>A§);
                                                if(!_loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc2_ && _loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().§0%§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§,"'§.§["$§);
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this.§[-§());
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr75:
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr85:
                                                                                    §<f§(this.getLoserStateName());
                                                                                 }
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    break loop9;
                                                                                 }
                                                                              }
                                                                              break loop9;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr161:
                                                                        addr161:
                                                                        if(_loc2_ && _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 if(_loc2_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 continue loop0;
                                                                              }
                                                                              addr225:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop10;
                                                                              }
                                                                              §§goto(addr161);
                                                                           }
                                                                           continue loop4;
                                                                           addr183:
                                                                        }
                                                                        if(_loc2_ && param1)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr100:
                                                                           addr97:
                                                                           if(this.isAllowedToChangeVictoryState())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!(_loc3_ || param1))
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §<f§(this.getVictoryStateName());
                                                                                 addr114:
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr114);
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                        this.§1!d§ = true;
                                                                        this.levelCompleted();
                                                                        continue loop10;
                                                                        addr179:
                                                                     }
                                                                     §§goto(addr100);
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr114);
                                                            }
                                                            §§goto(addr85);
                                                         }
                                                         break loop9;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop13;
                                                }
                                                §§goto(addr249);
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       §§goto(addr183);
                                       §§push(this.§19§);
                                    }
                                    else
                                    {
                                       §§goto(addr247);
                                    }
                                 }
                                 §§goto(addr249);
                              }
                              return;
                              addr205:
                           }
                           §§goto(addr225);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr247);
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §[-§() : Boolean
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
               §§goto(addr39);
            }
         }
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_)
            {
               §§push(87);
               if(!_loc3_)
               {
                  if(§§pop() === _loc2_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           addr93:
                        }
                        else
                        {
                           addr107:
                        }
                     }
                     else
                     {
                        addr104:
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr107);
                        }
                     }
                  }
                  else
                  {
                     §§push(66);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop() === _loc2_)
                        {
                           §§goto(addr104);
                        }
                        else
                        {
                           §§push(2);
                        }
                     }
                  }
                  switch(§§pop())
                  {
                     case 0:
                        addr54:
                        §&!"§.§1!D§.§2I§();
                        break;
                        addr55:
                     case 1:
                        §§push(§&!"§.§1!D§);
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().§=X§();
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 addr39:
                                 §§goto(addr126);
                              }
                           }
                           break;
                        }
                        §§goto(addr54);
                        §§goto(addr55);
                  }
                  addr126:
                  while(§&!"§.§7!2§)
                  {
                     continue loop0;
                  }
                  §&!"§.controller.keyDown(param1);
                  return;
               }
               §§goto(addr93);
            }
            §§goto(addr104);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.keyUp(param1);
            do
            {
               §&!"§.controller.keyUp(param1);
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function §2!E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§&!"§.§1!D§.camera.§7!g§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - §&!"§.§1!D§.camera.§80§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§&!"§.§1!D§.camera.§0[§);
         if(!_loc4_)
         {
            §§push(§§pop() - §&!"§.§1!D§.camera.§80§);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() / 2);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc1_ <= _loc2_)
            {
               §5<§.§`J§("Cursor_Zoom_In");
               if(_loc4_ && this)
               {
                  addr109:
               }
               return;
            }
            if(!_loc4_)
            {
               addr106:
               §5<§.§`J§("Cursor_Zoom_Out");
            }
            §§goto(addr109);
         }
         §§goto(addr106);
      }
   }
}
