package §!X§
{
   import §!?§.§=!_§;
   import §3C§.§0Y§;
   import §4"§.PopupClosedEvent;
   import §7!H§.§3z§;
   import §7!H§.§>1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §?1§ extends §<!3§
   {
       
      
      private var §7!<§:Vector.<§0Y§>;
      
      public function §?1§(param1:§>1§, param2:§=!_§, param3:int, param4:§&"E§ = null, param5:§^"&§ = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3,param4,param5);
            do
            {
               this.§7!<§ = new Vector.<§0Y§>();
            }
            while(!(_loc7_ || param3));
            
         }
      }
      
      protected function §2#§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean) : §3z§
      {
         return new §0Y§(§?"<§,param4,param1,param2,param3,param5);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            §3u§.userProgress.saveTutorialSeen(param2);
         }
         §§push(param5);
         if(_loc11_ || param3)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:§3z§ = this.§2#§(param1,param2,param3,param4,_loc9_);
         if(_loc11_ || param1)
         {
            this.§7!<§.push(_loc10_);
         }
         while(true)
         {
            _loc10_.addEventListener(PopupClosedEvent.§`T§,this.§4!T§);
            while(!_loc12_)
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
               while(_loc11_)
               {
                  §'d§.openPopup(_loc10_,param5,param6,param7,param8);
                  if(_loc11_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§&"E§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:Boolean = false;
         if(_loc11_ || this)
         {
            if(!param5)
            {
               if(!(_loc12_ && param3))
               {
                  if(§3u§.userProgress.hasTutorialBeenSeen(param1))
                  {
                     if(!(_loc12_ && param1))
                     {
                        return;
                     }
                     addr64:
                     §5U§ = param7;
                  }
                  else
                  {
                     addr54:
                     if(param7 != null)
                     {
                        if(_loc11_ || param1)
                        {
                           §§goto(addr64);
                        }
                     }
                  }
               }
               var _loc9_:MovieClip = §5U§.solve(param1);
               if(!_loc12_)
               {
                  §§push(param8);
                  loop0:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              addr207:
                              while(true)
                              {
                                 §§push(Boolean(§'d§.isPopupOpenById(TutorialPopup.§[!U§)));
                                 if(_loc11_)
                                 {
                                    if(_loc12_ && param3)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             if(_loc12_)
                                             {
                                                while(_loc11_)
                                                {
                                                }
                                                continue loop2;
                                                addr180:
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop0;
                                             }
                                          }
                                          addr160:
                                       }
                                       else
                                       {
                                          §§push(param8);
                                          if(_loc11_ || param1)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc12_ && param3)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr158);
                     }
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr54);
         }
         §§goto(addr64);
      }
      
      private function §4!T§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(_loc4_ || this)
               {
                  if(§§pop() >= this.§7!<§.length)
                  {
                     loop1:
                     for(; _loc4_ || this; if(_loc5_ && _loc3_)
                     {
                        continue;
                     },§§goto(addr99),§§push(§ !g§.§;!'§))
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() >= 0)
                           {
                              if(!_loc5_)
                              {
                                 this.§7!<§.splice(_loc2_,1);
                              }
                              while(true)
                              {
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    addr176:
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       addr180:
                                       _loc2_ = §§pop();
                                       break;
                                    }
                                    §§goto(addr180);
                                 }
                                 addr104:
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr21);
                                 }
                              }
                              while(true)
                              {
                                 addr152:
                                 while(true)
                                 {
                                    _loc3_++;
                                    break loop1;
                                 }
                              }
                              addr181:
                           }
                           while(this.§7!<§.length == 0)
                           {
                              do
                              {
                                 §§push(§ !g§.§;!'§);
                                 if(_loc4_)
                                 {
                                    §§push((§§pop() as §`Y§).§&,§);
                                    while(true)
                                    {
                                       if(§§pop().§ w§())
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          §§push(§ !g§.§;!'§);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push((§§pop() as §`Y§).§&,§);
                                          if(!(_loc5_ && this))
                                          {
                                             continue;
                                          }
                                          addr103:
                                          §§pop().§4"1§(true);
                                       }
                                       §§goto(addr104);
                                    }
                                 }
                                 §§goto(addr103);
                                 §§push((§§pop() as §`Y§).§&,§);
                              }
                              while(!_loc4_);
                              
                              break;
                           }
                           addr21:
                           return;
                        }
                     }
                     while(_loc5_)
                     {
                        §§goto(addr181);
                        §§goto(addr152);
                     }
                     continue;
                  }
                  if(this.§7!<§[_loc3_] == param1.target)
                  {
                     §§goto(addr176);
                  }
                  §§goto(addr152);
               }
               §§goto(addr180);
            }
            §§goto(addr135);
         }
      }
   }
}
