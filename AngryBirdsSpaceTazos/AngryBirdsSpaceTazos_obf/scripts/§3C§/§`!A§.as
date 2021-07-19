package §3C§
{
   import § !Y§.§&$§;
   import §!X§.§<!3§;
   import §!X§.§[1§;
   import §0N§.§0!g§;
   import §1%§.§0!3§;
   import §3D§.HighscoreSidebar;
   import §4"§.PopupSidebarEvent;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!B§.§@"@§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §7!H§.AbstractPopup;
   import §77§.§&!>§;
   import §8!_§.§4!U§;
   import §8!_§.StateEpisodeSelection;
   import §<"8§.§6!c§;
   import §<W§.§!!u§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§ f§;
   import §^"#§.§!j§;
   import §^"#§.§]!a§;
   import flash.display.MovieClip;
   
   public class §`!A§ extends AbstractPopup
   {
      
      private static var §4C§:Class;
      
      private static var §+k§:HighscoreSidebar = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4C§ = §;n§;
            do
            {
               §+k§ = null;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §;!V§:§0!3§;
      
      private var §`9§:int = -1;
      
      private var §0!b§:int = -1;
      
      private var §1Y§:§]!a§;
      
      private var §2d§:MovieClip;
      
      private var §`V§:§5!9§;
      
      private var §6">§:§@"@§;
      
      private var §-S§:Vector.<§!j§>;
      
      public function §`!A§(param1:§@"@§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super(§1#§.§'w§,§8"6§.§ K§,§0!g§.§[!y§(§4C§));
         }
         do
         {
            this.§6">§ = param1;
         }
         while(_loc2_);
         
      }
      
      public function get §>!?§() : Vector.<§!j§>
      {
         return this.§-S§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               §§push(§+k§);
               loop1:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §+k§ = new HighscoreSidebar();
                        }
                        addr198:
                     }
                     while(true)
                     {
                     }
                     addr202:
                  }
                  while(true)
                  {
                     §§push(§+k§);
                     loop4:
                     for(; !_loc1_; while(true)
                     {
                        §§push(§+k§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().changeState(HighscoreSidebar.§9"§);
                        §§goto(addr157);
                     })
                     {
                        §§pop().§=y§(§[S§);
                        while(!_loc1_)
                        {
                           this.updateTextFields();
                           loop6:
                           while(_loc2_ || this)
                           {
                              this.§1M§();
                              continue loop4;
                              addr106:
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              this.§1Y§.addEventListener(§ f§.§%@§,this.§8!9§);
                              addr113:
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    addr41:
                                    if(_loc1_ && _loc1_)
                                    {
                                       while(true)
                                       {
                                          this.§2d§ = §[S§.getItemByName("MovieClip_HalEye").mClip;
                                          addr121:
                                          while(_loc2_)
                                          {
                                             this.§`V§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§2d§,{
                                                "scaleX":1.2,
                                                "scaleY":1.2
                                             },{
                                                "scaleX":0.75,
                                                "scaleY":0.75
                                             },1),§!D§.§[!1§.§1"<§(this.§2d§,{
                                                "scaleX":0.75,
                                                "scaleY":0.75
                                             },{
                                                "scaleX":1.2,
                                                "scaleY":1.2
                                             },1));
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr106);
                                                §§goto(addr113);
                                             }
                                             continue loop6;
                                          }
                                          continue loop0;
                                          §§goto(addr41);
                                       }
                                       addr132:
                                    }
                                    addr48:
                                    if(_loc1_ && this)
                                    {
                                       while(true)
                                       {
                                          this.§1Y§ = new §]!a§(30,110,210,211);
                                          continue loop0;
                                          §§goto(addr48);
                                       }
                                       addr157:
                                    }
                                    return;
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr104);
                           }
                        }
                        §§goto(addr202);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr198);
      }
      
      private function §8!9§(param1:§ f§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§`V§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§`V§);
                     while(true)
                     {
                        if(!§§pop().isCompleted)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           addr127:
                           while(true)
                           {
                           }
                        }
                     }
                     return;
                     addr122:
                  }
                  §§goto(addr127);
               }
               loop0:
               while(true)
               {
                  this.§`V§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§2d§,{
                     "scaleX":1.2,
                     "scaleY":1.2
                  },{
                     "scaleX":0.75,
                     "scaleY":0.75
                  },0.1),§!D§.§[!1§.§1"<§(this.§2d§,{
                     "scaleX":0.75,
                     "scaleY":0.75
                  },{
                     "scaleX":1.2,
                     "scaleY":1.2
                  },0.1));
                  while(true)
                  {
                     §§push(this.§`V§);
                     if(_loc2_ || _loc3_)
                     {
                        §§pop().play();
                        if(!_loc3_)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              break loop0;
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr127);
               }
               return;
            }
            §§goto(addr122);
         }
         §§goto(addr127);
      }
      
      public function §1M§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §[S§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
            if(!(_loc3_ && this))
            {
               §[S§.getItemByName("MovieClip_SoundOff").setVisibility(!§+k§.§<!c§());
            }
         }
         §§push(this.§-!%§());
         if(_loc2_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(§+k§);
            loop0:
            while(true)
            {
               §§push(_loc1_);
               addr165:
               while(true)
               {
                  §§pop().§4"1§(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr128);
      }
      
      public function §,A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§1Y§);
            loop0:
            for(; §§pop(); if(!_loc2_)
            {
               continue;
            },§§pop().stop(),if(!_loc3_)
            {
               if(!(_loc2_ || _loc3_))
               {
                  §§goto(addr66);
               }
               addr62:
               §§goto(addr92);
            },§§goto(addr93))
            {
               while(true)
               {
                  if(!param1)
                  {
                     addr66:
                     §§push(this.§1Y§);
                     if(!(_loc2_ || param1))
                     {
                        §§pop().start();
                     }
                     else
                     {
                        addr92:
                        addr93:
                     }
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  continue;
                  continue loop0;
                  return;
               }
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               §§goto(addr92);
               §§push(this.§1Y§);
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §<U§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§+k§);
            loop0:
            while(true)
            {
               §§push(§§pop().container);
               addr86:
               while(true)
               {
                  §§push(§§pop().getItemByName("Button_Credits"));
                  addr88:
                  while(true)
                  {
                     §§push(param1);
                     addr89:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §""8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §+k§.§@Z§(param1);
         }
      }
      
      public function §4"1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §+k§.§4"1§(param1);
         }
      }
      
      public function § w§() : Boolean
      {
         return §+k§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §+k§.§0!H§(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("MUTE" === _loc4_)
            {
               if(_loc5_ || param2)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     addr205:
                  }
               }
               else
               {
                  addr253:
                  §§push(5);
                  if(_loc5_ || this)
                  {
                     addr261:
                  }
               }
            }
            else if("LOGOUT" === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                     §§goto(addr205);
                  }
                  else
                  {
                     addr228:
                  }
               }
               else
               {
                  addr216:
                  §§push(2);
                  if(!_loc5_)
                  {
                     addr283:
                  }
               }
            }
            else if("LOGIN" === _loc4_)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr216);
               }
               else
               {
                  §§goto(addr253);
               }
            }
            else
            {
               if("CREDITS" === _loc4_)
               {
                  if(_loc5_)
                  {
                     addr225:
                     §§push(3);
                     if(!_loc6_)
                     {
                        §§goto(addr228);
                     }
                     else
                     {
                        §§goto(addr261);
                     }
                  }
               }
               else if("TUTORIAL" === _loc4_)
               {
                  if(!(_loc6_ && param3))
                  {
                     §§push(4);
                     if(_loc6_ && param3)
                     {
                     }
                     §§goto(addr288);
                  }
                  else
                  {
                     §§goto(addr253);
                  }
               }
               else
               {
                  if("ENGLISH" === _loc4_)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr253);
                     }
                  }
                  else if("SPANISH" !== _loc4_)
                  {
                     addr288:
                     loop4:
                     switch(§§pop())
                     {
                        case 0:
                           addr158:
                           §§push(§+k§);
                           §§push(§+k§.§<!c§());
                           if(!(_loc6_ && this))
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§@p§(§§pop());
                           §[S§.getItemByName("MovieClip_SoundOff").setVisibility(!§+k§.§<!c§());
                           addr153:
                           break;
                           addr153:
                           addr169:
                        case 1:
                           addr129:
                           § !g§.§;!'§.§>";§.openPopup(new §[%§(this.§6">§));
                           break;
                           addr128:
                           addr134:
                        case 2:
                           §§push(§ !g§.§;!'§);
                           if(_loc5_)
                           {
                              §§push(§§pop().§>";§);
                              if(!(_loc6_ && this))
                              {
                                 §§pop().openPopup(new §&a§(this.§6">§));
                                 break;
                                 addr122:
                              }
                           }
                           else
                           {
                              §§goto(addr128);
                           }
                           §§goto(addr129);
                        case 3:
                           dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§5!<§));
                           if(!_loc6_)
                           {
                              break;
                           }
                           break;
                        case 4:
                           this.§@!h§();
                           addr87:
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr153);
                           break;
                        case 5:
                           this.§5!i§("en");
                           loop0:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 §§push(§+k§);
                                 while(true)
                                 {
                                    §§pop().§"!r§();
                                    addr56:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       if(!(_loc6_ && this))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             addr37:
                                             break loop4;
                                          }
                                          §§goto(addr169);
                                       }
                                       else
                                       {
                                          §§goto(addr87);
                                       }
                                    }
                                 }
                                 addr55:
                              }
                              else
                              {
                                 §§goto(addr122);
                              }
                           }
                           break;
                        case 6:
                           this.§5!i§("es");
                           while(!_loc6_)
                           {
                              if(_loc5_ || param3)
                              {
                                 §§push(§+k§);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop().§"!r§();
                                       if(!_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          if(true)
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr37);
                                       }
                                       break loop4;
                                    }
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    §§goto(addr55);
                                 }
                              }
                              else
                              {
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr56);
                     }
                     return;
                     §§push(7);
                  }
                  §§goto(addr288);
               }
               §§goto(addr288);
               if(_loc5_ || param2)
               {
                  §§goto(addr283);
               }
            }
            §§goto(addr288);
         }
         §§goto(addr225);
      }
      
      protected function §@!h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§<!3§ = § !g§.§;!'§.§@"8§;
         var _loc2_:Vector.<String> = _loc1_.§+!Q§.getTutorialNamesForMapping(§[1§.§'!9§);
         if(!(_loc3_ && this))
         {
            _loc1_.§#!s§(_loc2_,true,true,true,true,null,true,false);
         }
      }
      
      private function §5!i§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§&$§.§[!1§);
            while(true)
            {
               §§pop().setLanguage(param1);
               addr81:
               §§push(§&$§.§[!1§);
               if(!_loc3_)
               {
                  continue;
               }
               §§push(§§pop().§^!2§());
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               param1 = §§pop();
               while(_loc3_)
               {
                  §6!c§.§?!6§("language",param1);
                  if(_loc3_ || param1)
                  {
                     return;
                  }
               }
               while(_loc3_)
               {
                  §§goto(addr81);
               }
               while(true)
               {
                  §7Z§.setLanguage(param1);
                  §§goto(addr79);
               }
               addr79:
               addr86:
            }
         }
         §§goto(addr86);
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §&$§.§[!1§.updateTextFields(§[S§,"HighscoreSidebar");
            do
            {
               this.§^"<§();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §5g§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(int(§§pop()));
            }
            param1 = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(param1);
               §§push(1000 * 60);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() * 60);
               }
               §§pop().§0!b§ = §§pop() / §§pop();
               while(true)
               {
                  this.§`9§ = this.§0!b§ / 24;
                  loop2:
                  while(_loc3_ || _loc2_)
                  {
                     while(true)
                     {
                        this.updateTextFields();
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §^"<§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc6_)
         {
            §§push(this.§`9§);
            loop0:
            while(true)
            {
               §§push(0);
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §[S§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(true);
                     }
                     loop2:
                     while(true)
                     {
                        §[S§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
                        addr230:
                        while(true)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     addr222:
                     _loc1_ = (§[S§.getItemByName("TextField_CompetitionTimeLeft") as §&!>§).§ !'§.text;
                     break;
                     addr223:
                     §§push("x");
                  }
                  else
                  {
                     §§push(this.§0!b§);
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     §§push(0);
                     if(!(_loc6_ || _loc2_))
                     {
                        continue;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(_loc6_)
                        {
                           §[S§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
                        }
                        addr171:
                        if(!(_loc5_ && _loc1_))
                        {
                           §[S§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(true);
                           addr145:
                           if(_loc6_)
                           {
                              §§push((§[S§.getItemByName("TextField_CompetitionTimeLeftHours") as §&!>§).§ !'§.text);
                              if(!_loc5_)
                              {
                                 _loc1_ = §§pop();
                                 §§push("x");
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    _loc4_ = §§pop();
                                    do
                                    {
                                       §§push(_loc1_);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop().replace(_loc4_,this.§0!b§));
                                       }
                                       _loc3_ = §§pop();
                                       do
                                       {
                                          (§[S§.getItemByName("TextField_CompetitionTimeLeftHours") as §&!>§).§ !'§.text = _loc3_;
                                       }
                                       while(_loc5_ && _loc1_);
                                       
                                    }
                                    while(!(_loc6_ || _loc3_));
                                    
                                    §§goto(addr32);
                                 }
                                 break;
                                 addr138:
                              }
                           }
                           else
                           {
                              §§goto(addr230);
                           }
                           §§goto(addr222);
                           addr178:
                        }
                        §§goto(addr223);
                     }
                     else
                     {
                        §[S§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
                        for(; !_loc5_; §[S§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false),if(!_loc6_)
                        {
                           continue;
                        },if(!_loc5_)
                        {
                           §§goto(addr32);
                        }
                        else
                        {
                           §§goto(addr171);
                        })
                        {
                           if(!(_loc5_ && this))
                           {
                              continue;
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr230);
               }
               _loc2_ = §§pop();
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     §§push(§§pop().replace(_loc2_,this.§`9§));
                  }
                  _loc3_ = §§pop();
                  while(_loc6_)
                  {
                     (§[S§.getItemByName("TextField_CompetitionTimeLeft") as §&!>§).§ !'§.text = _loc3_;
                     if(_loc6_ || _loc1_)
                     {
                        addr32:
                     }
                     continue;
                     return;
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      protected function §-!%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§ !g§.§;!'§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §`Y§).§6![§() == StateEpisodeSelection.STATE_NAME);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr79:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(!(_loc1_ || this))
                              {
                                 break loop2;
                              }
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue loop2;
                              }
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        return §§pop();
                        addr60:
                     }
                     return §§pop();
                  }
               }
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.updateLocalization();
         }
         do
         {
            this.updateTextFields();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      override protected function runTransition(param1:§!!u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.runTransition(param1);
         }
      }
      
      public function get §9Z§() : HighscoreSidebar
      {
         return §+k§;
      }
      
      public function get §@!j§() : §@"@§
      {
         return this.§6">§;
      }
      
      public function set §>!?§(param1:Vector.<§!j§>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-S§ = param1;
         }
      }
   }
}
