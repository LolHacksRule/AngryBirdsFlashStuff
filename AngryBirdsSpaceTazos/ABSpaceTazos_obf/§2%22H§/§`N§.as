package §2"H§
{
   import § !Y§.§]!,§;
   import § M§.§]o§;
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §'4§.§3!n§;
   import §+u§.§&!o§;
   import §,"&§.§9q§;
   import §0N§.§5!^§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§@_§;
   import §<W§.§]"+§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^8§.§#h§;
   import §`!j§.§9"!§;
   import flash.display.MovieClip;
   
   public class §`N§ extends §&!o§
   {
      
      public static const §+"4§:int = 50;
      
      protected static const §`]§:String = "MightyEagleButtonVisible";
      
      protected static const §9!e§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §7!z§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §+"4§ = 50;
            while(true)
            {
               §`]§ = "MightyEagleButtonVisible";
               while(true)
               {
                  §9!e§ = "MightyEagleButtonPrepareHide";
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            §7!z§ = "MightyEagleButtonHide";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      protected var §!K§:§]o§;
      
      protected var §]s§:§]!,§;
      
      protected var §=G§:§5!9§;
      
      protected var §2o§:String;
      
      protected var §]!!§:§@_§;
      
      protected var §-!7§:§@_§;
      
      protected var §7"!§:§@_§;
      
      protected var §#U§:§@_§;
      
      protected var § !§:MovieClip;
      
      protected var §"!K§:Boolean = false;
      
      public function §`N§(param1:§ ",§, param2:§9"!§, param3:§]o§, param4:§=!_§, param5:§3!'§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§]s§ = new §]!,§();
         }
         do
         {
            super(param1,param2,param4,param5);
            do
            {
               this.§!K§ = param3;
            }
            while(!_loc6_);
            
         }
         while(_loc7_);
         
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§"!K§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §,!w§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§]!!§ = §@_§(§,!w§.getItemByName("Button_MightyEagle"));
               while(true)
               {
                  this.§-!7§ = §@_§(§,!w§.getItemByName("Button_Pause"));
                  continue loop0;
                  addr84:
                  loop3:
                  while(_loc1_ || this)
                  {
                     this.§#U§ = §@_§(§,!w§.getItemByName("Button_FullScreen"));
                     while(_loc1_ || _loc2_)
                     {
                        this.§ !§ = §,!w§.getItemByName("Container_MightyEagle").mClip;
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              return;
                              addr49:
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.disable(false);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.enable(param1);
            loop0:
            while(true)
            {
               §,!w§.setVisibility(true);
               while(true)
               {
                  §,!w§.addEventListener(§]"+§.§`!C§,this.onUIInteraction);
                  loop2:
                  for(; !_loc2_; if(!(_loc3_ || param1))
                  {
                     continue;
                  })
                  {
                     this.§]s§.§-"F§(0);
                     loop3:
                     while(true)
                     {
                        this.§=!H§(0);
                        loop4:
                        while(true)
                        {
                           this.§!!C§();
                           while(true)
                           {
                              this.§2o§ = §`]§;
                              loop6:
                              for(; _loc3_ || _loc3_; while(!(_loc2_ && _loc3_))
                              {
                                 continue loop4;
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 this.§]!!§.setVisibility(true);
                                 §§goto(addr53);
                              })
                              {
                                 this.§=G§ = null;
                                 while(true)
                                 {
                                    this.§"!K§ = false;
                                    continue loop6;
                                    addr53:
                                    if(_loc3_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           if(_loc3_ || _loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§]!!§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr53);
               }
               break;
            }
            §§goto(addr51);
         }
         §§goto(addr25);
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.disable(param1);
         }
         loop0:
         while(true)
         {
            §,!w§.setVisibility(false);
            loop1:
            while(true)
            {
               §,!w§.removeEventListener(§]"+§.§`!C§,this.onUIInteraction);
               loop2:
               while(true)
               {
                  this.§-!7§.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  loop3:
                  while(true)
                  {
                     this.§7"!§.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(_loc3_)
                     {
                        this.§'!e§();
                        loop5:
                        while(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              §§push(this.§=G§);
                              if(_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    addr20:
                                    return;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§=G§);
                                    addr35:
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 addr67:
                              }
                              while(true)
                              {
                                 §§pop().stop();
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                    addr79:
                                    this.§=G§ = null;
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr35);
                                 }
                                 continue loop0;
                                 §§goto(addr67);
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      protected function §2s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§ !g§.§;!'§);
            if(_loc2_ || this)
            {
               §§push(§§pop().§&!`§);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop().userProgress);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop().§3s§);
                     if(!_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc1_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr79:
                                 §§pop();
                                 §§goto(addr108);
                              }
                           }
                           if(!§§pop())
                           {
                           }
                           addr108:
                           if(!(_loc1_ && _loc1_))
                           {
                              addr101:
                              §§push(§ !g§.§;!'§.§&!`§.userProgress.§[l§(§6u§.currentLevel));
                              if(_loc2_)
                              {
                                 addr106:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           return;
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr79);
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr79);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!H§(param1);
            loop0:
            while(true)
            {
               §§push(this.§2o§);
               while(true)
               {
                  §§push(§`]§);
                  addr174:
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
                                 addr178:
                                 while(true)
                                 {
                                    §§push(§9q§.§>!L§);
                                    addr150:
                                    while(true)
                                    {
                                       §§push(§§pop().objects.isPigsAlive());
                                       addr152:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(!§§pop());
                                       }
                                    }
                                 }
                              }
                              addr177:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§,3§();
                                       addr159:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr157:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§2o§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§`]§);
                                       addr128:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             while(_loc2_ || param1)
                                             {
                                                if(§§pop())
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop19:
                                                         while(!(_loc3_ && param1))
                                                         {
                                                            §§pop();
                                                            loop20:
                                                            for(; !_loc3_; if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue;
                                                            },this.§,>§(),§§goto(addr57))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§9q§.§>!L§);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop().slingshot.mSlingShotState == §3!n§.§7!y§);
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        addr35:
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 addr57:
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              return;
                                                                              addr44:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop20;
                                                                                 }
                                                                                 addr138:
                                                                              }
                                                                              §§goto(addr35);
                                                                           }
                                                                           §§goto(addr178);
                                                                           addr78:
                                                                        }
                                                                        §§goto(addr152);
                                                                     }
                                                                     §§goto(addr150);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr157);
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr138);
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
                  }
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  §§push(§9!e§);
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr78);
                        §§push(§§pop() == §§pop());
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr178);
      }
      
      protected function §!!C§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !§.scaleX = this.§ !§.scaleY = 1;
         }
      }
      
      public function §'!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]!!§);
            loop0:
            while(true)
            {
               §§push(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr75:
               while(true)
               {
                  §§pop().setComponentVisualState(§§pop());
                  continue loop0;
               }
            }
            addr73:
         }
         while(true)
         {
            §§push(this.§]!!§);
            if(_loc1_)
            {
               §§push(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc1_ || this)
               {
                  §§pop().setComponentState(§§pop());
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr73);
            }
            §§goto(addr75);
         }
      }
      
      protected function §,3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2o§ = §9!e§;
         }
      }
      
      protected function §,>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]!!§);
            loop0:
            while(true)
            {
               §§push(§@!!§.COMPONENT_STATE_DISABLED);
               addr136:
               while(true)
               {
                  §§pop().setComponentState(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr110);
      }
      
      protected function §5M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=G§ = §!D§.§[!1§.§1"<§(this.§ !§,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
         }
         while(true)
         {
            this.§=G§.play();
            while(_loc1_ || _loc2_)
            {
               this.§2o§ = §7!z§;
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §=!H§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§!K§.getScore(10));
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = §3u§.userProgress.getScoreForLevel(§6u§.currentLevel);
         §§push(this.§]s§.getValue());
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc5_ && _loc2_))
         {
            if(§§pop() < _loc2_)
            {
               if(_loc6_ || _loc2_)
               {
                  addr82:
                  _loc4_ = int(Math.min(_loc2_,this.§]s§.getValue() + param1 * §+"4§));
                  if(_loc5_ && _loc2_)
                  {
                  }
                  §§goto(addr104);
               }
               this.§]s§.§-"F§(_loc4_);
            }
            addr104:
            return;
         }
         §§goto(addr82);
      }
      
      protected function §`""§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§ !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel));
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
      }
      
      protected function §'b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §9q§.§>!L§.§'b§();
            while(true)
            {
               this.§`""§();
               while(!(_loc2_ && _loc2_))
               {
                  this.§"!K§ = true;
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function onUIInteraction(param1:§]"+§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§>!-§)
            {
               loop0:
               while(param1.§"!X§ is §@_§)
               {
                  if(!_loc3_)
                  {
                     §§push(param1.§ !e§);
                     loop1:
                     while(true)
                     {
                        §§push(§+!#§.LISTENER_EVENT_MOUSE_DOWN);
                        while(§§pop() != §§pop())
                        {
                           §§push(param1.§ !e§);
                           if(!_loc3_)
                           {
                              §§push(§+!#§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc4_ || _loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §5!^§.§!!x§();
                                       }
                                       addr187:
                                       break loop0;
                                       addr187:
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 break loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr190);
                  }
                  §5!^§.§-!,§();
                  §§goto(addr187);
               }
               var _loc2_:* = param1.§9X§;
               if(!_loc3_)
               {
                  if("PAUSE" === _loc2_)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§push(0);
                        if(_loc4_ || _loc2_)
                        {
                        }
                        §§goto(addr263);
                     }
                     else
                     {
                        §§goto(addr224);
                     }
                  }
                  else if("RESTART_LEVEL" === _loc2_)
                  {
                     if(_loc4_)
                     {
                        addr224:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr263);
                     }
                     else
                     {
                        addr233:
                        §§push(2);
                        if(_loc4_)
                        {
                           §§goto(addr236);
                        }
                     }
                  }
                  else
                  {
                     if("MIGHTY_EAGLE" === _loc2_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr233);
                        }
                     }
                     else if("FULLSCREEN_BUTTON" !== _loc2_)
                     {
                        addr263:
                        switch(§§pop())
                        {
                           case 0:
                              dispatchEvent(new §#h§(§#h§.§0"1§));
                              break;
                              addr136:
                           case 1:
                              dispatchEvent(new §#h§(§#h§.§&C§,§`!e§()));
                              if(!_loc3_)
                              {
                                 addr51:
                                 break;
                              }
                              break;
                           case 2:
                              §§push(§ !g§.§;!'§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop().§&!`§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop().userProgress);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop().§[l§(§6u§.currentLevel));
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             addr90:
                                             if(§ !g§.§;!'§.§&!`§.userProgress.§3s§)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§'b§();
                                                   if(_loc4_ || this)
                                                   {
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr90);
                           case 3:
                              §§push(§ !g§.§;!'§);
                              if(_loc4_)
                              {
                                 §§pop().§%!N§();
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr51);
                                       }
                                       else
                                       {
                                          §§goto(addr136);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr90);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr90);
                        }
                        return;
                        §§push(4);
                     }
                     §§goto(addr263);
                     if(_loc4_ || param1)
                     {
                     }
                  }
                  §§goto(addr263);
               }
               §§goto(addr233);
            }
            addr190:
            return;
         }
         §§goto(addr187);
      }
   }
}
