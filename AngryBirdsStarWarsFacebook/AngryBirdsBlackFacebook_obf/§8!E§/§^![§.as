package §8!E§
{
   import §!"e§.SyncPopup;
   import §!"e§.§`"W§;
   import §"O§.§"K§;
   import §"O§.§5#F§;
   import §"O§.§^#]§;
   import §"a§.§6#!§;
   import §"k§.§!!J§;
   import §#!'§.§6"]§;
   import §%#W§.§["m§;
   import §+!c§.§]"d§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §7P§.§7"s§;
   import §7P§.§=1§;
   import §;!W§.§7"]§;
   import §;"3§.§+H§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §<"c§.§?#N§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import §^z§.§5S§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §^![§ extends §7"]§
   {
      
      public static const §#"$§:int = 125;
      
      public static const §#!X§:int = 50;
      
      public static const §36§:Number = 0.03;
      
      public static const §]!<§:int = 6000;
      
      public static const §`!§:int = 4500.0;
      
      public static var §2#6§:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#"$§ = 125;
            loop0:
            do
            {
               §#!X§ = 50;
               while(true)
               {
                  §36§ = 0.03;
                  while(!_loc1_)
                  {
                     §]!<§ = 6000;
                     while(_loc2_)
                     {
                        §`!§ = §]!<§ * 0.75;
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(_loc1_ && §^![§);
            
         }
      }
      
      protected var § F§:§6#!§;
      
      protected var §]!§:Boolean;
      
      protected var §9"O§:Boolean;
      
      protected var §3"#§:Boolean;
      
      protected var §8#_§:Number;
      
      protected var §!"r§:Boolean;
      
      protected var §#"S§:Boolean;
      
      protected var §<!B§:Boolean;
      
      protected var §0"-§:§;7§;
      
      protected var §;,§:Number = 0.0;
      
      protected var §9"n§:§^"m§;
      
      protected var §0!`§:§5#F§;
      
      protected var §4"v§:§ #^§;
      
      protected var §-#-§:§'!U§;
      
      protected var §>M§:Boolean;
      
      protected var §0#,§:§"!#§;
      
      protected var §[!Q§:§"#X§;
      
      protected var §+#P§:§@!A§;
      
      protected var §?"]§:§#k§;
      
      protected var §try§:§^#]§;
      
      protected var §0I§:§["m§;
      
      protected var §-#4§:§]"d§;
      
      private var §&"v§:§ #^§;
      
      private var §@!h§:§^"m§;
      
      private var §7!o§:Boolean;
      
      public function §^![§(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§0"-§ = new §;7§();
            while(true)
            {
               this.§ F§ = param3;
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            super(param1,param2,param4,param5);
            if(!(_loc7_ && param2))
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(_loc3_)
         {
            §=#=§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§9"n§ = §^"m§(§=#=§.getItemByName("Button_Pause"));
               loop1:
               while(true)
               {
                  this.§0!`§ = new §5#F§(§^"m§(§=#=§.getItemByName("Button_OpenPowerupMenu")));
                  loop2:
                  while(true)
                  {
                     this.§0I§ = new §["m§(§0"$§(§=#=§.getItemByName("MovieClip_IntroClips")));
                     loop3:
                     while(true)
                     {
                        this.§4"v§ = § #^§(§=#=§.getItemByName("Container_PowerUpButtons"));
                        loop4:
                        while(true)
                        {
                           this.§try§ = new §^#]§(this.§4"v§,this.§0!`§,§@#B§(§4#J§),this.§0I§);
                           while(true)
                           {
                              this.§0#,§ = new §"!#§(§ #^§(§=#=§.getItemByName("Container_MightyEagle")),this.§try§);
                              addr449:
                              while(!_loc2_)
                              {
                                 this.§0#,§.enabled = true;
                                 continue loop1;
                              }
                              continue loop0;
                              loop20:
                              while(_loc3_ || this)
                              {
                                 §^#]§.§>"V§ = true;
                                 loop21:
                                 for(; !_loc2_; if(!(_loc3_ || this))
                                 {
                                    continue;
                                 },§§goto(addr64))
                                 {
                                    §^#]§.§>!e§ = false;
                                    loop22:
                                    for(; !(_loc2_ && this); while(_loc3_ || _loc1_)
                                    {
                                       this.§>M§ = false;
                                       §§goto(addr113);
                                    })
                                    {
                                       this.§]!§ = §?#N§.§"3§;
                                       loop23:
                                       while(true)
                                       {
                                          if(§?#N§.§"3§)
                                          {
                                             loop24:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §?#N§.§"3§ = false;
                                                loop25:
                                                while(true)
                                                {
                                                   this.§[!Q§.§3#X§ = true;
                                                   addr201:
                                                   addr332:
                                                   loop26:
                                                   while(_loc3_ || this)
                                                   {
                                                      §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§["_§,this.§`%§);
                                                      loop27:
                                                      for(; !_loc2_; if(_loc2_ && _loc2_)
                                                      {
                                                         continue;
                                                      },if(!_loc2_)
                                                      {
                                                         return;
                                                      },§§goto(addr449))
                                                      {
                                                         this.§ F§.§,#A§(§6#!§.§8#1§,true);
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(this.§try§.§0"[§(§6"w§.§1!m§));
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  _loc1_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     addr147:
                                                                     while(true)
                                                                     {
                                                                        this.§8#_§ = §]!<§;
                                                                        loop31:
                                                                        while(!_loc2_)
                                                                        {
                                                                           this.§!"r§ = false;
                                                                           while(!(_loc2_ && _loc2_))
                                                                           {
                                                                              this.§3"#§ = false;
                                                                              while(_loc3_)
                                                                              {
                                                                                 this.§9"O§ = false;
                                                                                 continue loop22;
                                                                              }
                                                                              continue loop31;
                                                                           }
                                                                           while(_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§4"h§(false);
                                                                                 break loop22;
                                                                              }
                                                                              §§goto(addr139);
                                                                           }
                                                                           addr139:
                                                                           while(!(_loc2_ && _loc1_))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              this.§-#4§ = new §]"d§(§=#=§,§+!b§,this.§ F§);
                                                                              while(true)
                                                                              {
                                                                                 this.§-#4§.levelStarted(§!!J§(§@#B§(§4#;§.singleton.dataModel).§0s§.§[n§(§+!b§.getEpisodeForLevel(§+!b§.currentLevel).name,§+!b§.currentLevel,false)),§+!b§.currentLevel);
                                                                                 addr367:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§?"]§ = new §#k§(§ #^§(§=#=§.getItemByName("Container_MightyFalconScore")));
                                                                                    break loop21;
                                                                                 }
                                                                                 break loop24;
                                                                              }
                                                                           }
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              this.§+#P§ = new §@!A§(§ #^§(§=#=§.getItemByName("Container_ZoomButtons")));
                                                                              addr410:
                                                                              while(true)
                                                                              {
                                                                                 this.§-#-§ = new §'!U§(§ #^§(§=#=§.getItemByName("Container_ExtraBirdTimer")),this.§try§);
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           addr390:
                                                                        }
                                                                        continue loop25;
                                                                     }
                                                                     addr90:
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            continue loop26;
                                                            addr74:
                                                            if(_loc3_ || this)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  this.§;,§ = 0;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     addr70:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§goto(addr74);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr139);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc3_)
                                                                           {
                                                                              this.§!"r§ = false;
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr90);
                                                                                 }
                                                                                 §§goto(addr132);
                                                                                 addr32:
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           §§goto(addr410);
                                                                           addr113:
                                                                        }
                                                                        §§goto(addr132);
                                                                     }
                                                                     continue loop28;
                                                                     addr64:
                                                                     this.§0r§(0);
                                                                     if(_loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr32);
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §=#=§.getItemByName("CrystalBreakAnimation").mClip.stop();
                                                            continue loop20;
                                                         }
                                                      }
                                                      continue loop23;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§&"v§ = § #^§(§=#=§.getItemByName("Container_RightBottomCorner"));
                                                      break loop24;
                                                      §§goto(addr201);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   this.§@!h§ = §^"m§(§=#=§.getItemByName("Button_Next_Level"));
                                                   §§goto(addr300);
                                                }
                                                break;
                                                §§goto(addr213);
                                             }
                                             addr213:
                                             §§goto(addr377);
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                    while(!(_loc2_ && this))
                                    {
                                       §2#6§ = false;
                                       §§goto(addr279);
                                       §§goto(addr236);
                                    }
                                    addr236:
                                    §§goto(addr367);
                                 }
                                 while(true)
                                 {
                                    this.§?"]§.§="r§(§@#B§(§4#;§.singleton.dataModel).userProgress.getEagleScoreForLevel(§+!b§.currentLevel));
                                    §§goto(addr332);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr302);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.disable(false);
            loop0:
            while(true)
            {
               §§push(this.§0#,§);
               while(true)
               {
                  §§pop().enabled = false;
                  loop2:
                  while(true)
                  {
                     §§push(this.§0#,§);
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     §§pop().dispose();
                     loop3:
                     while(true)
                     {
                        §§push(this.§[!Q§);
                        while(true)
                        {
                           §§pop().removeEventListener(§"#X§.§9!4§,this.§"#A§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§[!Q§);
                              if(_loc2_ && _loc2_)
                              {
                                 break;
                              }
                              §§pop().dispose();
                              loop6:
                              while(true)
                              {
                                 this.§[!Q§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§+#P§.dispose();
                                    loop8:
                                    while(true)
                                    {
                                       this.§+#P§ = null;
                                       loop9:
                                       while(true)
                                       {
                                          this.§0!`§.dispose();
                                          while(!_loc2_)
                                          {
                                             this.§0!`§ = null;
                                             continue loop0;
                                             loop12:
                                             for(; _loc1_ || _loc2_; if(!(_loc1_ || _loc2_))
                                             {
                                                continue;
                                             },this.§0I§ = null,§§goto(addr178))
                                             {
                                                while(true)
                                                {
                                                   this.§-#-§ = null;
                                                   addr221:
                                                   loop14:
                                                   while(_loc1_ || this)
                                                   {
                                                      this.§try§.dispose();
                                                      continue loop7;
                                                      addr114:
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                                      loop27:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§+H§.§["_§);
                                                            while(true)
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.§[D§);
                                                               addr70:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     addr77:
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr178:
                                                                     while(true)
                                                                     {
                                                                        this.§-#4§.dispose();
                                                                        §§goto(addr77);
                                                                     }
                                                                  }
                                                                  while(_loc1_)
                                                                  {
                                                                     this.§-#4§ = null;
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc1_ || _loc2_))
                                                                        {
                                                                           while(!_loc2_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           while(_loc1_ || _loc1_)
                                                                           {
                                                                              this.§0I§.dispose();
                                                                              §§goto(addr183);
                                                                           }
                                                                           addr183:
                                                                           continue loop2;
                                                                           addr197:
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§+H§.§=Z§);
                                                                           addr137:
                                                                           while(true)
                                                                           {
                                                                              §§pop().removeEventListener(§§pop(),this.§`>§);
                                                                              addr140:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                                                                 break loop27;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop8;
                                                            }
                                                            addr67:
                                                         }
                                                         §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                                         addr91:
                                                         break;
                                                         if(_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§+H§.§6p§);
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.§!"b§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§goto(addr114);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr140);
                                                                     }
                                                                  }
                                                                  continue loop14;
                                                                  addr107:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr70);
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            while(!_loc2_)
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.§`%§);
                                                               §§goto(addr107);
                                                            }
                                                            §§goto(addr137);
                                                            addr102:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr67);
                                                         }
                                                         §§goto(addr70);
                                                      }
                                                      while(!_loc2_)
                                                      {
                                                         §§goto(addr102);
                                                         §§push(§+H§.§["_§);
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   continue loop0;
                                                }
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
               }
            }
         }
         §§goto(addr240);
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.enable(param1);
            while(true)
            {
               §=#=§.setVisibility(true);
               while(true)
               {
                  §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                  while(true)
                  {
                     this.§[!Q§.addEventListener(§"#X§.§9!4§,this.§"#A§);
                     loop3:
                     while(true)
                     {
                        this.§0#,§.addEventListener(§"!#§.§9"9§,this.§>B§);
                        loop4:
                        while(true)
                        {
                           §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§=Z§,this.§`>§);
                           while(true)
                           {
                              this.§<!B§ = false;
                              continue loop3;
                              addr102:
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                     while(_loc4_ || param1)
                     {
                        §§goto(addr147);
                        §§push(this.§try§);
                     }
                  }
               }
               while(!(_loc3_ && _loc3_))
               {
                  §§goto(addr120);
                  §§push(this.§try§);
                  §§goto(addr70);
               }
            }
         }
         §§goto(addr133);
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8"f§ = §8"f§(§,!q§.§9!,§);
         if(!(_loc3_ && param1))
         {
            _loc2_.slingshot.removeEventListener(§;x§.§?!i§,this.§5!v§);
            while(true)
            {
               §=#=§.setVisibility(false);
               while(true)
               {
                  §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
                  loop2:
                  while(true)
                  {
                     this.§9"n§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(true)
                     {
                        §§push(§8"f§(§,!q§.§9!,§).§=j§);
                        loop4:
                        while(true)
                        {
                           §§push(§+H§.§["_§);
                           loop5:
                           while(true)
                           {
                              §§pop().removeEventListener(§§pop(),this.§`%§);
                              loop6:
                              while(true)
                              {
                                 §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§+H§.§["_§);
                                    loop8:
                                    while(!(_loc3_ && param1))
                                    {
                                       §§pop().removeEventListener(§§pop(),this.§[D§);
                                       while(true)
                                       {
                                          §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                          while(_loc4_)
                                          {
                                             §§push(§8"f§(§,!q§.§9!,§).§=j§);
                                             continue loop4;
                                             if(_loc4_)
                                             {
                                                §§push(§+H§.§=Z§);
                                                if(!_loc3_)
                                                {
                                                   §§pop().removeEventListener(§§pop(),this.§`>§);
                                                   while(true)
                                                   {
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§[!Q§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§"#X§.§9!4§);
                                                         addr134:
                                                         while(true)
                                                         {
                                                            §§pop().removeEventListener(§§pop(),this.§ in§);
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                   continue loop6;
                                                   addr153:
                                                }
                                                addr180:
                                                while(!_loc3_)
                                                {
                                                   §§pop().removeEventListener(§§pop(),this.§!"b§);
                                                   continue loop2;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      private function §+"q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§>M§)
            {
               §§push(this.§[!Q§);
               loop0:
               while(true)
               {
                  §§pop().§##3§(§`!§ / 1000);
                  loop1:
                  while(true)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.§[!Q§);
                        loop2:
                        for(; !_loc2_; while(true)
                        {
                           §§push(this.§[!Q§);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr67);
                           }
                           §§goto(addr185);
                        })
                        {
                           §§push(§"#X§.§9!4§);
                           while(true)
                           {
                              §§pop().removeEventListener(§§pop(),this.§ in§);
                              §§push(§"#X§.§9!4§);
                              addr67:
                              continue loop2;
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§pop().addEventListener(§§pop(),this.§ in§);
                                 loop5:
                                 for(; !(_loc2_ && this); if(!(_loc1_ || this))
                                 {
                                    continue;
                                 },§§goto(addr36))
                                 {
                                    while(true)
                                    {
                                       addr41:
                                       addr36:
                                       while(true)
                                       {
                                          §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§["_§,this.§[D§);
                                          while(!_loc2_)
                                          {
                                             this.§4"h§(false);
                                             if(_loc1_)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       if(_loc1_)
                                       {
                                          addr38:
                                          if(!_loc1_)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(this.§-#-§);
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().§@"N§);
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§push(§"#X§.§9!4§);
                                                            if(_loc1_)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.§ in§);
                                                               while(true)
                                                               {
                                                                  §§goto(addr41);
                                                                  §§goto(addr36);
                                                               }
                                                               §§goto(addr38);
                                                               addr147:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§"#X§.§9!4§);
                                                            }
                                                            addr152:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().removeEventListener(§§pop(),this.§ in§);
                                                            continue loop11;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr152);
                                                         §§goto(addr171);
                                                      }
                                                      addr171:
                                                      addr151:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§-#-§);
                                                         break loop11;
                                                      }
                                                      addr190:
                                                   }
                                                }
                                                addr186:
                                                while(true)
                                                {
                                                   §§goto(addr151);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().show();
                                                addr193:
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(this.§[!Q§);
                                                   addr185:
                                                   while(true)
                                                   {
                                                      §§pop().hide();
                                                      §§goto(addr186);
                                                      continue loop15;
                                                   }
                                                }
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr147);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr193);
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr96);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = false;
         if(!_loc6_)
         {
            this.§0r§(param1);
            loop0:
            while(true)
            {
               this.§-#4§.run(param1);
               addr58:
               while(true)
               {
                  this.§+#P§.update(param1);
                  addr52:
                  while(true)
                  {
                     addr39:
                     while(true)
                     {
                        this.§try§.update(param1);
                        addr44:
                        while(_loc5_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0I§.update(param1);
            if(_loc5_ || param1)
            {
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr39);
                  }
                  §§goto(addr58);
               }
               §§goto(addr52);
            }
            §§goto(addr44);
         }
         var _loc2_:§8"f§ = §8"f§(§,!q§.§9!,§);
         if(!(_loc6_ && param1))
         {
            §§push(this.§!"r§);
            loop6:
            while(true)
            {
               §§push(!§§pop());
               loop7:
               while(true)
               {
                  §§push(§§pop());
                  loop8:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr568:
                           while(true)
                           {
                              §§push(this.§]!§);
                              addr547:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr548:
                                 while(!(_loc6_ && this))
                                 {
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr567:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        loop14:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop15:
                              while(_loc5_)
                              {
                                 §§pop();
                                 loop16:
                                 while(true)
                                 {
                                    §§push(_loc2_.§-#I§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr344:
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       §§push(§§pop());
                                       loop60:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop61:
                                             while(true)
                                             {
                                                §§pop();
                                                loop62:
                                                while(!_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.isEagleUsed());
                                                            loop85:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop61;
                                                               }
                                                               addr299:
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop86:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop64:
                                                                              while(!(_loc6_ && param1))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       this.§1!D§();
                                                                                       while(true)
                                                                                       {
                                                                                          addr263:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§#"S§);
                                                                                             addr266:
                                                                                             loop67:
                                                                                             while(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop68:
                                                                                                while(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop69:
                                                                                                   for(; _loc5_; §§push(§§pop()),if(_loc6_ && _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr173);
                                                                                                      }
                                                                                                      §§goto(addr102);
                                                                                                   },§§goto(addr466))
                                                                                                   {
                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop70:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§<!B§);
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop75:
                                                                                                                              while(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§5S§(this.§ F§).§`"o§);
                                                                                                                                 loop76:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop70;
                                                                                                                                    }
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop68;
                                                                                                                                    }
                                                                                                                                    if(!(_loc5_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop85;
                                                                                                                                    }
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    loop77:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       addr260:
                                                                                                                                       loop78:
                                                                                                                                       while(!_loc6_)
                                                                                                                                       {
                                                                                                                                          loop79:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§,!q§.§9!,§);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().slingshot);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().mSlingShotState);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§;x§.§,"K§);
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               continue loop86;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop69;
                                                                                                                                                            }
                                                                                                                                                            addr334:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               break loop68;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop37:
                                                                                                                                                         while(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop55:
                                                                                                                                                               while(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop15;
                                                                                                                                                                  }
                                                                                                                                                                  §§pop();
                                                                                                                                                                  while(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8#_§ >= 0);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr425:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§[!Q§);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr441:
                                                                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§@!=§());
                                                                                                                                                                                    while(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§[!Q§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().§0S§();
                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr395:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§+"q§();
                                                                                                                                                                                                   addr529:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr482:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc2_.§-#I§);
                                                                                                                                                                                                         break loop67;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr527:
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr208:
                                                                                                                                                                                             if(!(_loc5_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop77;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop76;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr153);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr568);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr482);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr529);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§!"r§ = true;
                                                                                                                                                                                             break loop78;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr510:
                                                                                                                                                                                          addr540:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr334);
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop68;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr548);
                                                                                                                                                                                    addr386:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr443:
                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§-!X§();
                                                                                                                                                                                       break loop75;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§3#X§);
                                                                                                                                                                                       break loop55;
                                                                                                                                                                                       §§goto(addr443);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§1e§();
                                                                                                                                                                                    §§goto(addr510);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr441:
                                                                                                                                                                                 addr509:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr395);
                                                                                                                                                                           }
                                                                                                                                                                           addr426:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§[!Q§);
                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§@!=§());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr441);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr439:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr404:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§8#_§);
                                                                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - param1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§8#_§ = §§pop();
                                                                                                                                                                                          break loop62;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr438:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr441);
                                                                                                                                                                              }
                                                                                                                                                                              addr533:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr518);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr481);
                                                                                                                                                                     }
                                                                                                                                                                     addr481:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§>M§);
                                                                                                                                                                     addr488:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§,!q§.isPaused);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§-#-§.update(param1);
                                                                                                                                                                                       addr503:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr499:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr330);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr498:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr503);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§,!q§.isPaused);
                                                                                                                                                                           if(_loc6_ && _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop55;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop37;
                                                                                                                                                                              §§goto(addr299);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_.§>O§);
                                                                                                                                                                        break loop79;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop16;
                                                                                                                                                                     addr520:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr482);
                                                                                                                                                               }
                                                                                                                                                               addr469:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr424);
                                                                                                                                                         }
                                                                                                                                                         addr153:
                                                                                                                                                         continue loop14;
                                                                                                                                                         addr466:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr509);
                                                                                                                                                            §§push(this.§[!Q§);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr527);
                                                                                                                                                      }
                                                                                                                                                      addr526:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr571:
                                                                                                                                                §§push(§§pop().slingshot);
                                                                                                                                             }
                                                                                                                                             var _loc3_:§>f§ = §§pop() as §>f§;
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                addr730:
                                                                                                                                                §§push(!this.§7!o§);
                                                                                                                                                if(!this.§7!o§)
                                                                                                                                                {
                                                                                                                                                   addr732:
                                                                                                                                                   §§pop();
                                                                                                                                                   addr703:
                                                                                                                                                   addr733:
                                                                                                                                                   §§push(§,!q§.§9!,§.objects.isPigsAlive());
                                                                                                                                                   if(!(_loc6_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr713:
                                                                                                                                                      addr714:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr686:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr691:
                                                                                                                                                            if(_loc5_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr699:
                                                                                                                                                               §§push(Boolean(_loc3_));
                                                                                                                                                               §§push(Boolean(_loc3_));
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr661:
                                                                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr669:
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.§=#`§);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr607:
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr618);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr730);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr691);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr699);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr661);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr618);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr732);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr713);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr607);
                                                                                                                                                                              addr671:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr733);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr730);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr618);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr714);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr713);
                                                                                                                                                            }
                                                                                                                                                            addr725:
                                                                                                                                                            §§pop();
                                                                                                                                                            §§goto(addr726);
                                                                                                                                                         }
                                                                                                                                                         addr618:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  this.§4"h§(true);
                                                                                                                                                                  addr631:
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr699);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr579);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr669);
                                                                                                                                                               }
                                                                                                                                                               §§push(§,!q§.§9!,§);
                                                                                                                                                               if(_loc5_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr686);
                                                                                                                                                                  §§push(§§pop().slingshot.getBirdCount() <= 0);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr703);
                                                                                                                                                               addr726:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr631);
                                                                                                                                                         }
                                                                                                                                                         addr579:
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr730);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr725);
                                                                                                                                                }
                                                                                                                                                §§goto(addr713);
                                                                                                                                             }
                                                                                                                                             §§goto(addr671);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr526);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§="e§();
                                                                                                                                          §§goto(addr533);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop85;
                                                                                                                                 while(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop62;
                                                                                                                                    }
                                                                                                                                    §§goto(addr208);
                                                                                                                                    §§goto(addr115);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr404);
                                                                                                                                 §§goto(addr235);
                                                                                                                              }
                                                                                                                              addr235:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr569);
                                                                                                                           }
                                                                                                                           §§goto(addr571);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr540);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr539:
                                                                                                                     }
                                                                                                                     §§goto(addr482);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               continue loop67;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   continue loop60;
                                                                                                }
                                                                                                while(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr498);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr486);
                                                                                                }
                                                                                                §§goto(addr330);
                                                                                                §§goto(addr266);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr499);
                                                                                 }
                                                                                 §§goto(addr474);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 §§goto(addr426);
                                                                                 §§goto(addr316);
                                                                              }
                                                                              addr316:
                                                                              §§goto(addr533);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        addr314:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr567);
                                                                     }
                                                                     §§goto(addr568);
                                                                  }
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                         }
                                                         addr370:
                                                      }
                                                      §§goto(addr520);
                                                   }
                                                   §§goto(addr503);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr330);
                                                }
                                             }
                                          }
                                          §§goto(addr314);
                                       }
                                    }
                                 }
                              }
                              continue loop6;
                           }
                           while(true)
                           {
                              §§goto(addr539);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr370);
      }
      
      public function §5!v§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§<!B§ = false;
         }
         do
         {
            if(§8"f§(§,!q§.§9!,§).slingshot.getBirdCount() > 0)
            {
               if(!this.§#"S§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§9"&§();
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     addr73:
                     this.§9"&§();
                     continue;
                  }
               }
               §§goto(addr25);
            }
            §§goto(addr73);
         }
         while(_loc2_ && this);
         
         addr25:
      }
      
      protected function §1!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-#4§.§#"a§ = this.isEagleUsed();
            do
            {
               this.§?"]§.visible = this.isEagleUsed();
            }
            while(_loc1_);
            
         }
      }
      
      public function §-u§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-#-§.§@"N§.§4,§(param1);
            do
            {
               this.§[!Q§.§4,§(param1);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      protected function §,h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0#,§);
            loop0:
            while(true)
            {
               §§push(false);
               addr105:
               while(true)
               {
                  §§pop().enabled = §§pop();
                  continue loop0;
               }
            }
            addr104:
         }
         while(true)
         {
            §§push(this.§0#,§);
            if(_loc2_ || this)
            {
               §§push(true);
               if(_loc2_)
               {
                  §§pop().hide(§§pop());
                  while(true)
                  {
                     §§push(this.§[!Q§);
                     loop4:
                     while(true)
                     {
                        §§push(false);
                        addr75:
                        while(true)
                        {
                           §§pop().enabled = §§pop();
                           continue loop4;
                        }
                     }
                     if(_loc2_ || this)
                     {
                        return;
                     }
                  }
               }
            }
            else
            {
               §§goto(addr104);
            }
            §§goto(addr105);
         }
      }
      
      protected function §9"&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#"S§ = false;
            loop0:
            while(true)
            {
               if(§8"f§(§,!q§.§9!,§).slingshot.getBirdCount() < 1)
               {
                  §§push(this.§0#,§);
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §§push(true);
                           if(!_loc3_)
                           {
                              §§pop().hide(§§pop());
                              loop1:
                              while(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(this.§try§);
                                    if(!(_loc3_ && this))
                                    {
                                       §§pop().§##A§();
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             loop2:
                                             for(; !_loc3_; §§pop().visible = §§pop())
                                             {
                                                §§push(this.§0#,§);
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§1e§();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§try§);
                                                                  addr79:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§&!O§();
                                                                     break loop1;
                                                                  }
                                                                  addr149:
                                                               }
                                                               addr76:
                                                            }
                                                            break;
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.§0#,§);
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     addr122:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        loop7:
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§pop().show(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr205:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§>f§(§,!q§.§9!,§.slingshot).§2!z§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    _loc2_ = §§pop();
                                                                                    addr217:
                                                                                    addr193:
                                                                                    while(§,!q§.§9!,§.slingshot.getCurrentBirdType() != §=1§.§+"§)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    this.§,h§();
                                                                                    break loop3;
                                                                                 }
                                                                                 §§goto(addr236);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§0#,§);
                                                                                    addr172:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       break loop7;
                                                                                    }
                                                                                 }
                                                                                 addr170:
                                                                              }
                                                                           }
                                                                           §§goto(addr149);
                                                                        }
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§pop().enabled = §§pop();
                                                                           addr174:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§0#,§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr137);
                                                                                 }
                                                                                 addr136:
                                                                              }
                                                                              §§goto(addr217);
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        addr137:
                                                                     }
                                                                  }
                                                                  addr121:
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            addr237:
                                                            var _loc1_:* = §§pop();
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§push(this.§[!Q§);
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        addr326:
                                                                        while(true)
                                                                        {
                                                                           §§pop().enabled = §§pop();
                                                                        }
                                                                     }
                                                                     addr325:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§[!Q§);
                                                                     §§goto(addr326);
                                                                  }
                                                                  addr302:
                                                                  §§pop().show();
                                                                  addr246:
                                                                  return;
                                                                  addr327:
                                                                  addr303:
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§[!Q§);
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop().visible = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§[!Q§);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§pop().§1e§();
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     addr300:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr302);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr325);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr76);
                                                      }
                                                      return;
                                                      addr101:
                                                   }
                                                   §§goto(addr136);
                                                }
                                             }
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             addr46:
                                          }
                                          §§push(§8"f§(§,!q§.§9!,§).§8%§(§6"w§.§1!m§));
                                          if(_loc4_ || this)
                                          {
                                             addr236:
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr101);
                                    }
                                    §§goto(addr79);
                                 }
                                 §§goto(addr193);
                              }
                              while(true)
                              {
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr46);
                                    }
                                    else
                                    {
                                       §§goto(addr174);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr98);
               }
               §§goto(addr205);
            }
         }
         §§goto(addr44);
      }
      
      protected function §="e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0#,§);
            loop0:
            while(true)
            {
               §§push(false);
               addr75:
               while(true)
               {
                  §§pop().enabled = §§pop();
                  continue loop0;
               }
            }
            addr74:
         }
         while(true)
         {
            §§push(this.§0#,§);
            if(_loc2_)
            {
               §§push(true);
               if(_loc2_ || _loc1_)
               {
                  §§pop().hide(§§pop());
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§=e§();
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr74);
            }
            §§goto(addr75);
         }
      }
      
      protected function §=e§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§try§.§##A§();
         }
      }
      
      public function §4"h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§pop();
                        addr134:
                        loop10:
                        while(true)
                        {
                           §§push(§2#6§);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§7!o§ = param1;
                                    loop4:
                                    while(true)
                                    {
                                       this.§&"v§.setVisibility(param1);
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop10;
                                          }
                                          §§push(this.§@!h§);
                                          loop6:
                                          while(true)
                                          {
                                             §§pop().setVisibility(param1);
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc2_ || this)
                                                {
                                                   §§push(param1);
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         return;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(this.§@!h§);
                                                         if(!_loc2_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§pop().setComponentVisualState(§1"z§.§##;§);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop10;
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     addr133:
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr134);
      }
      
      protected function §0r§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         §§push(this.§ F§.getScore(10));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§0"-§.getValue());
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || param1)
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               if(§§pop() < _loc2_)
               {
                  while(true)
                  {
                     §§push(int(Math.min(_loc2_,this.§0"-§.getValue() + param1 * §#!X§)));
                     addr173:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr174:
                        while(true)
                        {
                           this.§0"-§.§3"Q§(_loc3_);
                           addr141:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr152:
               }
               loop1:
               while(true)
               {
                  this.§-#4§.§0r§(_loc3_);
                  loop2:
                  while(true)
                  {
                     if(this.isEagleUsed())
                     {
                        loop3:
                        for(; !_loc5_; while(true)
                        {
                           if(!(_loc6_ || param1))
                           {
                              continue loop3;
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           this.§?"]§.updateScore(this.§;,§);
                           if(_loc5_)
                           {
                              continue;
                           }
                           §§goto(addr59);
                        },continue loop2)
                        {
                           if(_loc6_)
                           {
                              §§push(this.§ F§.getEagleScore());
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    while(true)
                                    {
                                       §§push(this.§;,§);
                                       if(!_loc5_)
                                       {
                                          if(§§pop() >= _loc4_)
                                          {
                                             break;
                                          }
                                          do
                                          {
                                             this.§;,§ = Math.min(_loc4_,this.§;,§ + param1 * §36§);
                                             continue loop3;
                                          }
                                          while(!(_loc6_ || _loc3_));
                                          
                                          if(_loc6_ || param1)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr47);
                                 }
                              }
                              else
                              {
                                 §§goto(addr173);
                              }
                           }
                           else
                           {
                              §§goto(addr152);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr174);
                     }
                     addr47:
                     return;
                  }
                  §§goto(addr141);
               }
            }
            §§goto(addr173);
         }
         §§goto(addr141);
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§0#,§.isEagleUsed();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsRunning() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"K§ = §8"f§(§,!q§.§9!,§).§=j§;
         §§push(_loc1_.§6!4§());
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsSyncing() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[!j§ = null;
         var _loc1_:§"K§ = §8"f§(§,!q§.§9!,§).§=j§;
         var _loc2_:§;a§ = §4#;§.singleton.popupManager;
         if(_loc6_)
         {
            §§push(_loc1_.isLoading);
            if(_loc6_)
            {
               §§push(Boolean(§§pop()));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr45:
                        §§pop();
                        if(_loc6_)
                        {
                           addr48:
                           §§push(_loc2_.isPopupOpenById(SyncPopup.§%!h§));
                           if(_loc6_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr77:
                                 if(§§pop())
                                 {
                                    addr78:
                                    _loc4_ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
                                    if(!_loc5_)
                                    {
                                       §4#;§.singleton.popupManager.openPopup(_loc4_);
                                       if(!_loc5_)
                                       {
                                          _loc1_.addEventListener(§+H§.§6p§,this.§!"b§);
                                       }
                                    }
                                 }
                                 §§push(_loc1_.isLoading);
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr77);
               }
               addr116:
               return !§§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr48);
      }
      
      protected function §]"2§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9"O§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[!Q§);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop().§3#X§);
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(true);
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 addr104:
                                 if(!(_loc1_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(this.§[!Q§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(§§pop().enabled);
                                    loop6:
                                    for(; _loc1_ || this; while(true)
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop6;
                                       }
                                       if(_loc1_ || this)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr233);
                                    })
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this.§[!Q§);
                                             while(_loc1_)
                                             {
                                                §§pop().enabled = false;
                                                if(_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         continue loop6;
                                                      }
                                                      addr52:
                                                   }
                                                   else
                                                   {
                                                      addr187:
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr233);
                                                      }
                                                      addr198:
                                                      this.§-#-§.isEnabled = false;
                                                   }
                                                }
                                                else
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            addr35:
                                                            if(_loc1_ || this)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr159:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§push(this.§-#-§);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr172:
                                                                        if(§§pop().§6"J§ >= 0)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§push(this.§-#-§);
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           addr184:
                                                                           §§push(§§pop().isEnabled);
                                                                           if(_loc1_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr187);
                                                                              }
                                                                              addr152:
                                                                              §§push(true);
                                                                              break loop6;
                                                                           }
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     §§goto(addr198);
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§8#_§);
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr104);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr172);
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr35);
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                   }
                                                }
                                                §§goto(addr152);
                                             }
                                             continue loop1;
                                             addr143:
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr52);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr143);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr159);
                           }
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr233);
            }
            addr233:
            return this.§3"#§;
         }
         §§goto(addr196);
      }
      
      protected function §5#S§() : Boolean
      {
         return this.§-#4§.§3#2§;
      }
      
      private function §##8§() : Boolean
      {
         return §7"s§(§,!q§.§9!,§.levelObjects).§##8§();
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]!§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.isAllowedToChangeStateRegardingPowerUpsSyncing());
                     if(!_loc2_)
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
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§5#S§());
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   addr99:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(this.isAllowedToChangeStateRegardingPowerUpsRunning());
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           §§goto(addr160);
                                                                        }
                                                                        continue loop2;
                                                                        addr111:
                                                                     }
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           §§push(this.§##8§());
                                                                           if(!_loc2_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           addr160:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr159:
                                                                        }
                                                                        continue loop6;
                                                                        return Boolean(§§pop());
                                                                     }
                                                                     addr127:
                                                                     §§push(false);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr160);
                                                                     §§goto(addr160);
                                                                     §§goto(addr160);
                                                                  }
                                                                  break loop5;
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                addr98:
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr99);
                                       }
                                       addr136:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    §§push(!§§pop());
                                    if(_loc2_ && this)
                                    {
                                    }
                                    §§goto(addr159);
                                 }
                              }
                              §§goto(addr98);
                           }
                        }
                     }
                     §§goto(addr159);
                  }
               }
               §§goto(addr127);
            }
         }
         §§goto(addr136);
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§]!§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr183:
                  return false;
                  addr182:
               }
               else
               {
                  addr160:
               }
               while(true)
               {
                  §§push(this.§]"2§());
                  continue loop0;
               }
            }
         }
         §§goto(addr159);
      }
      
      protected function §"#A§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>f§ = §,!q§.§9!,§.slingshot as §>f§;
         if(_loc3_ || _loc2_)
         {
            if(_loc2_)
            {
               while(true)
               {
                  _loc2_.§;"O§();
                  addr85:
                  while(true)
                  {
                  }
                  addr63:
                  if(_loc3_ || _loc3_)
                  {
                     this.§4"h§(false);
                     if(_loc4_)
                     {
                        while(_loc3_ || _loc3_)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr85);
                        addr56:
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               §2#6§ = false;
               §§goto(addr56);
               §§goto(addr85);
            }
         }
         §§goto(addr85);
      }
      
      private function §`>§(param1:§+H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1.allowNextPowerUp);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr156:
                  §§push(this.§#"S§);
                  loop7:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              §§pop();
                              addr164:
                              while(true)
                              {
                                 §§push(this.§<!B§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop9;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                           }
                           addr163:
                        }
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr136:
                              while(true)
                              {
                                 this.§9"&§();
                                 addr138:
                                 if(_loc3_)
                                 {
                                    addr140:
                                    break;
                                 }
                                 §§goto(addr164);
                                 continue loop8;
                              }
                              addr136:
                           }
                           addr25:
                           return;
                        }
                     }
                     §§goto(addr163);
                  }
                  addr158:
               }
               else
               {
                  this.§0!`§.§@#D§(0);
                  loop0:
                  while(true)
                  {
                     this.§try§.§>"W§();
                     loop1:
                     while(true)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(_loc3_ || param1)
                              {
                                 §§push(this.§0#,§);
                                 loop2:
                                 while(true)
                                 {
                                    §§pop().visible = true;
                                    addr62:
                                    while(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 §§goto(addr156);
                              }
                              §§goto(addr158);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr136);
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr156);
         }
         §§goto(addr140);
      }
      
      protected function §>B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#"S§ = true;
         }
         do
         {
            this.§<!B§ = true;
            do
            {
               this.§,h§();
            }
            while(_loc2_);
            
         }
         while(_loc2_ && param1);
         
      }
      
      protected function §`%§(param1:§+H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1.§6#R§ == §6"w§.§1!m§)
            {
               if(!_loc3_)
               {
                  addr81:
                  §8"f§(§,!q§.§9!,§).§7#K§();
               }
               do
               {
                  §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§`%§);
                  do
                  {
                     this.§]!§ = false;
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr81);
      }
      
      protected function § in§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§-#-§);
            loop0:
            while(true)
            {
               §§pop().§@"N§.removeEventListener(§"#X§.§9!4§,this.§ in§);
               addr98:
               while(true)
               {
                  this.§[!Q§.removeEventListener(§"#X§.§9!4§,this.§ in§);
                  loop2:
                  while(_loc2_)
                  {
                     this.§9"O§ = true;
                     while(this.§>M§)
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        while(true)
                        {
                           if(!(_loc2_ || param1))
                           {
                              continue loop2;
                           }
                           §§goto(addr24);
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
            addr92:
         }
         while(true)
         {
            §§push(this.§-#-§);
            if(_loc2_ || _loc2_)
            {
               §§pop().hide();
               §§goto(addr56);
            }
            else
            {
               §§goto(addr92);
            }
         }
      }
      
      protected function §[D§(param1:§+H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.§6#R§ == §6"w§.§1!m§)
            {
               loop0:
               while(true)
               {
                  §8"f§(§,!q§.§9!,§).§7#K§();
                  while(true)
                  {
                     §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§[D§);
                     loop2:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§3"#§ = true;
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
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
            §§goto(addr19);
         }
         §§goto(addr60);
      }
      
      private function §!"b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§6p§,this.§!"b§);
            do
            {
               §4#;§.singleton.popupManager.§,"o§(SyncPopup.§%!h§);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 485
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
