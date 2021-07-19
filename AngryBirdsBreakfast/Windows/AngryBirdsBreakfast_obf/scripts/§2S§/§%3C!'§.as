package §2S§
{
   import §"n§.§<!e§;
   import §#"&§.§4!W§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §7!A§.§9!y§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §@L§.§;!3§;
   import §^!3§.§,"'§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import each.§5<§;
   import flash.display.MovieClip;
   
   public class §<!'§ extends §9!y§
   {
      
      public static const §!6§:int = 50;
      
      protected static const §,o§:String = "MightyEagleButtonVisible";
      
      protected static const §@!3§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §&e§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!6§ = 50;
         }
         do
         {
            §,o§ = "MightyEagleButtonVisible";
            do
            {
               §@!3§ = "MightyEagleButtonPrepareHide";
               do
               {
                  §&e§ = "MightyEagleButtonHide";
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
         while(_loc2_);
         
      }
      
      protected var §>A§:§,"'§;
      
      protected var § g§:§<!e§;
      
      protected var §;!m§:§0]§;
      
      protected var §,@§:String;
      
      protected var §+M§:§;§;
      
      protected var §]D§:§;§;
      
      protected var §'!h§:§;§;
      
      protected var §%W§:§;§;
      
      protected var §^!o§:MovieClip;
      
      protected var §'!6§:Boolean = false;
      
      public function §<!'§(param1:§"!a§, param2:§5!Y§, param3:§,"'§, param4:§4!W§, param5:§6h§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§ g§ = new §<!e§();
            while(true)
            {
               super(param1,param2,param4,param5);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            this.§>A§ = param3;
            if(!_loc7_)
            {
               if(!(_loc7_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§'!6§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!O§.setVisibility(false);
            while(true)
            {
               this.§+M§ = §;§(§!O§.getItemByName("Button_MightyEagle"));
               while(_loc1_ || _loc1_)
               {
                  this.§]D§ = §;§(§!O§.getItemByName("Button_Pause"));
                  loop2:
                  while(true)
                  {
                     this.§'!h§ = §;§(§!O§.getItemByName("Button_Restart"));
                     while(true)
                     {
                        this.§%W§ = §;§(§!O§.getItemByName("Button_FullScreen"));
                        loop4:
                        while(_loc1_ || _loc1_)
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§^!o§ = §!O§.getItemByName("Container_MightyEagle").mClip;
                              if(!(_loc2_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.disable(false);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.enable(param1);
            while(true)
            {
               §!O§.setVisibility(true);
            }
            addr156:
         }
         loop1:
         while(true)
         {
            §!O§.addEventListener(§>!B§.§7"&§,this.onUIInteraction);
            loop2:
            while(true)
            {
               this.§ g§.§[@§(0);
               loop3:
               while(true)
               {
                  this.§6!O§(0);
                  loop4:
                  while(true)
                  {
                     this.§%Q§();
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        this.§,@§ = §,o§;
                        loop6:
                        while(true)
                        {
                           this.§;!m§ = null;
                           addr91:
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop2;
                              }
                              continue loop6;
                           }
                           continue loop2;
                        }
                        addr51:
                        if(_loc3_ || param1)
                        {
                           addr60:
                           this.§+M§.setVisibility(true);
                           addr62:
                           if(!_loc2_)
                           {
                              §§goto(addr25);
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr156);
                  }
               }
            }
            while(true)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§+M§);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr51);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr62);
                     }
                     addr25:
                     return;
                  }
                  break;
               }
               continue loop1;
            }
            §§goto(addr60);
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
               §!O§.setVisibility(false);
               while(!_loc2_)
               {
                  §!O§.removeEventListener(§>!B§.§7"&§,this.onUIInteraction);
                  loop2:
                  for(; !(_loc2_ && param1); if(_loc2_ && param1)
                  {
                     continue;
                  },§§goto(addr69))
                  {
                     this.§]D§.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     loop3:
                     while(true)
                     {
                        this.§'!h§.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        while(true)
                        {
                           this.§=!3§();
                           loop5:
                           while(!_loc2_)
                           {
                              §§push(this.§;!m§);
                              if(_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    §§goto(addr20);
                                 }
                                 while(true)
                                 {
                                    §§push(this.§;!m§);
                                 }
                                 addr47:
                              }
                              loop7:
                              while(true)
                              {
                                 §§pop().stop();
                                 loop8:
                                 while(_loc3_)
                                 {
                                    continue loop2;
                                    while(true)
                                    {
                                       this.§;!m§ = null;
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop8;
                                       addr20:
                                       return;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §6"'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§6!!§.singleton);
            if(!_loc2_)
            {
               §§push(§§pop().§<!S§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop().userProgress);
                  if(!_loc2_)
                  {
                     §§push(§§pop().§,!>§);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                              }
                           }
                           §§goto(addr96);
                        }
                        §§pop();
                        if(_loc1_ || _loc2_)
                        {
                           addr75:
                           §§push(§6!!§.singleton.§<!S§.userProgress.§"!h§(§&" §.currentLevel));
                           if(_loc1_ || this)
                           {
                              addr96:
                              if(!§§pop())
                              {
                              }
                              return;
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     §§goto(addr96);
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!O§(param1);
            loop0:
            while(true)
            {
               §§push(this.§,@§);
               loop1:
               while(true)
               {
                  §§push(§,o§);
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
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§&!"§.§1!D§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop().objects.isPigsAlive());
                                       addr155:
                                       addr129:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr156:
                                          while(_loc2_ || _loc2_)
                                          {
                                          }
                                          continue loop3;
                                       }
                                       loop24:
                                       while(true)
                                       {
                                          §§push(§&!"§.§1!D§);
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop7;
                                          }
                                          §§push(§§pop().slingshot.mSlingShotState == §;!3§.§9"$§);
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr55:
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  addr62:
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     this.§-!V§();
                                                                     addr71:
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr19);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr174:
                                                               while(true)
                                                               {
                                                                  addr130:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,@§);
                                                                     addr133:
                                                                     loop14:
                                                                     while(_loc2_)
                                                                     {
                                                                        §§push(§,o§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           addr137:
                                                                           while(_loc2_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop17:
                                                                              for(; !(_loc3_ && this); while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr148);
                                                                                 }
                                                                                 §§goto(addr156);
                                                                              })
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr148:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    addr112:
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr155);
                                                                           addr86:
                                                                           §§push(§@!3§);
                                                                           if(!(_loc2_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr112);
                                                                           §§push(§§pop() == §§pop());
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr55);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§,@§);
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr86);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr133);
                                                         }
                                                         §§goto(addr71);
                                                      }
                                                      addr19:
                                                      return;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr113);
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              §§goto(addr130);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      protected function §%Q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!o§.scaleX = this.§^!o§.scaleY = 1;
         }
      }
      
      public function §=!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§+M§);
            loop0:
            while(true)
            {
               §§push(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr70:
               while(true)
               {
                  §§pop().setComponentVisualState(§§pop());
                  continue loop0;
               }
            }
         }
      }
      
      protected function §8"'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,@§ = §@!3§;
         }
      }
      
      protected function §-!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§+M§);
            loop0:
            while(true)
            {
               §§push(§%J§.COMPONENT_STATE_DISABLED);
               addr142:
               while(true)
               {
                  §§pop().setComponentState(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr111);
      }
      
      protected function §"d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§;!m§ = §'^§.§2Z§.§!!f§(this.§^!o§,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§;!m§.play();
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§,@§ = §&e§;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §6!O§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§>A§.getScore(10));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = §^!8§.userProgress.getScoreForLevel(§&" §.currentLevel);
         §§push(this.§ g§.getValue());
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc5_)
         {
            if(§§pop() < _loc2_)
            {
               if(!(_loc5_ && param1))
               {
                  addr87:
                  _loc4_ = int(Math.min(_loc2_,this.§ g§.getValue() + param1 * §!6§));
                  if(_loc5_)
                  {
                  }
                  §§goto(addr94);
               }
               this.§ g§.§[@§(_loc4_);
            }
            addr94:
            return;
         }
         §§goto(addr87);
      }
      
      protected function §+s§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
      }
      
      protected function §1!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §&!"§.§1!D§.§1!G§();
            do
            {
               this.§+s§();
               do
               {
                  this.§'!6§ = true;
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_);
            
         }
      }
      
      protected function onUIInteraction(param1:§>!B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§2!,§)
            {
               if(_loc3_)
               {
                  §§goto(addr179);
               }
               else
               {
                  while(true)
                  {
                     addr165:
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §5<§.mouseDown();
                     var _loc2_:* = param1.§3!C§;
                     addr174:
                     if(_loc3_ || this)
                     {
                        if("PAUSE" === _loc2_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc4_ && _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr232:
                              §§push(2);
                              if(_loc3_ || _loc2_)
                              {
                                 addr240:
                              }
                              else
                              {
                                 addr262:
                              }
                           }
                        }
                        else if("RESTART_LEVEL" === _loc2_)
                        {
                           if(_loc3_)
                           {
                              §§push(1);
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr267);
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
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr232);
                              }
                              else
                              {
                                 addr244:
                                 §§push(3);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr262);
                                 }
                              }
                           }
                           else if("FULLSCREEN_BUTTON" === _loc2_)
                           {
                              §§goto(addr244);
                           }
                           else
                           {
                              §§push(4);
                           }
                           §§goto(addr244);
                        }
                        addr267:
                        switch(§§pop())
                        {
                           case 0:
                              dispatchEvent(new §8S§(§8S§.§[!&§));
                              break;
                              addr115:
                           case 1:
                              dispatchEvent(new §8S§(§8S§.§1!K§,§0!S§()));
                              addr36:
                              break;
                              addr105:
                           case 2:
                              §§push(§6!!§.singleton);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop().§<!S§);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().userProgress);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop().§"!h§(§&" §.currentLevel));
                                       if(!(_loc4_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr74:
                                                   addr73:
                                                   addr72:
                                                   addr71:
                                                   if(§6!!§.singleton.§<!S§.userProgress.§,!>§)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.§1!G§();
                                                            if(!_loc3_)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      break;
                                                   }
                                                   addr19:
                                                   break;
                                                }
                                                §§goto(addr115);
                                             }
                                          }
                                          §§goto(addr19);
                                       }
                                       §§goto(addr74);
                                    }
                                    §§goto(addr73);
                                 }
                                 §§goto(addr72);
                              }
                              §§goto(addr71);
                           case 3:
                              §§push(§6!!§.singleton);
                              if(!(_loc4_ && param1))
                              {
                                 §§pop().§%!O§();
                                 if(!_loc4_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr74);
                              §§goto(addr36);
                        }
                        return;
                     }
                     §§goto(addr244);
                     addr174:
                     addr106:
                  }
                  addr180:
               }
            }
            loop1:
            while(true)
            {
               if(param1.§@! § is §;§)
               {
                  if(!_loc4_)
                  {
                     §§push(param1.§3o§);
                     loop2:
                     while(true)
                     {
                        §§push(§6!W§.LISTENER_EVENT_MOUSE_DOWN);
                        while(§§pop() != §§pop())
                        {
                           §§push(param1.§3o§);
                           if(!_loc4_)
                           {
                              §§push(§6!W§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          §5<§.mouseUp();
                                       }
                                       §§goto(addr174);
                                    }
                                    if(!_loc4_)
                                    {
                                       break loop1;
                                    }
                                    break;
                                 }
                                 break loop1;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr174);
               }
               break;
               §§goto(addr180);
            }
            §§goto(addr106);
         }
         addr179:
      }
   }
}
