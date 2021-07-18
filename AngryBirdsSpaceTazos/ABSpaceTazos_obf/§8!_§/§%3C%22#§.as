package §8!_§
{
   import § !Y§.§&$§;
   import § !Y§.§="6§;
   import §%!r§.§3!'§;
   import §3C§.§9!%§;
   import §3C§.§^p§;
   import §3D§.HighscoreSidebar;
   import §4"§.PopupSidebarEvent;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!0§.§3!d§;
   import §7!0§.§8!B§;
   import §7!B§.§2"#§;
   import §7!B§.§@!^§;
   import §7!B§.§@"@§;
   import §7!B§.LoginHandlerEvent;
   import §7!B§.§^!q§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §9y§.§8"3§;
   import §9y§.EpisodeButtonEvent;
   import §9y§.§`"C§;
   import §<"8§.§6!c§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§!j§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import com.rovio.assets.§ !h§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class §<"#§ extends StateEpisodeSelection
   {
      
      private static const §]S§:Number = 0.5;
      
      private static const §,!C§:Number = 82;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §]S§ = 0.5;
         }
         do
         {
            §,!C§ = 82;
         }
         while(_loc2_);
         
      }
      
      private var §9=§:Number;
      
      private var §9!1§:Number;
      
      private var §;"9§:Number;
      
      private var §;z§:Number;
      
      private var §="G§:§5!9§;
      
      protected var §1S§:Number;
      
      private var §7!@§:Boolean = false;
      
      private var §^"+§:Boolean = true;
      
      private var §6B§:§2"#§;
      
      private var §%+§:String;
      
      private var §]"C§:String = "";
      
      private var §+"<§:§8!B§;
      
      private var §27§:int = 2;
      
      private var §94§:String = "";
      
      private var §6">§:§@"@§;
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      public function §<"#§(param1:§9"!§, param2:§3!'§, param3:§@"@§, param4:Boolean, param5:String = "ChapterSelectionState")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param4,param5);
         }
         while(true)
         {
            this.§+"<§ = new §8!B§();
            while(_loc7_)
            {
               this.§6">§ = param3;
               if(!_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§!"&§ = new §&"$§(0,0,0,1);
            loop0:
            while(true)
            {
               super.init();
               while(true)
               {
                  this.§6B§ = new §2"#§();
                  loop2:
                  for(; !(_loc4_ && this); if(_loc4_ && _loc1_)
                  {
                     continue;
                  },while(true)
                  {
                     (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.maxChars = 12;
                     if(_loc5_ || _loc1_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr49);
                  },var _loc1_:int = Math.floor(Math.random() * 3) + 2,var _loc2_:* = 0,while(true)
                  {
                     §§push(_loc2_);
                     if(_loc5_ || _loc1_)
                     {
                        if(§§pop() < _loc1_)
                        {
                           this.§6!-§("");
                           if(_loc4_)
                           {
                              continue;
                           }
                           _loc2_++;
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        §§push(int(Math.floor(Math.random() * 2) + 1));
                        break;
                     }
                     break;
                  },var _loc3_:* = §§pop(),if(_loc5_)
                  {
                     §§push(0);
                     loop8:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr188:
                        while(true)
                        {
                           continue loop8;
                        }
                     }
                  },§§goto(addr185))
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     this.§;"E§();
                     loop3:
                     while(true)
                     {
                        addr38:
                        while(true)
                        {
                           (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§ = new Vector.<§!j§>();
                           addr49:
                           while(!_loc4_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override protected function initChapterLayer() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3,§ = null;
         if(!(_loc4_ && this))
         {
            this.§9=§ = §8!A§.getItemByName("Button_Previous").y;
            while(true)
            {
               §§push(this);
               §§push(this.§9=§);
               if(!_loc4_)
               {
                  §§push(§§pop() - §,!C§);
               }
               §§pop().§9!1§ = §§pop();
               while(true)
               {
                  this.§;"9§ = §8!A§.getItemByName("EnterCode").y;
                  loop2:
                  while(!(_loc4_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§;"9§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - §,!C§);
                        }
                        §§pop().§;z§ = §§pop();
                        loop4:
                        for(; _loc5_; if(_loc4_ && this)
                        {
                           continue;
                        },if(false)
                        {
                           §§goto(addr43);
                        }
                        else
                        {
                           var _loc1_:* = Number(0);
                           if(_loc5_)
                           {
                              §3G§ = new Sprite();
                              if(!_loc4_)
                              {
                                 addr136:
                                 §5!B§.mClip.addChild(§3G§);
                              }
                              var _loc2_:* = int(§6u§.getEpisodeCount() - 1);
                              addr191:
                              if(_loc2_ >= 0)
                              {
                                 _loc3_ = §6u§.getEpisode(_loc2_);
                                 if(!_loc4_)
                                 {
                                    if(!_loc3_.§@!i§)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(this.addEpisode(_loc3_.menuImage,_loc1_,_loc3_));
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc5_ || _loc1_)
                                          {
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    §§push(_loc2_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                 }
                                 §§goto(addr191);
                              }
                              if(!_loc4_)
                              {
                                 this.addExtraButtons(_loc1_);
                                 if(_loc5_)
                                 {
                                    addr211:
                                    this.configureChapterButtons();
                                 }
                                 return;
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr136);
                        })
                        {
                           §5!B§ = §8!A§.getItemByName("Container_ChapterSelection") as § ",§;
                           loop5:
                           while(true)
                           {
                              addr43:
                              while(true)
                              {
                                 §,<§ = [];
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
               §03§ = [];
               if(_loc5_)
               {
                  §§goto(addr34);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr97);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§!j§ = null;
         var _loc3_:§`"C§ = null;
         var _loc4_:* = 0;
         var _loc5_:§`"C§ = null;
         var _loc6_:§5!9§ = null;
         if(!_loc9_)
         {
            super.activate(param1);
         }
         var _loc7_:int = 0;
         var _loc8_:* = (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc8_,_loc7_));
            if(_loc10_ || _loc2_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc7_,_loc8_);
                  if(!_loc9_)
                  {
                     (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.addChild(_loc2_);
                  }
                  continue;
               }
               if(!_loc9_)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc9_ && this))
                     {
                        this.§+z§ = false;
                        if(_loc10_)
                        {
                           §8!A§.container.mClip.addChild(this.§!"&§);
                           while(true)
                           {
                              this.§<e§();
                              loop5:
                              while(true)
                              {
                                 §§push(§ !g§.§;!'§);
                                 while(true)
                                 {
                                    §§pop().§>";§.§@;§();
                                    while(true)
                                    {
                                       §§push(§ !g§.§;!'§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push((§§pop() as §`Y§).§&,§);
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(true);
                                             while(true)
                                             {
                                                §§pop().§4"1§(§§pop());
                                                addr412:
                                                addr388:
                                                while(true)
                                                {
                                                   §§push(§ !g§.§;!'§);
                                                   continue loop8;
                                                }
                                                while(_loc10_ || this)
                                                {
                                                   §§pop().§<U§(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      this.updateLocalization();
                                                      while(true)
                                                      {
                                                         §§push(this.§6">§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(LoginHandlerEvent.§4!Q§);
                                                            addr364:
                                                            while(true)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.§6!I§);
                                                               addr367:
                                                               while(_loc10_)
                                                               {
                                                                  §§push(this.§6">§);
                                                                  continue loop16;
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         addr97:
                                                         if(_loc9_ && _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(1);
                                                         if(_loc10_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc10_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§?E§();
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(this.§%+§)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 §§goto(addr97);
                                                                              }
                                                                              §§goto(addr528);
                                                                           }
                                                                           this.§%+§ = null;
                                                                           §§goto(addr582);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr553);
                                                                  }
                                                                  §§goto(addr367);
                                                                  addr117:
                                                               }
                                                               addr438:
                                                               _loc7_ = 0;
                                                               if(_loc10_)
                                                               {
                                                                  addr441:
                                                                  _loc8_ = §,<§;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc8_,_loc7_));
                                                                     break loop0;
                                                                  }
                                                                  addr493:
                                                               }
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  addr504:
                                                                  §§goto(addr579);
                                                               }
                                                            }
                                                            §§goto(addr547);
                                                         }
                                                         §§goto(addr438);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr532);
                                          }
                                       }
                                    }
                                    if(!(_loc10_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push((§§pop() as §`Y§).§&,§);
                                    if(_loc10_)
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(true);
                                          if(_loc10_)
                                          {
                                             §§pop().§,A§(§§pop());
                                             if(_loc10_ || param1)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §`Y§.§2!M§();
                                                   if(_loc10_ || this)
                                                   {
                                                      §§goto(addr117);
                                                   }
                                                   §§goto(addr504);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr582);
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr387);
                                    }
                                    §§goto(addr532);
                                 }
                              }
                              if(_loc9_ && this)
                              {
                                 continue;
                              }
                              §§push(§ !g§.§;!'§);
                              if(_loc10_ || param1)
                              {
                                 §§goto(addr158);
                              }
                              §§goto(addr532);
                           }
                           addr436:
                        }
                        §§goto(addr553);
                     }
                     §§goto(addr436);
                  }
               }
               §§goto(addr441);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc5_ = §§nextvalue(_loc7_,_loc8_);
               _loc3_ = §,<§[(_loc4_ + (2 - this.§27§)) % 3];
               (_loc6_ = §!D§.§[!1§.§1"<§(_loc5_,{
                  "x":_loc3_.§%f§,
                  "y":_loc3_.§+! §,
                  "scaleX":_loc3_.§=0§,
                  "scaleY":_loc3_.§3"2§,
                  "alpha":1
               },null,0.5,§!D§.§7"-§)).play();
               if(!_loc9_)
               {
                  _loc4_++;
               }
               continue;
            }
            §§goto(addr441);
         }
      }
      
      private function §0!W§(param1:PopupSidebarEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§`"C§ = null;
         var _loc3_:§5!9§ = null;
         for each(_loc2_ in §,<§)
         {
            _loc3_ = §!D§.§[!1§.§1"<§(_loc2_,{"y":-500},null,0.5,§!D§.§7"-§);
            if(!(_loc7_ && this))
            {
               _loc3_.play();
            }
         }
         if(!_loc7_)
         {
            §§push(§ !g§.§;!'§);
            while(true)
            {
               §§push((§§pop() as §`Y§).§&,§);
               addr245:
               while(true)
               {
                  §§push(false);
                  addr246:
                  while(true)
                  {
                     §§pop().§4"1§(§§pop());
                  }
               }
            }
            addr242:
         }
         loop4:
         while(true)
         {
            §§push(§ !g§.§;!'§);
            loop5:
            while(true)
            {
               if(_loc6_)
               {
                  §§push((§§pop() as §`Y§).§&,§);
                  loop6:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§push(true);
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§pop().§<U§(§§pop());
                        loop7:
                        while(true)
                        {
                           if(!§@!^§.§2j§.§8B§)
                           {
                              while(!(_loc7_ && this))
                              {
                                 §§push(§ !g§.§;!'§);
                              }
                              continue loop4;
                              addr190:
                           }
                           else
                           {
                              §§push(§ !g§.§;!'§);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push((§§pop() as §`Y§).§&,§);
                                 if(!(_loc6_ || param1))
                                 {
                                    continue loop6;
                                 }
                                 §§push(§§pop().§9Z§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(false);
                                    if(!_loc7_)
                                    {
                                       §§pop().§0!s§(§§pop());
                                       while(true)
                                       {
                                          if(_loc7_ && _loc2_)
                                          {
                                             addr214:
                                             while(true)
                                             {
                                             }
                                             addr214:
                                          }
                                          while(true)
                                          {
                                             _loc3_.onComplete = this.§%L§;
                                             continue loop7;
                                             §§goto(addr214);
                                          }
                                          addr97:
                                          addr112:
                                          return;
                                          while(_loc6_ || _loc3_)
                                          {
                                             §§push(this);
                                             §§push(this.§9=§);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + 100);
                                             }
                                             §§pop().§#"8§(§§pop());
                                             if(!(_loc6_ || param1))
                                             {
                                                continue;
                                             }
                                             if(!(_loc6_ || param1))
                                             {
                                                continue loop7;
                                             }
                                             if(!(_loc7_ && this))
                                             {
                                                §§goto(addr97);
                                             }
                                             else
                                             {
                                                §§goto(addr190);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop().§2E§(§§pop());
                                       }
                                       addr213:
                                    }
                                    §§goto(addr214);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr212:
                                 }
                                 §§goto(addr213);
                              }
                           }
                           while(!_loc7_)
                           {
                              §§push((§§pop() as §`Y§).§&,§);
                              continue loop6;
                           }
                           continue loop5;
                        }
                     }
                  }
                  §§goto(addr246);
               }
               else
               {
                  §§goto(addr242);
               }
            }
         }
      }
      
      private function §%L§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9"!§ = (§ !g§.§;!'§ as §`Y§).§=!+§;
         if(_loc2_ || this)
         {
            _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§?2§));
            while(true)
            {
               this.§%+§ = HighscoreSidebar.§?2§;
               while(_loc2_ || _loc2_)
               {
                  §8!^§(§>!N§.STATE_NAME);
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      protected function §<e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!"&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr171:
                        do
                        {
                           §§push(this.§+z§);
                           if(!(_loc1_ && this))
                           {
                              if(_loc1_ && _loc1_)
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                           }
                        }
                        while(_loc2_ || _loc2_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     for(; _loc2_ || _loc1_; if(_loc2_ || this)
                     {
                        addr64:
                        break loop4;
                     })
                     {
                        §§push(this.§!"&§);
                        loop6:
                        while(true)
                        {
                           §§pop().mouseEnabled = true;
                           while(true)
                           {
                              this.§+z§ = true;
                              loop8:
                              while(true)
                              {
                                 §§push(this.§!"&§);
                                 loop9:
                                 for(; !_loc1_; while(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr75);
                                    §§goto(addr95);
                                 })
                                 {
                                    §§push(1);
                                    while(true)
                                    {
                                       §§pop().§24§(§§pop());
                                       §§push(0);
                                       addr75:
                                       continue loop8;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§pop().§7t§(§§pop(),0.25);
                                          addr95:
                                          while(true)
                                          {
                                             §§push(this.§!"&§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop6;
                                          addr95:
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              addr50:
                              if(_loc2_ || _loc1_)
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                     §§goto(addr171);
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §0!r§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§!"&§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            §§push(this.§!"&§);
            if(_loc2_)
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
               if(_loc2_ || param1)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      private function §?E§(param1:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in §,<§)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.refresh(param1);
            }
         }
         if(!_loc6_)
         {
            this.§#"8§();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§!j§ = null;
         if(!_loc4_)
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.removeEventListener(PopupSidebarEvent.§5!<§,this.§0!W§);
            loop0:
            while(true)
            {
               if(this.§!"&§.parent == §8!A§.container.mClip)
               {
                  while(true)
                  {
                     §8!A§.container.mClip.removeChild(this.§!"&§);
                     addr288:
                     while(true)
                     {
                     }
                     addr194:
                     while(!(_loc4_ && _loc3_))
                     {
                        continue loop0;
                     }
                  }
               }
               loop3:
               while(true)
               {
                  §8!A§.getItemByName("Button_Login0").setVisibility(false);
                  loop4:
                  while(true)
                  {
                     §8!A§.getItemByName("Button_Login1").setVisibility(false);
                     loop5:
                     while(true)
                     {
                        §8!A§.getItemByName("Button_Login2").setVisibility(false);
                        loop6:
                        while(!_loc4_)
                        {
                           §§push(this.§6">§);
                           while(true)
                           {
                              §§push(LoginHandlerEvent.§!"8§);
                              addr245:
                              addr155:
                              while(true)
                              {
                                 §§pop().removeEventListener(§§pop(),this.§=!>§);
                                 addr248:
                                 while(_loc5_)
                                 {
                                 }
                                 continue loop5;
                              }
                              loop19:
                              for(; !(_loc4_ && _loc1_); §§push(this.§6">§),if(!_loc5_)
                              {
                                 continue;
                              },§§goto(addr123))
                              {
                                 §§push(LoginHandlerEvent.§!"8§);
                                 loop20:
                                 for(; _loc5_; §§push(LoginHandlerEvent.§%&§),if(_loc4_ && this)
                                 {
                                    continue;
                                 },§§pop().removeEventListener(§§pop(),this.§2";§),§§goto(addr149))
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.§6!I§);
                                          loop21:
                                          while(_loc5_)
                                          {
                                             continue loop19;
                                             loop25:
                                             while(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.§+"<§);
                                                loop26:
                                                while(!_loc4_)
                                                {
                                                   §§push(§3!d§.§!e§);
                                                   loop27:
                                                   while(!_loc4_)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.§?!3§);
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(this.§+"<§);
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     §§push(§3!d§.§-l§);
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        §§pop().removeEventListener(§§pop(),this.§21§);
                                                                        loop31:
                                                                        while(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§+"<§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§3!d§.§9!v§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§pop().removeEventListener(§§pop(),this.§%b§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop31;
                                                                                             }
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                §§push(this.§+"<§);
                                                                                                break loop26;
                                                                                             }
                                                                                             continue loop6;
                                                                                             addr149:
                                                                                          }
                                                                                          continue loop27;
                                                                                       }
                                                                                       continue loop30;
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 continue loop26;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
                                                                              break loop21;
                                                                           }
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr248);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop25;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§6B§.removeEventListener(§^!q§.§&e§,this.§1"-§);
                                                         §§goto(addr230);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.§1" §);
                                                      continue loop25;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr107);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr245);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§6">§);
                                          while(true)
                                          {
                                             §§push(LoginHandlerEvent.§4!Q§);
                                             break loop20;
                                             addr123:
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             addr130:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                continue loop20;
                                             }
                                             addr234:
                                             while(true)
                                             {
                                                §§push(LoginHandlerEvent.ERROR);
                                                addr236:
                                                while(true)
                                                {
                                                   §§pop().removeEventListener(§§pop(),this.§4@§);
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr130);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                                 while(true)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§6!I§);
                                    §§goto(addr194);
                                 }
                              }
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr234);
         }
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§]"C§ == this.§94§)
            {
               while(true)
               {
                  this.§]"C§ = "";
                  addr141:
                  while(true)
                  {
                  }
               }
               addr138:
            }
            while(true)
            {
               super.updateLocalization();
               while(true)
               {
                  §&$§.§[!1§.updateTextFields(§8!A§.container,"StateEpisodeSelection");
                  loop4:
                  while(true)
                  {
                     if(!(§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.hasEventListener(MouseEvent.MOUSE_DOWN))
                     {
                        continue;
                     }
                     loop7:
                     while(true)
                     {
                        this.§94§ = (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.text;
                        addr59:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           §§goto(addr138);
                        }
                        addr110:
                        while(true)
                        {
                           continue loop7;
                           addr39:
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 return;
                                 addr48:
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               §§goto(addr141);
            }
         }
         while(true)
         {
            this.§;"E§();
            if(_loc2_ || this)
            {
               §§goto(addr39);
            }
            §§goto(addr59);
         }
         §§goto(addr48);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               if("UNLOCK_POWER_UP" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§push(0);
                     if(!_loc7_)
                     {
                        addr257:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§5!m§());
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 _loc4_ = §§pop();
                                 this.§+"<§.§6!L§(_loc4_);
                                 if(_loc8_ || param2)
                                 {
                                    addr36:
                                    break loop0;
                                 }
                                 addr172:
                              }
                              continue;
                              this.moveToChapter(this.§27§);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              break loop0;
                              addr84:
                              break;
                           case 1:
                              §6!c§.§?!6§("displayFAQ");
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr84);
                              }
                              break;
                           case 2:
                              § !g§.§;!'§.§>";§.openPopup(new §&a§(this.§6">§));
                              if(_loc7_)
                              {
                                 break;
                              }
                              if(true)
                              {
                                 break loop0;
                              }
                              §§goto(addr36);
                              break;
                           case 3:
                              if(!§+!4§)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push((_loc5_ = this).§27§);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       _loc5_.§27§ = _loc6_;
                                    }
                                    if(_loc8_ || this)
                                    {
                                       this.moveToChapter(this.§27§);
                                       if(_loc8_ || this)
                                       {
                                          addr139:
                                          break loop0;
                                       }
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr139);
                           case 4:
                              if(!§+!4§)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push((_loc5_ = this).§27§);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc8_ || param2)
                                    {
                                       _loc5_.§27§ = _loc6_;
                                    }
                                    if(_loc8_)
                                    {
                                       §§goto(addr172);
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr172);
                              }
                        }
                        break;
                     }
                  }
                  else
                  {
                     addr213:
                     §§push(2);
                     if(_loc7_ && param3)
                     {
                        addr230:
                     }
                  }
                  §§goto(addr257);
               }
               else if("CODE_FAQ" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§push(1);
                     if(!_loc8_)
                     {
                     }
                     §§goto(addr257);
                  }
                  else
                  {
                     §§goto(addr213);
                  }
               }
               else if("LOGIN" === _loc5_)
               {
                  if(_loc8_ || param1)
                  {
                     §§goto(addr213);
                  }
                  else
                  {
                     addr227:
                     §§push(3);
                     if(!_loc7_)
                     {
                        §§goto(addr230);
                     }
                  }
               }
               else
               {
                  if("NEXT" === _loc5_)
                  {
                     if(_loc8_)
                     {
                        §§goto(addr227);
                     }
                     else
                     {
                        addr234:
                        §§push(4);
                        if(_loc7_ && param3)
                        {
                        }
                     }
                  }
                  else if("PREVIOUS" === _loc5_)
                  {
                     §§goto(addr234);
                  }
                  else
                  {
                     §§push(5);
                  }
                  §§goto(addr234);
               }
               §§goto(addr257);
            }
            §§goto(addr234);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`"C§ = null;
         if(!_loc5_)
         {
            super.update(param1);
            if(_loc6_)
            {
               addr27:
               this.§<!E§(param1);
            }
            var _loc3_:int = 0;
            for each(_loc2_ in §,<§)
            {
               if(_loc6_ || _loc2_)
               {
                  _loc2_.update(param1);
               }
            }
            if(!_loc5_)
            {
               §§push(this.§7!@§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.moveToChapter(this.§27§);
                        loop3:
                        while(true)
                        {
                           this.§7!@§ = true;
                           loop4:
                           while(_loc6_ || _loc2_)
                           {
                              §="6§.§^!U§(§="6§.§,!&§);
                              loop5:
                              while(true)
                              {
                                 §§push(this.§6">§);
                                 if(_loc6_ || this)
                                 {
                                    continue loop1;
                                 }
                                 addr165:
                                 while(true)
                                 {
                                    §§push(LoginHandlerEvent.§!"8§);
                                    loop11:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§=!>§);
                                       addr170:
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§6">§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(LoginHandlerEvent.ERROR);
                                             addr115:
                                             while(true)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.§4@§);
                                                   while(_loc6_ || this)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop5;
                                                      §§pop().§7j§(§§pop(),this.§6">§.password,true);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr59);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop6;
                                                   addr125:
                                                }
                                                continue loop11;
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr59:
                  return;
               }
            }
            §§goto(addr141);
         }
         §§goto(addr27);
      }
      
      override protected function configureChapterButtons() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         if(!_loc5_)
         {
            this.scrollIndex = 2;
         }
         var _loc1_:* = Number(0);
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < §,<§.length)
         {
            _loc3_ = new § !h§.§["3§("Button_Dot")();
            if(_loc4_ || _loc3_)
            {
               if(_loc2_ == §`_§)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.gotoAndStop("Selected");
                     loop2:
                     while(true)
                     {
                        addr116:
                        loop3:
                        while(true)
                        {
                           _loc3_.x = 20 * _loc2_ - §,<§.length * 20 / 2 + _loc3_.width / 2 + §`Y§.§7O§ / 2;
                           loop4:
                           while(true)
                           {
                              _loc3_.y = (§8!A§.getItemByName("Button_Previous") as §@_§).y;
                              loop5:
                              for(; _loc4_; if(_loc4_ || this)
                              {
                                 while(false)
                                 {
                                    §§goto(addr60);
                                 }
                                 continue loop0;
                                 addr58:
                              })
                              {
                                 this.§8!A§.addChild(_loc3_);
                                 loop6:
                                 while(true)
                                 {
                                    §03§.push(_loc3_);
                                    loop7:
                                    while(!(_loc5_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc5_)
                                                {
                                                   §§push(Number(§§pop() + _loc3_.width));
                                                }
                                                _loc1_ = §§pop();
                                                while(_loc4_)
                                                {
                                                   _loc2_++;
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop5;
                                             addr60:
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc3_.gotoAndStop("UnSelected");
               }
               while(true)
               {
                  §§goto(addr116);
               }
            }
            §§goto(addr58);
         }
      }
      
      override protected function coverFlowScale() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §5!B§.getItemByName("Button_Login0").x = (§,<§[0] as §`"C§).x;
            loop0:
            while(true)
            {
               §5!B§.getItemByName("Button_Login0").y = (§,<§[0] as §`"C§).y;
               while(true)
               {
                  §5!B§.getItemByName("Button_Login0").mClip.scaleX = (§,<§[0] as §`"C§).§?U§();
                  addr287:
                  addr210:
                  while(true)
                  {
                     §5!B§.getItemByName("Button_Login0").mClip.scaleY = (§,<§[0] as §`"C§).§?U§();
                     continue loop0;
                  }
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §5!B§.getItemByName("Button_Login2").x = (§,<§[2] as §`"C§).x;
                  while(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        §5!B§.getItemByName("Button_Login2").y = (§,<§[2] as §`"C§).y;
                        loop9:
                        while(true)
                        {
                           §5!B§.getItemByName("Button_Login2").mClip.scaleX = (§,<§[2] as §`"C§).§?U§();
                           loop10:
                           while(true)
                           {
                              §5!B§.getItemByName("Button_Login2").mClip.scaleY = (§,<§[2] as §`"C§).§?U§();
                              loop11:
                              do
                              {
                                 if(!_loc2_)
                                 {
                                    if(§@!^§.§2j§.§8B§)
                                    {
                                       §8!A§.getItemByName("Button_Login0").setVisibility(false);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop11;
                                          }
                                          if(_loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                addr74:
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §8!A§.getItemByName("Button_Login1").setVisibility(false);
                                                continue;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §8!A§.getItemByName("Button_Login0").setVisibility(true);
                                    continue;
                                 }
                                 continue loop9;
                              }
                              while(!_loc1_);
                              
                              §8!A§.getItemByName("Button_Login1").setVisibility(true);
                              §§goto(addr111);
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §5!B§.getItemByName("Button_Login1").y = (§,<§[1] as §`"C§).y;
                        }
                        addr254:
                     }
                     §§goto(addr242);
                  }
                  while(!_loc2_)
                  {
                     §§goto(addr210);
                     §§goto(addr186);
                  }
                  addr186:
                  §§goto(addr230);
               }
            }
         }
         §§goto(addr254);
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §,<§.length)
            {
               loop1:
               while(true)
               {
                  this.§1S§ = param1;
                  while(_loc3_)
                  {
                     this.§"!y§();
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
               }
               return;
            }
            this.§0!v§(§,<§[_loc2_],_loc2_ - param1);
            while(true)
            {
               _loc2_++;
            }
            addr77:
            while(!_loc3_)
            {
               §§goto(addr77);
            }
         }
      }
      
      private function §"!y§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = §,<§.concat().sort(function(param1:DisplayObject, param2:DisplayObject):Number
                     {
                        return Math.abs(§,<§.indexOf(param2) - §1S§) - Math.abs(§,<§.indexOf(param1) - §1S§);
                     });
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§pop().§§slot[2] = 0;
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                        if(false)
                        {
                           continue loop2;
                        }
                        var _loc2_:int = 0;
                        var _loc3_:* = sortedButtons;
                        addr92:
                        for each(button in _loc3_)
                        {
                           if(_loc5_)
                           {
                              §3G§.setChildIndex(button,index++);
                           }
                           §§goto(addr92);
                        }
                        if(_loc5_)
                        {
                           §5!B§.setObjectToFront(§5!B§.getItemByName("Button_Login0"));
                        }
                        §5!B§.setObjectToFront(§5!B§.getItemByName("Button_Login1"));
                        addr128:
                        if(!_loc4_)
                        {
                           §5!B§.setObjectToFront(§5!B§.getItemByName("Button_Login2"));
                           if(!_loc5_)
                           {
                              §§goto(addr128);
                           }
                           return;
                        }
                        addr136:
                        §§goto(addr136);
                     }
                  }
               }
            }
         }
      }
      
      protected function §0!v§(param1:§`"C§, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = §,<§.indexOf(param1);
         if(_loc5_ || param2)
         {
            if(param2 != 0)
            {
               param1.buttonMode = true;
               loop0:
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_ || this)
                     {
                        continue;
                     }
                     addr80:
                     while(true)
                     {
                        param1.buttonMode = false;
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
               addr50:
            }
            §§goto(addr80);
         }
         §§goto(addr50);
      }
      
      public function get scrollIndex() : Number
      {
         return this.§1S§;
      }
      
      override protected function updateEpisodeButtons() : void
      {
      }
      
      override protected function addEpisode(param1:String, param2:Number, param3:§3,§ = null) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§`"C§ = null;
         if(!(_loc5_ && param3))
         {
            if(param3 != null)
            {
               if(_loc6_)
               {
                  addr32:
                  (_loc4_ = new §`"C§(param3)).addEventListener(MouseEvent.CLICK,this.onChapterClick);
                  if(!(_loc5_ && param3))
                  {
                     _loc4_.addEventListener(EpisodeButtonEvent.§ for§,this.§!>§);
                     while(true)
                     {
                        §3G§.addChild(_loc4_);
                        addr158:
                        while(true)
                        {
                           §,<§.push(_loc4_);
                        }
                        addr93:
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        _loc4_.y -= 500;
                        if(_loc6_)
                        {
                           addr60:
                           if(false)
                           {
                              loop6:
                              while(true)
                              {
                                 _loc4_.§3"2§ = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).mClip.scaleY;
                                 addr74:
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§goto(addr93);
                                    }
                                    addr113:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       addr148:
                                       while(true)
                                       {
                                          _loc4_.§+! § = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).y;
                                          break loop7;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr158);
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       _loc4_.§=0§ = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).mClip.scaleX;
                                       §§goto(addr113);
                                    }
                                    addr153:
                                    while(true)
                                    {
                                       _loc4_.§%f§ = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).x;
                                       §§goto(addr148);
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr153);
               }
            }
            else
            {
               super.addEpisode(param1,param2);
            }
            addr181:
            return 0;
         }
         §§goto(addr32);
      }
      
      override protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(!§+!4§)
            {
               if(!_loc4_)
               {
                  if(§,<§.indexOf(param1.currentTarget) < this.§27§)
                  {
                     if(_loc5_)
                     {
                        addr37:
                        §§push(this.§27§);
                        if(!(_loc4_ && this))
                        {
                           §§push(2);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop());
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§pop();
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(§,<§.indexOf(param1.currentTarget) == 1);
                                             if(_loc5_)
                                             {
                                                addr89:
                                                §§push(§§pop());
                                                if(_loc5_ || this)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§pop();
                                                         if(_loc5_ || this)
                                                         {
                                                            addr108:
                                                            §§push(this.§27§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(1);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr120:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr123:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           var _loc2_:*;
                                                                           §§push((_loc2_ = this).§27§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           var _loc3_:* = §§pop();
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              _loc2_.§27§ = _loc3_;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr181:
                                                                              if(§,<§.indexOf(param1.currentTarget) > this.§27§)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                           }
                                                                           if(§`_§ != this.§27§)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push((_loc2_ = this).§27§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        if(_loc5_)
                                                                        {
                                                                           _loc2_.§27§ = _loc3_;
                                                                        }
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§goto(addr181);
                                                                        }
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            addr198:
                                                            §§push(this.§27§ == 0);
                                                            if(!_loc4_)
                                                            {
                                                               addr201:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr205);
                                                                  }
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr123);
                                                }
                                                §§goto(addr201);
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr201);
                              }
                              addr205:
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr214:
                                 if(§,<§.indexOf(param1.currentTarget) == 2)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§push((_loc2_ = this).§27§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc3_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          _loc2_.§27§ = _loc3_;
                                       }
                                       if(_loc4_ && _loc2_)
                                       {
                                       }
                                       addr288:
                                       this.moveToChapter(this.§27§);
                                    }
                                 }
                                 else
                                 {
                                    §§push((_loc2_ = this).§27§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       _loc2_.§27§ = _loc3_;
                                    }
                                    if(_loc5_ || this)
                                    {
                                    }
                                 }
                                 §§goto(addr292);
                              }
                              addr292:
                              return;
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr181);
               }
               §§goto(addr108);
            }
            §§goto(addr288);
         }
         §§goto(addr37);
      }
      
      protected function §!>§(param1:EpisodeButtonEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:§`"C§ = null;
         var _loc4_:* = 0;
         var _loc5_:§`"C§ = null;
         var _loc6_:§5!9§ = null;
         if(!_loc9_)
         {
            this.§%+§ = param1.levelName;
         }
         var _loc2_:Number = 3;
         if(!_loc9_)
         {
            if(this.§^"+§)
            {
               if(!_loc9_)
               {
                  §§push(1);
                  if(_loc10_ || param1)
                  {
                     _loc4_ = §§pop();
                     addr53:
                     §§push(0);
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:* = §,<§;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc8_,_loc7_));
                     if(!_loc9_)
                     {
                        if(!§§pop())
                        {
                           if(_loc10_ || _loc2_)
                           {
                              if(!(_loc9_ && this))
                              {
                                 if(_loc10_)
                                 {
                                    §§push(§ !g§.§;!'§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push((§§pop() as §`Y§).§&,§);
                                       addr372:
                                       loop9:
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc10_ || _loc2_)
                                          {
                                             §§pop().§4"1§(§§pop());
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§ !g§.§;!'§);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   continue loop8;
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   §§push((§§pop() as §`Y§).§&,§);
                                                   if(!_loc9_)
                                                   {
                                                      addr608:
                                                      §§push(true);
                                                      if(_loc10_)
                                                      {
                                                         break loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().§4"1§(§§pop());
                                                         addr609:
                                                         addr604:
                                                         while(true)
                                                         {
                                                            §§push(§ !g§.§;!'§);
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop17;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push((§§pop() as §`Y§).§&,§);
                                                         }
                                                      }
                                                      addr608:
                                                   }
                                                   addr607:
                                                   while(true)
                                                   {
                                                      §§goto(addr608);
                                                   }
                                                }
                                             }
                                             §§goto(addr609);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§pop().§<U§(§§pop());
                                          loop11:
                                          while(true)
                                          {
                                             _loc6_.onComplete = this.§3!P§;
                                             addr571:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§9=§);
                                                if(_loc10_ || this)
                                                {
                                                   §§push(§§pop() + 130);
                                                }
                                                §§pop().§2!>§(§§pop());
                                                while(_loc10_ || _loc2_)
                                                {
                                                   if(!(_loc10_ || param1))
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(this);
                                                   §§push(this.§9=§);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + 100);
                                                   }
                                                   §§pop().§#"8§(§§pop());
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr503:
                                                      return;
                                                      addr536:
                                                      addr502:
                                                   }
                                                   §§goto(addr609);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§@!^§.§2j§);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(§§pop().verified);
                                             if(_loc10_ || param1)
                                             {
                                                §§push(!§§pop());
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc10_ || _loc3_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      while(!§§pop())
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr265:
                                                      §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr536);
                                                      addr263:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            this.§[!W§();
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr565);
                                                            }
                                                         }
                                                         §§goto(addr503);
                                                      }
                                                      else
                                                      {
                                                         §§push(§@!^§.§#^§(param1.levelName));
                                                         if(!_loc10_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc10_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr571);
                                                         }
                                                         else
                                                         {
                                                            this.§6!P§();
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               §§goto(addr527);
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                      }
                                                      §§goto(addr527);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr265);
                                             }
                                          }
                                          else
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(!(_loc9_ && this))
                                                {
                                                   §§goto(addr265);
                                                   §§push(Boolean(§§pop().§8B§));
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop().§8B§)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(§ !g§.§;!'§);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§pop().§>";§.openPopup(new §&a§(this.§6">§));
                                                               if(!(_loc10_ || _loc2_))
                                                               {
                                                                  break loop3;
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                         }
                                                         break loop3;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr273:
                                                }
                                                §§goto(addr604);
                                             }
                                          }
                                       }
                                    }
                                    _loc7_ = §§pop();
                                    if(!(_loc9_ && this))
                                    {
                                       _loc8_ = §,<§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc8_,_loc7_));
                                          break loop0;
                                       }
                                       addr498:
                                       if(_loc10_)
                                       {
                                          §§goto(addr604);
                                          §§push(§ !g§.§;!'§);
                                       }
                                       addr497:
                                       addr495:
                                    }
                                    §§goto(addr498);
                                 }
                                 §§goto(addr503);
                              }
                              §§goto(addr498);
                           }
                           §§goto(addr497);
                        }
                        else
                        {
                           _loc5_ = §§nextvalue(_loc7_,_loc8_);
                           _loc3_ = §,<§[(_loc4_ + (2 - this.§27§)) % 3];
                           §§push(§!D§.§[!1§);
                           §§push(_loc5_);
                           §§push("x");
                           §§push(_loc3_.§%f§);
                           if(!(_loc9_ && _loc2_))
                           {
                              §§push(param1.x);
                              if(_loc10_ || _loc2_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc9_)
                                 {
                                    addr103:
                                    §§push(§§pop() * _loc2_);
                                 }
                                 §§push("y");
                                 §§push(_loc3_.§+! §);
                                 if(_loc10_ || _loc2_)
                                 {
                                    §§push(param1.y);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc9_)
                                       {
                                          addr122:
                                          §§push(§§pop() * _loc2_);
                                       }
                                       §§push("scaleX");
                                       §§push(_loc3_.§=0§);
                                       if(_loc10_ || this)
                                       {
                                          §§push(§§pop() * _loc2_);
                                       }
                                       §§push("scaleY");
                                       §§push(_loc3_.§3"2§);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * _loc2_);
                                       }
                                       (_loc6_ = §§pop().§1"<§(§§pop(),null,null,0.5,§!D§.§7"-§)).play();
                                       if(_loc10_)
                                       {
                                          _loc4_++;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr103);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr498);
                     }
                     else
                     {
                        _loc5_ = §§nextvalue(_loc7_,_loc8_);
                        _loc3_ = §,<§[(_loc4_ + (2 - this.§27§)) % 3];
                        §§push(§!D§.§[!1§);
                        §§push(_loc5_);
                        §§push("x");
                        §§push(_loc3_.§%f§);
                        if(!_loc9_)
                        {
                           §§push(param1.x);
                           if(!(_loc9_ && this))
                           {
                              addr442:
                              §§push(§§pop() - §§pop());
                              if(_loc10_)
                              {
                                 §§push(_loc2_);
                              }
                              §§push("y");
                              §§push(_loc3_.§+! §);
                              if(!_loc9_)
                              {
                                 §§push(param1.y);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc10_)
                                    {
                                       addr455:
                                       §§push(§§pop() * _loc2_);
                                    }
                                    §§push("scaleX");
                                    §§push(_loc3_.§=0§);
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(§§pop() * _loc2_);
                                    }
                                    §§push("scaleY");
                                    §§push(_loc3_.§3"2§);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() * _loc2_);
                                    }
                                    (_loc6_ = §§pop().§1"<§(§§pop(),null,null,0.5,§!D§.§7"-§)).play();
                                    if(_loc10_ || _loc2_)
                                    {
                                       _loc4_++;
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr455);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr442);
                     }
                  }
               }
               §§goto(addr53);
            }
            else
            {
               §§push(§@!^§.§2j§);
            }
            §§goto(addr273);
         }
         §§goto(addr53);
      }
      
      private function §3!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?!E§(this.§%+§);
         }
      }
      
      private function §?!E§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §6u§.loadLevel(§6u§.getValidLevelId(param1));
         }
         do
         {
            §8!^§(§?!#§.STATE_NAME);
         }
         while(!_loc2_);
         
      }
      
      private function §6!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            § !g§.§;!'§.§>";§.openPopup(new §^p§(§8"3§.LEVEL_LOCKED,§^p§.§>F§));
         }
      }
      
      private function §[!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6B§.§[!W§(§@!^§.§2j§.id);
         }
      }
      
      private function §1"-§(param1:§^!q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§@!^§.§2j§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop().§8B§));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(Boolean(this.§%+§));
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr173:
                                             while(true)
                                             {
                                                §§push(§@!^§.§#^§(this.§%+§));
                                                if(_loc3_)
                                                {
                                                   addr124:
                                                   if(_loc3_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                         §§goto(addr124);
                                                      }
                                                      addr180:
                                                   }
                                                }
                                                addr135:
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop12;
                                                      }
                                                      addr206:
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          addr172:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop9;
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§pop();
                                                loop15:
                                                while(!_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§^"+§);
                                                      if(_loc3_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      addr82:
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.§6!P§();
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr88:
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§?!E§(this.§%+§);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        this.§%+§ = null;
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr116);
                                                                        }
                                                                        addr116:
                                                                     }
                                                                  }
                                                                  §§goto(addr25);
                                                               }
                                                               §§goto(addr50);
                                                            }
                                                            §§goto(addr88);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                }
                                                §§goto(addr199);
                                             }
                                          }
                                          §§goto(addr86);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              break;
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr82);
                              §§push(Boolean(§§pop()));
                           }
                           § !g§.§;!'§.§>";§.openPopup(new §9!%§());
                           addr199:
                           addr25:
                           return;
                        }
                     }
                     §§goto(addr206);
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      override protected function moveToChapter(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§`"C§ = null;
         var _loc4_:§`"C§ = null;
         if(!(_loc7_ && this))
         {
            §§push(this.§27§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.scrollIndex = 3;
                        loop3:
                        while(true)
                        {
                           this.§27§ = 2;
                           while(true)
                           {
                              addr87:
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                              loop16:
                              do
                              {
                                 §8!t§.onComplete = this.onChapterTweenComplete;
                                 loop17:
                                 while(true)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       addr50:
                                       if(!(_loc7_ && param1))
                                       {
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   §8!t§.play();
                                                   if(_loc8_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                this.scrollIndex = -1;
                                                addr158:
                                                while(true)
                                                {
                                                   this.§27§ = 0;
                                                   addr142:
                                                   while(true)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(this.§27§);
                                                         if(_loc7_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               param1 = §§pop();
                                                               break loop17;
                                                            }
                                                            addr146:
                                                            while(true)
                                                            {
                                                               §§push(2);
                                                               if(_loc7_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  continue loop7;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §8!t§ = §!D§.§[!1§.§1"<§(this,{"scrollIndex":param1},null,0.8,§!D§.§!!R§);
                                          §§goto(addr50);
                                       }
                                       addr99:
                                    }
                                    while(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr87);
                                       }
                                       else
                                       {
                                          §§goto(addr142);
                                       }
                                    }
                                    addr104:
                                    while(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          §`_§ = param1;
                                          §§goto(addr99);
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    §+!4§ = true;
                                    §§goto(addr104);
                                 }
                                 continue loop3;
                              }
                              while(false);
                              
                              addr173:
                              var _loc3_:* = §§pop();
                              var _loc5_:int = 0;
                              var _loc6_:* = §,<§;
                              addr244:
                              for each(_loc4_ in _loc6_)
                              {
                                 _loc2_ = §,<§[(_loc3_ + (2 - param1)) % 3];
                                 if(!(_loc7_ && this))
                                 {
                                    §!D§.§[!1§.§1"<§(_loc4_,{
                                       "x":_loc2_.§%f§,
                                       "y":_loc2_.§+! §,
                                       "scaleX":_loc2_.§=0§,
                                       "scaleY":_loc2_.§3"2§
                                    },null,1,§!D§.§7"-§).play();
                                    if(_loc8_ || param1)
                                    {
                                       addr243:
                                       _loc3_++;
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr243);
                              }
                              return;
                              §§push(1);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr146);
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      override protected function onChapterTweenComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.onChapterTweenComplete();
         }
      }
      
      override protected function checkIfPagePassed() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(§§pop() >= §03§.length)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §03§[2 - _loc1_].gotoAndStop("Selected");
                           }
                           else
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr53:
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §§push(this.§1S§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(0.5);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr85:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop2;
                                                               }
                                                               addr129:
                                                            }
                                                         }
                                                         addr127:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §03§[2 - _loc1_].gotoAndStop("UnSelected");
                                                         }
                                                         else
                                                         {
                                                            addr50:
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§goto(addr129);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr126:
                                                }
                                                §§goto(addr127);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr125:
                                             }
                                             §§goto(addr126);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr124:
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr85);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr122:
                                    }
                                    §§goto(addr124);
                                 }
                              }
                           }
                        }
                        addr37:
                        _loc1_++;
                        continue;
                     }
                     §§goto(addr37);
                  }
                  §§goto(addr50);
               }
               else
               {
                  §§push(_loc1_);
               }
               §§goto(addr122);
            }
            §§goto(addr53);
         }
      }
      
      override protected function addExtraButtons(param1:Number) : void
      {
      }
      
      override protected function resetButtons() : void
      {
      }
      
      private function §=!>§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§6">§);
            loop0:
            while(true)
            {
               §§push(LoginHandlerEvent.§!"8§);
               addr118:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§=!>§);
                  continue loop0;
               }
            }
            addr116:
         }
         loop2:
         while(true)
         {
            §§push(this.§6">§);
            if(!(_loc2_ && this))
            {
               §§push(LoginHandlerEvent.ERROR);
               if(!(_loc2_ && _loc3_))
               {
                  §§pop().removeEventListener(§§pop(),this.§4@§);
                  loop3:
                  while(true)
                  {
                     (§ !g§.§;!'§ as §`Y§).§&,§.§1M§();
                     loop4:
                     while(true)
                     {
                        this.deActivate();
                        loop5:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              this.activate(StateEpisodeSelection.STATE_NAME);
                              while(_loc3_)
                              {
                                 this.§?E§();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            else
            {
               §§goto(addr116);
            }
            §§goto(addr118);
         }
      }
      
      private function §4@§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§6">§);
            loop0:
            while(true)
            {
               §§push(LoginHandlerEvent.§!"8§);
               addr72:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§=!>§);
                  continue loop0;
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyDown(param1);
         }
         while(true)
         {
            loop1:
            while(true)
            {
               if(!§`Y§.§1!]§)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  var _loc2_:* = param1.keyCode;
                  if(!(_loc3_ && this))
                  {
                     if(Keyboard.K === _loc2_)
                     {
                        addr96:
                        §§push(0);
                        if(!_loc4_)
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
                           if(!§ !g§.§;!'§.§>";§.§^",§())
                           {
                              if(_loc4_ || this)
                              {
                                 this.§^"+§ = true;
                                 while(true)
                                 {
                                    this.§?E§(this.§^"+§);
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    if(_loc4_ || param1)
                                    {
                                       if(true)
                                       {
                                          addr79:
                                       }
                                       continue loop1;
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr79);
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr116);
            }
         }
         addr116:
      }
      
      private function §6!-§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = new § !h§.§["3§("Asteroid_Ad" + param1)();
         var _loc3_:§!j§ = new §!j§(_loc2_);
         if(_loc4_)
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.push(_loc3_);
         }
      }
      
      private function §<!E§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§!j§ = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            if(!(_loc6_ && this))
            {
               _loc2_.update(param1);
            }
            loop1:
            while(true)
            {
               addr74:
               while(!_loc2_.isAlive)
               {
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §6P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§]"C§ = ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§5!m§();
         }
         loop0:
         while(true)
         {
            ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).setText(param1);
            loop1:
            while(param1 != "")
            {
               loop2:
               while(true)
               {
                  §8!A§.setText(param1,"TextField_TazosCodeEnter");
                  while(!_loc3_)
                  {
                     (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.setSelection(0,param1.length);
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
            }
            return;
         }
      }
      
      private function §1" §(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§6P§(this.§%!<§);
         }
         do
         {
            this.§]"C§ = "";
         }
         while(_loc2_ && this);
         
      }
      
      private function §?!3§(param1:§3!d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§&$§.§[!1§.§^!2§() != "en")
            {
               this.§6P§("Código ya utilizado");
               if(_loc2_)
               {
                  if(_loc3_ && param1)
                  {
                     addr64:
                     this.§6P§("Code already used");
                     addr67:
                  }
                  else
                  {
                     addr48:
                  }
                  return;
               }
               §§goto(addr67);
            }
            §§goto(addr64);
         }
         §§goto(addr48);
      }
      
      private function §21§(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§&$§.§[!1§.§^!2§() != "en")
            {
               this.§6P§("Código incorrecto");
               if(!(_loc2_ && this))
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     addr75:
                     this.§6P§("Incorrect code");
                     addr78:
                  }
                  return;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr75);
      }
      
      private function §%b§(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6P§(this.§%!<§);
         }
      }
      
      private function § !$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
            loop0:
            while(true)
            {
               §§push(this.§]"C§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == this.§94§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr185:
                              while(true)
                              {
                                 §§push(this.§]"C§);
                                 addr162:
                                 while(true)
                                 {
                                    §§push(§§pop() == "Incorrect code");
                                    addr164:
                                    while(true)
                                    {
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           addr184:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           loop6:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§]"C§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() == "Código incorrecto");
                                          if(_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop21:
                                                while(true)
                                                {
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr138:
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§pop();
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§]"C§);
                                                                     loop12:
                                                                     for(; _loc3_; §§push(this.§]"C§),if(_loc2_)
                                                                     {
                                                                        continue;
                                                                     },if(_loc3_ || _loc3_)
                                                                     {
                                                                        continue loop1;
                                                                     },§§goto(addr162))
                                                                     {
                                                                        §§push(§§pop() == "Code already used");
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             this.§]"C§ = "";
                                                                                             while(_loc3_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop8;
                                                                                          addr82:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §8!A§.setText(this.§]"C§,"TextField_TazosCodeEnter");
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr82);
                                                                                          }
                                                                                          §§goto(addr87);
                                                                                       }
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr71:
                                                                                       §§push(§§pop() == "Código ya utilizado");
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr118);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 addr118:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                                 addr118:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr185);
                                                                                    §§goto(addr118);
                                                                                 }
                                                                                 §§goto(addr162);
                                                                                 §§goto(addr138);
                                                                              }
                                                                              continue loop3;
                                                                              addr113:
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr118);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            break;
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§goto(addr164);
                                                      addr146:
                                                   }
                                                   §§goto(addr113);
                                                }
                                             }
                                             addr129:
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                  }
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr185);
      }
      
      public function get §%!<§() : String
      {
         return this.§94§;
      }
      
      private function §6!I§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4"@§();
         }
         do
         {
            this.§<§();
            do
            {
               this.§?E§();
            }
            while(!_loc3_);
            
         }
         while(!(_loc3_ || this));
         
      }
      
      private function §4"@§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§27§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§27§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc3_)
                        {
                           _loc1_.§27§ = _loc2_;
                        }
                        if(_loc3_ && _loc2_)
                        {
                        }
                     }
                     §§goto(addr128);
                  }
                  addr88:
                  §§push(this.§27§);
                  §§push(1);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc4_)
                  {
                     §§push((_loc1_ = this).§27§);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        _loc1_.§27§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr128);
               }
               this.moveToChapter(this.§27§);
               §§goto(addr128);
            }
            §§goto(addr88);
         }
         addr128:
      }
      
      private function §2";§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§]"C§ = "";
         }
         while(true)
         {
            this.§2!>§();
            while(!(_loc3_ && this))
            {
               this.§?E§();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§="G§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§="G§);
                     while(true)
                     {
                        §§pop().stop();
                        addr145:
                        while(true)
                        {
                        }
                     }
                     addr144:
                  }
                  §§goto(addr145);
               }
               while(true)
               {
                  this.§="G§ = §!D§.§[!1§.§1"<§(§8!A§.getItemByName("EnterCode"),{"y":this.§;z§},null,§]S§,§!D§.§7"-§);
                  addr121:
                  while(true)
                  {
                     §§push(this.§="G§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      private function §2!>§(param1:Number = 0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(this.§;"9§);
                     if(!(_loc2_ && this))
                     {
                        addr185:
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           param1 = §§pop();
                           addr186:
                           while(true)
                           {
                           }
                        }
                        addr185:
                     }
                     §§goto(addr185);
                     addr74:
                     if(_loc3_ || _loc2_)
                     {
                        §8!A§.getItemByName("TextField_TazosCodeEnter").setEnabled(false);
                        do
                        {
                           §8!A§.getItemByName("Button_CodeInstructions").setEnabled(false);
                        }
                        while(!(_loc3_ || _loc3_));
                        
                        addr81:
                        if(_loc2_ && this)
                        {
                           loop12:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       break;
                                    }
                                    §§goto(addr74);
                                 }
                                 loop10:
                                 while(!_loc2_)
                                 {
                                    addr132:
                                    §§push(this.§="G§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§pop().play();
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   break;
                                                }
                                                §8!A§.getItemByName("Button_SubmitCode").setEnabled(false);
                                                continue loop12;
                                             }
                                             addr149:
                                             while(true)
                                             {
                                                §§push(this.§="G§);
                                                addr128:
                                                while(true)
                                                {
                                                   §§pop().§%S§ = false;
                                                   continue loop10;
                                                   §§goto(addr132);
                                                }
                                                continue loop11;
                                             }
                                          }
                                          addr110:
                                       }
                                       else
                                       {
                                          addr158:
                                          while(true)
                                          {
                                             §§pop().stop();
                                          }
                                          addr158:
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          addr133:
                                          while(true)
                                          {
                                             this.§="G§ = §!D§.§[!1§.§1"<§(§8!A§.getItemByName("EnterCode"),{"y":param1},null,§]S§,§!D§.§7"-§);
                                             §§goto(addr149);
                                             continue loop5;
                                          }
                                       }
                                    }
                                    §§goto(addr128);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr158);
                                 }
                                 addr156:
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr186);
                        }
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§="G§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr156);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr158);
                  §§goto(addr186);
               }
            }
            §§goto(addr185);
         }
         §§goto(addr149);
      }
      
      private function §#"8§(param1:Number = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc6_ && param1))
                  {
                     addr33:
                     if(!§@!^§.§2j§.§8B§)
                     {
                        if(_loc5_)
                        {
                           §§push(this.§9=§);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                                 param1 = §§pop();
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr71:
                                    for each(_loc2_ in §03§)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(§!D§.§[!1§);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(§§pop().§1"<§(_loc2_,{"y":param1},null,§]S§,§!D§.§7"-§));
                                             loop2:
                                             while(true)
                                             {
                                                §§pop().play();
                                                addr182:
                                                while(true)
                                                {
                                                   addr126:
                                                   while(true)
                                                   {
                                                      §§push(§!D§.§[!1§);
                                                      addr129:
                                                      while(_loc5_)
                                                      {
                                                         §§push(§§pop().§1"<§(§8!A§.getItemByName("Button_Previous") as §@_§,{"y":param1},null,§]S§,§!D§.§7"-§));
                                                         continue loop2;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§!D§.§[!1§);
                                          if(_loc5_)
                                          {
                                             §§goto(addr101);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    return;
                                    addr59:
                                 }
                                 §§goto(addr71);
                              }
                              else
                              {
                                 addr69:
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr71);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr71);
                     }
                     else
                     {
                        §§push(this.§9!1§);
                        if(_loc5_ || _loc2_)
                        {
                           §§goto(addr69);
                        }
                     }
                     param1 = §§pop();
                     §§goto(addr71);
                  }
                  §§goto(addr59);
               }
               §§goto(addr71);
            }
            §§goto(addr69);
         }
         §§goto(addr33);
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         §§push(_loc3_.x + _loc3_.width - _loc2_.x);
         if(_loc4_)
         {
            return §§pop() + _loc2_.width / 2;
         }
      }
      
      public function §;"E§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:TextField = §8!A§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §8!A§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §8!A§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         if(_loc4_)
         {
            _loc2_.width = this.§#I§(_loc1_);
            do
            {
               _loc3_.width = _loc2_.width;
               do
               {
                  this.§45§(_loc1_);
               }
               while(_loc5_);
               
            }
            while(_loc5_ && _loc3_);
            
         }
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TextFormat = new TextFormat();
         if(_loc3_)
         {
            _loc2_.italic = true;
            do
            {
               param1.setTextFormat(_loc2_);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§5!m§());
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:TextField = ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§;
         if(!_loc4_)
         {
            §§push(_loc2_ == "");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr106:
                     while(true)
                     {
                        §§push(param1.target == _loc3_);
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        addr77:
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        this.§6P§(this.§%!<§);
                        addr85:
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr85);
      }
   }
}
