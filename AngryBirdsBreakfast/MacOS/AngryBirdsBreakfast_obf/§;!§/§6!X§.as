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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
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
            this.§>A§.init();
         }
         do
         {
            this.§1!d§ = false;
         }
         while(_loc1_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§&!"§.§1!D§);
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     §§pop().§"!Q§(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§&!"§.§1!D§);
                        loop4:
                        while(true)
                        {
                           §§push(true);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§pop().§2f§(§§pop());
                           while(true)
                           {
                              this.§4%§();
                              loop6:
                              for(; _loc2_ || _loc3_; if(!(_loc2_ || this))
                              {
                                 continue;
                              },while(true)
                              {
                                 this.levelStarted();
                                 §§goto(addr80);
                              })
                              {
                                 if(this.§>A§ == null)
                                 {
                                    while(true)
                                    {
                                       this.§>A§ = this.getGameLogicController(§&!"§.§1!D§);
                                       addr102:
                                       while(true)
                                       {
                                       }
                                       addr54:
                                       if(_loc2_ || this)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    §&!"§.setController(this.§>A§);
                                    loop10:
                                    for(; !_loc3_; if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    },§§goto(addr54))
                                    {
                                       §§push(§&!"§.§1!D§);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(§§pop().§4@§ == 0)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                addr80:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                                addr80:
                                             }
                                             while(true)
                                             {
                                                §§push(§&!"§.§1!D§);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                §§pop().background.§`!e§();
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr80);
                                             }
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function §4%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
         if(_loc3_)
         {
            §§push(§&!"§.isPaused);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§>A§);
                     addr264:
                     while(true)
                     {
                        §§pop().update(param1);
                        addr266:
                        while(true)
                        {
                        }
                     }
                  }
                  addr262:
               }
               while(true)
               {
                  §§push(this.§>A§);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop().§@l§());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        loop5:
                        while(!_loc2_)
                        {
                           if(§§pop())
                           {
                              loop6:
                              for(; §§pop(); continue loop5)
                              {
                                 loop7:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    this.§19§ = false;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§>A§);
                                       loop9:
                                       while(true)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(§§pop().§0%§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§,"'§.LEVEL_STATE_VICTORY2_END);
                                                   addr190:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(this.§>A§);
                                                      if(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr191:
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr200:
                                                   if(!this.§1!d§)
                                                   {
                                                      addr201:
                                                      if(_loc3_ || param1)
                                                      {
                                                         this.§1!d§ = true;
                                                         this.levelCompleted();
                                                         addr162:
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr105:
                                                            §§push(this.isAllowedToChangeVictoryState());
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr133:
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc2_ && _loc2_)
                                                                        {
                                                                           §§goto(addr191);
                                                                        }
                                                                        §<f§(this.getVictoryStateName());
                                                                        continue loop8;
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  addr24:
                                                                  break loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr258:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§19§);
                                                                     addr215:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               addr247:
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         §§goto(addr258);
                                                         addr211:
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr105);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr264);
                                    }
                                 }
                                 §§goto(addr266);
                              }
                              return;
                              addr223:
                           }
                           while(true)
                           {
                              if(_loc2_ && param1)
                              {
                                 continue loop5;
                              }
                              §§goto(addr223);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr247);
                  }
               }
            }
         }
         §§goto(addr266);
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
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            addr41:
            addr135:
            addr139:
            while(§&!"§.§7!2§)
            {
               continue loop0;
            }
            §&!"§.controller.keyDown(param1);
            return;
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.keyUp(param1);
         }
         do
         {
            §&!"§.controller.keyUp(param1);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §2!E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§&!"§.§1!D§.camera.§7!g§);
         if(!_loc3_)
         {
            §§push(§§pop() - §&!"§.§1!D§.camera.§80§);
            if(_loc4_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§&!"§.§1!D§.camera.§0[§);
         if(_loc4_)
         {
            §§push(§§pop() - §&!"§.§1!D§.camera.§80§);
            if(_loc4_)
            {
               §§push(§§pop() / 2);
               if(_loc4_ || this)
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  if(_loc1_ <= _loc2_)
                  {
                     §5<§.§`J§("Cursor_Zoom_In");
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           addr102:
                           §5<§.§`J§("Cursor_Zoom_Out");
                           addr105:
                        }
                        return;
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr69);
      }
   }
}
