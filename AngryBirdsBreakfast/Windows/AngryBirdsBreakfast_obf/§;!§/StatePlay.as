package §;!§
{
   import §#"&§.§4!W§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §2S§.§<!'§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §7!A§.§-J§;
   import §7!A§.§9!y§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §]![§.§="+§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §6!X§
   {
      
      public static const §-!q§:String = "StatePlay";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!q§ = "StatePlay";
         }
      }
      
      protected var §>>§:§9!y§;
      
      protected var §?u§:§-J§;
      
      public function StatePlay(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StatePlay")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      private function get §!+§() : §9!y§
      {
         return this.§>>§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §?P§ = new §2W§(this);
            do
            {
               §?P§.init(§#"0§.§+#§.Views.View_LevelPlay[0]);
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      protected function §4!T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§!!H§();
         }
         while(true)
         {
            this.§?I§();
            while(_loc1_ || _loc1_)
            {
               this.§8`§();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §[p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'!'§();
            while(true)
            {
               §§push(this.§>>§);
               if(!(_loc2_ && this))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§?u§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 addr57:
                                 this.§?u§.dispose();
                              }
                              do
                              {
                                 this.§?u§ = null;
                              }
                              while(!_loc1_);
                              
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr63);
                           }
                           break;
                        }
                        §§goto(addr57);
                        §§goto(addr67);
                     }
                  }
                  loop1:
                  while(!_loc2_)
                  {
                     §§push(this.§>>§);
                     while(true)
                     {
                        §§pop().dispose();
                        loop6:
                        while(true)
                        {
                           this.§>>§ = null;
                           addr63:
                           addr67:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                           }
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  continue;
                  return;
               }
               §§goto(addr93);
            }
         }
         §§goto(addr67);
      }
      
      protected function §!!H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§4!W§ = §6!!§.singleton.§<!S§;
         var _loc2_:§"!a§ = §"!a§(§?P§.getItemByName("Container_Pause"));
         if(!_loc3_)
         {
            this.§?u§ = new §="+§(_loc2_,§&" §,_loc1_,§-!]§);
         }
      }
      
      protected function §?I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§4!W§ = §6!!§.singleton.§<!S§;
         var _loc2_:§"!a§ = §"!a§(§?P§.getItemByName("Container_Play"));
         if(!(_loc4_ && this))
         {
            this.§>>§ = new §<!'§(_loc2_,§&" §,§>A§,_loc1_,§-!]§);
         }
      }
      
      protected function §8`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§?u§);
            while(true)
            {
               §§push(§8S§.§[$§);
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§2U§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§?u§);
                     while(true)
                     {
                        §§push(§8S§.§1!K§);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§2U§);
                           while(true)
                           {
                              §§push(this.§?u§);
                              loop6:
                              while(true)
                              {
                                 §§push(§8S§.RESTART_LEVEL);
                                 addr152:
                                 while(_loc1_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§2U§);
                                    while(!_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      protected function §'!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?u§);
            while(true)
            {
               §§push(§8S§.§[$§);
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§2U§);
                  while(true)
                  {
                     §§push(this.§?u§);
                     loop3:
                     while(true)
                     {
                        §§push(§8S§.§1!K§);
                        addr155:
                        while(true)
                        {
                           §§pop().removeEventListener(§§pop(),this.§2U§);
                           addr168:
                           while(true)
                           {
                              §§push(this.§?u§);
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§0!$§();
         }
         do
         {
            super.levelStarted();
            do
            {
               this.§ !D§();
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && this);
         
      }
      
      protected function §0!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!c§.§&j§();
         }
      }
      
      protected function § !D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'!c§.§"V§("LevelStartsBirdsMilitary2");
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
         }
         do
         {
            this.§4!T§();
            do
            {
               this.§+!;§(false,false);
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[p§();
            do
            {
               §6!!§.singleton.§2!h§ = false;
               do
               {
                  super.deActivate();
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      protected function §+!;§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §6!!§.singleton.§2!h§ = param1;
            do
            {
               if(!param1)
               {
                  §§push(this.§>>§);
                  if(!(_loc4_ && param2))
                  {
                     §§push(param2);
                     if(_loc3_)
                     {
                        §§pop().enable(§§pop());
                        while(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              §§push(this.§?u§);
                              if(!_loc4_)
                              {
                                 §§push(param2);
                                 if(_loc3_ || param1)
                                 {
                                    §§pop().disable(§§pop());
                                    if(_loc3_)
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          addr88:
                                       }
                                       return;
                                    }
                                    continue;
                                 }
                                 §§goto(addr88);
                              }
                              else
                              {
                                 addr86:
                                 §§push(param2);
                              }
                              §§pop().enable(§§pop());
                              §§goto(addr88);
                           }
                           else
                           {
                              addr94:
                              §§push(this.§>>§);
                              §§push(param2);
                           }
                        }
                        continue;
                     }
                     §§pop().disable(§§pop());
                     continue;
                  }
               }
               §§goto(addr94);
            }
            while(!_loc3_);
            
            §§goto(addr86);
            §§push(this.§?u§);
         }
         §§goto(addr88);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§>>§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr141:
                              loop15:
                              while(true)
                              {
                                 §§push(this.§>>§);
                                 if(_loc2_)
                                 {
                                    §§push(Boolean(§§pop().§+4§()));
                                    while(true)
                                    {
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§>>§);
                                                addr117:
                                                while(_loc2_)
                                                {
                                                   §§pop().update(param1);
                                                   while(_loc2_)
                                                   {
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             addr115:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§?u§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr86:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.§?u§);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr115);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr96);
                                                            }
                                                            §§goto(addr77);
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop15;
                                                      }
                                                      return;
                                                      addr57:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr96:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(this.§?u§);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr77:
                                                         §§pop().update(param1);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   §§goto(addr79);
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr117);
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      protected function §2U§(param1:§8S§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = param1.type;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§8S§.§[$§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() === _loc3_)
               {
                  if(!(_loc4_ && param1))
                  {
                     addr129:
                     §§push(0);
                     if(!(_loc5_ || this))
                     {
                        addr181:
                     }
                  }
                  else
                  {
                     addr173:
                     §§push(2);
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr181);
                     }
                  }
               }
               else
               {
                  §§push(§8S§.§[!&§);
                  if(_loc5_)
                  {
                     addr142:
                     if(§§pop() === _loc3_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr216);
                     }
                     else
                     {
                        §§push(§8S§.RESUME_LEVEL);
                        if(_loc5_ || this)
                        {
                           addr164:
                           if(§§pop() === _loc3_)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr173);
                              }
                              else
                              {
                                 addr198:
                                 §§push(4);
                                 if(!_loc4_)
                                 {
                                    addr211:
                                 }
                                 §§goto(addr216);
                              }
                           }
                           else
                           {
                              §§push(§8S§.RESTART_LEVEL);
                              if(!_loc4_)
                              {
                                 addr186:
                                 if(§§pop() === _loc3_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(3);
                                       if(_loc5_)
                                       {
                                          §§goto(addr216);
                                       }
                                       else
                                       {
                                          §§goto(addr211);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr198);
                                    }
                                    §§goto(addr216);
                                 }
                                 else
                                 {
                                    §§push(§8S§.§1!K§);
                                 }
                                 §§goto(addr198);
                              }
                              if(§§pop() === _loc3_)
                              {
                                 §§goto(addr198);
                              }
                              else
                              {
                                 addr216:
                                 loop1:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       break;
                                    case 1:
                                       this.§+!;§(true);
                                       break;
                                       addr87:
                                    case 2:
                                       this.§+!;§(false);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       break;
                                    case 3:
                                       this.§=3§();
                                       addr63:
                                       if(_loc5_ || this)
                                       {
                                          addr41:
                                          break;
                                       }
                                       §§goto(addr87);
                                       break;
                                    case 4:
                                       §§push(param1.§0N§);
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §<f§(_loc2_);
                                             if(_loc4_ && _loc2_)
                                             {
                                                break loop1;
                                             }
                                             continue;
                                          }
                                          §§goto(addr63);
                                       }
                                 }
                                 return;
                                 §§push(5);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr216);
            }
            §§goto(addr142);
         }
         §§goto(addr129);
      }
      
      override public function getVictoryStateName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§!+§.isEagleUsed())
            {
               if(_loc2_)
               {
                  §§push(§#!J§.§-!q§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return §>!X§.§-!q§;
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      override public function getLoserStateName() : String
      {
         return §"o§.§-!q§;
      }
      
      protected function §0!S§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §=3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §<f§(this.§0!S§());
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(isTransitioning)
            {
               if(_loc4_)
               {
                  §§goto(addr70);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr54);
                  }
               }
            }
            addr54:
            loop1:
            while(true)
            {
               super.keyUp(param1);
               if(!(_loc4_ || param1))
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc4_)
               {
                  if(Keyboard.R === _loc2_)
                  {
                     addr84:
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        if(!§&!"§.isPaused)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              this.§=3§();
                              if(_loc4_ || _loc2_)
                              {
                                 if(true)
                                 {
                                    addr72:
                                 }
                                 continue;
                                 break loop1;
                              }
                              break loop1;
                           }
                           break loop1;
                        }
                        §§goto(addr72);
                  }
               }
               §§goto(addr84);
            }
            return;
         }
         addr70:
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!isTransitioning)
            {
               loop0:
               for(; §&!"§.§7!2§; while(true)
               {
                  continue loop0;
               })
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr78);
                  }
                  var _loc2_:* = param1.keyCode;
                  if(_loc3_)
                  {
                     if(Keyboard.NUMBER_5 === _loc2_)
                     {
                        if(_loc3_)
                        {
                           addr93:
                           §§push(0);
                           if(_loc4_ && _loc3_)
                           {
                              addr119:
                           }
                        }
                        else
                        {
                           addr106:
                           §§push(1);
                           if(_loc3_)
                           {
                              §§goto(addr119);
                           }
                        }
                        addr124:
                        switch(§§pop())
                        {
                           case 0:
                              §<f§(this.§0!S§());
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              break loop0;
                           case 1:
                              §<f§(this.§0!S§());
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                              break loop0;
                           default:
                              super.keyDown(param1);
                              if(_loc3_)
                              {
                                 if(false)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                        }
                        break;
                     }
                     if(Keyboard.NUMBER_6 === _loc2_)
                     {
                        §§goto(addr106);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr124);
                     §§goto(addr106);
                  }
                  §§goto(addr93);
               }
               return;
            }
            addr78:
            return;
         }
         §§goto(addr79);
      }
      
      public function §[P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>>§.§&$§.listenerUIEventOccured(0,"showTutorial");
         }
      }
   }
}
