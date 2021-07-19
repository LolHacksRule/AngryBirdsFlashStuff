package § !9§
{
   import §!""§.§]H§;
   import §#!`§.§3!o§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §0!q§.§;!-§;
   import §1![§.§`w§;
   import §24§.§=!L§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §4!i§.§@t§;
   import §9!p§.§4!9§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §@V§.§0"§;
   import flash.display.MovieClip;
   
   public class §1" § extends §4!9§
   {
      
      public static const § !g§:int = 50;
      
      protected static const §!!r§:String = "MightyEagleButtonVisible";
      
      protected static const §[Z§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §=!7§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § !g§ = 50;
            while(true)
            {
               §!!r§ = "MightyEagleButtonVisible";
               loop2:
               while(!(_loc2_ && §1" §))
               {
                  §=!7§ = "MightyEagleButtonHide";
                  if(_loc1_)
                  {
                     addr44:
                     if(!(_loc1_ || §1" §))
                     {
                        while(true)
                        {
                           §[Z§ = "MightyEagleButtonPrepareHide";
                           continue loop2;
                           §§goto(addr44);
                        }
                        addr78:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected var §4!"§:§3!o§;
      
      protected var §-!c§:§@t§;
      
      protected var §1!x§:§]W§;
      
      protected var §2$§:String;
      
      protected var §&!?§:§]"%§;
      
      protected var §?!4§:§]"%§;
      
      protected var §6C§:§]"%§;
      
      protected var §&R§:§]"%§;
      
      protected var § $§:MovieClip;
      
      protected var §5x§:Boolean = false;
      
      public function §1" §(param1:§,6§, param2:§0![§, param3:§3!o§, param4:§`w§, param5:§+f§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§-!c§ = new §@t§();
         }
         while(true)
         {
            super(param1,param2,param4,param5);
            while(!(_loc7_ && this))
            {
               this.§4!"§ = param3;
               if(_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§5x§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!o§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§&!?§ = §]"%§(§!o§.getItemByName("Button_MightyEagle"));
               while(true)
               {
                  this.§?!4§ = §]"%§(§!o§.getItemByName("Button_Pause"));
                  while(_loc1_)
                  {
                     this.§6C§ = §]"%§(§!o§.getItemByName("Button_Restart"));
                     if(_loc1_ || this)
                     {
                        return;
                        addr44:
                     }
                  }
                  continue loop0;
                  addr70:
                  if(!(_loc2_ && this))
                  {
                     this.§ $§ = §!o§.getItemByName("Container_MightyEagle").mClip;
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr37);
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr70);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§&R§ = §]"%§(§!o§.getItemByName("Button_FullScreen"));
                              continue loop4;
                           }
                           §§goto(addr44);
                           addr86:
                        }
                     }
                     addr77:
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.disable(false);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.enable(param1);
            while(true)
            {
               §!o§.setVisibility(true);
            }
            addr145:
         }
         loop1:
         while(true)
         {
            §!o§.addEventListener(§]H§.§59§,this.onUIInteraction);
            addr136:
            while(true)
            {
               this.§-!c§.§!8§(0);
               loop3:
               do
               {
                  this.§8k§(0);
                  addr110:
                  while(!_loc3_)
                  {
                     this.§-u§();
                     do
                     {
                        this.§2$§ = §!!r§;
                        continue loop1;
                     }
                     while(!_loc2_);
                     
                     continue loop3;
                  }
                  §§goto(addr145);
               }
               while(!_loc2_);
               
               addr24:
               return;
            }
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.disable(param1);
            while(true)
            {
               §!o§.setVisibility(false);
               loop1:
               while(!_loc2_)
               {
                  §!o§.removeEventListener(§]H§.§59§,this.onUIInteraction);
                  while(true)
                  {
                     this.§?!4§.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     loop3:
                     for(; _loc3_ || _loc3_; if(_loc3_ || param1)
                     {
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                        addr20:
                     },continue,return)
                     {
                        this.§6C§.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop4:
                        while(true)
                        {
                           this.§%v§();
                           addr85:
                           while(true)
                           {
                              §§push(this.§1!x§);
                              if(!_loc2_)
                              {
                                 if(§§pop() == null)
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 addr80:
                                 §§pop().stop();
                              }
                              do
                              {
                                 this.§1!x§ = null;
                              }
                              while(!(_loc3_ || param1));
                              
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                           }
                           §§goto(addr20);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §;L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§ !4§.§%"7§);
            if(_loc1_)
            {
               §§push(§§pop().§@D§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop().userProgress);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop().§"W§);
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 addr68:
                                 §§pop();
                                 §§goto(addr92);
                              }
                              §§goto(addr90);
                           }
                           if(!§§pop())
                           {
                           }
                           addr92:
                           if(!_loc2_)
                           {
                              addr85:
                              §§push(§ !4§.§%"7§.§@D§.userProgress.§@"3§(§4a§.currentLevel));
                              if(!_loc2_)
                              {
                                 addr90:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           return;
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr68);
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr68);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§8k§(param1);
            loop0:
            while(true)
            {
               §§push(this.§2$§);
               loop1:
               while(true)
               {
                  §§push(§!!r§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr209:
                                 while(true)
                                 {
                                    §§push(§@!S§.§2A§);
                                    addr174:
                                    while(true)
                                    {
                                       §§push(§§pop().objects.isPigsAlive());
                                       addr176:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                       }
                                    }
                                 }
                              }
                              addr208:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          this.§7"§();
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       addr89:
                                       if(!(_loc2_ && param1))
                                       {
                                          §§goto(addr25);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§2$§);
                                    loop10:
                                    for(; _loc3_; while(true)
                                    {
                                       §§push(this.§2$§);
                                       if(_loc2_ && param1)
                                       {
                                          break;
                                       }
                                       §§goto(addr117);
                                       §§goto(addr82);
                                    })
                                    {
                                       §§push(§!!r§);
                                       while(_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(_loc3_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr80:
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr82:
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr89);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(§@!S§.§2A§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop().slingshot.mSlingShotState == §0"§.§1_§);
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr131:
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop19;
                                                                              }
                                                                              addr155:
                                                                              while(_loc3_ || this)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop18;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                               }
                                                               addr25:
                                                               return;
                                                               addr62:
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         continue loop13;
                                                      }
                                                      addr126:
                                                   }
                                                   §§goto(addr155);
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr208);
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(!(_loc2_ && param1))
                                             {
                                                §§goto(addr62);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§push(§[Z§);
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr126);
                                          §§push(§§pop() == §§pop());
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr209);
      }
      
      protected function §-u§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ $§.scaleX = this.§ $§.scaleY = 1;
         }
      }
      
      public function §%v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§&!?§);
            loop0:
            while(true)
            {
               §§push(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr66:
               while(true)
               {
                  §§pop().setComponentVisualState(§§pop());
                  continue loop0;
               }
            }
         }
      }
      
      protected function §7"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2$§ = §[Z§;
         }
      }
      
      protected function §7!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&!?§);
            loop0:
            while(true)
            {
               §§push(§-!g§.COMPONENT_STATE_DISABLED);
               addr122:
               while(true)
               {
                  §§pop().setComponentState(§§pop());
                  continue loop0;
               }
            }
            addr120:
         }
         loop2:
         while(true)
         {
            §§push(this.§&!?§);
            if(!_loc1_)
            {
               §§push(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc2_)
               {
                  §§pop().setComponentVisualState(§§pop());
                  loop3:
                  while(true)
                  {
                     §§push(this.§1!x§);
                     loop4:
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           while(true)
                           {
                              this.§1!x§ = §0!o§.§,2§.§4!t§(this.§ $§,{
                                 "scaleX":1,
                                 "scaleY":1
                              },null,0.5);
                              addr96:
                              while(true)
                              {
                              }
                           }
                           addr82:
                        }
                        while(true)
                        {
                           this.§2$§ = §=!7§;
                           loop8:
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(this.§1!x§);
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§ !G§;
                                    while(true)
                                    {
                                       §§push(this.§1!x§);
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          §§pop().play();
                                          if(!_loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   return;
                                                }
                                                continue loop3;
                                             }
                                             continue loop8;
                                          }
                                          continue;
                                       }
                                       continue loop9;
                                    }
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 §§goto(addr82);
                              }
                           }
                           §§goto(addr96);
                        }
                     }
                  }
               }
            }
            else
            {
               §§goto(addr120);
            }
            §§goto(addr122);
         }
      }
      
      protected function § !G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§1!x§ = §0!o§.§,2§.§4!t§(this.§ $§,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
         }
         while(true)
         {
            this.§1!x§.play();
            while(!_loc2_)
            {
               this.§2$§ = §=!7§;
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §8k§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§4!"§.getScore(10));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = §6!4§.userProgress.getScoreForLevel(§4a§.currentLevel);
         §§push(this.§-!c§.getValue());
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc6_ || _loc2_)
         {
            if(§§pop() < _loc2_)
            {
               if(_loc6_)
               {
                  addr87:
                  _loc4_ = int(Math.min(_loc2_,this.§-!c§.getValue() + param1 * § !g§));
                  if(_loc5_)
                  {
                  }
                  §§goto(addr94);
               }
               this.§-!c§.§!8§(_loc4_);
            }
            addr94:
            return;
         }
         §§goto(addr87);
      }
      
      protected function §1!I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§ !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel));
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
      }
      
      protected function §!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!S§.§2A§.§!j§();
         }
         while(true)
         {
            this.§1!I§();
            while(_loc2_)
            {
               this.§5x§ = true;
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      protected function onUIInteraction(param1:§]H§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§4R§)
            {
               loop0:
               while(param1.§&!m§ is §]"%§)
               {
                  if(_loc3_ || this)
                  {
                     if(_loc4_ && param1)
                     {
                        §§goto(addr189);
                     }
                     §§push(param1.§66§);
                     loop1:
                     while(true)
                     {
                        §§push(§+§.LISTENER_EVENT_MOUSE_DOWN);
                        while(§§pop() != §§pop())
                        {
                           §§push(param1.§66§);
                           if(_loc3_)
                           {
                              §§push(§+§.LISTENER_EVENT_MOUSE_UP);
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          §=!L§.mouseUp();
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             break loop0;
                                          }
                                          continue loop0;
                                       }
                                       addr179:
                                    }
                                    break loop0;
                                 }
                                 break loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        addr177:
                        while(true)
                        {
                           §=!L§.mouseDown();
                        }
                     }
                  }
                  §§goto(addr179);
               }
               var _loc2_:* = param1.§4o§;
               if(_loc3_)
               {
                  if("PAUSE" === _loc2_)
                  {
                     if(_loc3_ || this)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           addr240:
                        }
                     }
                     else
                     {
                        addr232:
                        §§push(2);
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr240);
                        }
                     }
                  }
                  else if("RESTART_LEVEL" === _loc2_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr232);
                     }
                  }
                  else
                  {
                     if("MIGHTY_EAGLE" === _loc2_)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr232);
                        }
                     }
                     else if("FULLSCREEN_BUTTON" !== _loc2_)
                     {
                        addr262:
                        switch(§§pop())
                        {
                           case 0:
                              dispatchEvent(new §;!-§(§;!-§.§5"+§));
                              break;
                              addr115:
                           case 1:
                              dispatchEvent(new §;!-§(§;!-§.§,d§,§5!B§()));
                              addr40:
                              break;
                              addr105:
                           case 2:
                              addr45:
                              §§push(§ !4§.§%"7§.§@D§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().userProgress);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().§@"3§(§4a§.currentLevel));
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             addr69:
                                             if(§ !4§.§%"7§.§@D§.userProgress.§"W§)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      this.§!j§();
                                                      if(_loc3_ || this)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr115);
                                                }
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr69);
                           case 3:
                              §§push(§ !4§.§%"7§);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop().§]!;§();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(!_loc4_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr105);
                                       }
                                       §§goto(addr40);
                                    }
                                    break;
                                 }
                                 §§goto(addr45);
                              }
                              §§goto(addr69);
                        }
                        return;
                        §§push(4);
                     }
                     §§goto(addr262);
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr262);
               }
               §§goto(addr232);
            }
            addr189:
            return;
         }
         §§goto(addr177);
      }
   }
}
