package §7#W§
{
   import § "v§.TournamentHistoryPopup;
   import § "v§.TournamentInfoPopup;
   import §!"W§.§="g§;
   import §!"e§.CrystalImprovementsPopup;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §"k§.§4#G§;
   import §'#&§.§-"e§;
   import §+!c§.§&"[§;
   import §+!c§.§5"$§;
   import §+!c§.§9"1§;
   import §,"N§.§""t§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §7K§.§,T§;
   import §;"Y§.§&#X§;
   import §<"c§.§"C§;
   import §<"c§.§]"_§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6!W§ extends §]"_§
   {
      
      public static const §^!7§:String = "TournamentState";
      
      private static const §&!X§:Number = 16.666666666666668;
      
      private static const §1"X§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^!7§ = "TournamentState";
            while(true)
            {
               §&!X§ = 1000 / 60;
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     §1"X§ = 5;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private var §?-§:§@"b§;
      
      private var §;!^§:Vector.<§&"[§>;
      
      private var §,!e§:§&"[§;
      
      private var §"!§:§9"1§;
      
      private var §%"]§:Array;
      
      private var §+f§:§,!i§;
      
      public function §6!W§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "TournamentState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§%"]§ = [];
         }
         do
         {
            super(param1,param3,param4,param2);
         }
         while(!_loc6_);
         
      }
      
      override protected function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§&"[§ = null;
         if(_loc5_)
         {
            §7#^§ = true;
         }
         loop0:
         while(true)
         {
            super.init();
            loop1:
            while(true)
            {
               §@;§ = new §]#[§(this);
               loop2:
               while(_loc5_)
               {
                  §@;§.init(§&$§.§@8§.Views.View_Tournament[0]);
                  loop3:
                  while(!_loc6_)
                  {
                     loop4:
                     while(true)
                     {
                        this.§?-§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                        while(!_loc6_)
                        {
                           this.§;!^§ = new Vector.<§&"[§>(§1"X§);
                           if(_loc5_ || _loc3_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §,!N§(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§@#B§ = null;
         var _loc4_:§[!j§ = null;
         var _loc5_:String = null;
         if(_loc6_)
         {
            if(isTransitioning)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:§&"[§ = §&"[§(param1.target);
         if(_loc6_)
         {
            §§push(_loc2_.§'#I§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     return;
                  }
               }
               §§push(_loc2_.isLocked);
               if(_loc6_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr74:
                        if(_loc2_.canBuyToUnlock)
                        {
                           if(!_loc7_)
                           {
                              addr77:
                              _loc3_ = §@#B§(§4#;§.singleton.dataModel);
                              if(!_loc7_)
                              {
                                 §§push(_loc3_.§`!W§);
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop().starCoins < _loc2_.§?!N§)
                                    {
                                       _loc4_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
                                       if(!_loc7_)
                                       {
                                          §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
                                          break;
                                       }
                                       break;
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       this.§,!e§ = _loc2_;
                                       loop5:
                                       while(true)
                                       {
                                          _loc2_.canBuyToUnlock = false;
                                          while(true)
                                          {
                                             _loc2_.§'#I§ = true;
                                             while(_loc6_)
                                             {
                                                continue loop3;
                                                loop8:
                                                while(!(_loc7_ && param1))
                                                {
                                                   §§push(_loc3_.§1!f§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§="g§.§=#2§,this.§"#^§);
                                                      loop10:
                                                      while(!(_loc7_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.§1!f§);
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().§9?§(new §,T§("TournamentLevel",1,_loc2_.§?!N§));
                                                               while(!_loc7_)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §?!r§.§"#_§("black_shop_purchase");
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue;
                                                                     continue;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop9;
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
                                 addr265:
                                 return;
                                 addr209:
                              }
                              §§goto(addr134);
                           }
                           else
                           {
                              addr280:
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr77);
                  }
                  else
                  {
                     if(§@#B§(§4#;§.singleton.dataModel).§^"J§.energy <= 0)
                     {
                        if(_loc6_ || this)
                        {
                           addr226:
                           _loc4_ = new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP);
                           if(!_loc7_)
                           {
                              §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
                           }
                           §§goto(addr265);
                        }
                     }
                     else
                     {
                        _loc5_ = this.§?-§.levelObjects[this.§;!^§.indexOf(_loc2_)].levelId;
                        if(_loc6_ || _loc2_)
                        {
                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                           while(true)
                           {
                              §+!b§.loadLevel(_loc5_);
                              loop1:
                              while(!_loc7_)
                              {
                                 while(true)
                                 {
                                    § g§(§8!]§.§^!7§);
                                    if(!(_loc7_ && param1))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr280);
                              }
                           }
                           addr263:
                        }
                        §§goto(addr297);
                     }
                     §§goto(addr263);
                  }
               }
            }
            §§goto(addr74);
         }
         §§goto(addr226);
      }
      
      private function §"#^§(param1:§="g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
            loop0:
            while(true)
            {
               §§push(this.§,!e§);
               loop1:
               while(true)
               {
                  §§push(false);
                  loop2:
                  while(true)
                  {
                     §§pop().§'#I§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§,!e§);
                        addr82:
                        loop4:
                        while(_loc2_)
                        {
                           §§push(false);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§pop().isLocked = §§pop();
                              while(_loc2_ || _loc3_)
                              {
                                 continue loop4;
                                 addr52:
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§%T§();
                                    addr69:
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr52);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§,!e§ = null;
                                             continue loop8;
                                          }
                                          addr78:
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
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
            §§push(this.§,!e§);
            if(_loc2_)
            {
               delete §§pop().§[!@§.unlocksAt;
               §§goto(addr78);
            }
            §§goto(addr82);
         }
         §§goto(addr40);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§[!j§ = null;
         var _loc5_:* = param2;
         if(_loc6_ || param2)
         {
            if("BACK" !== _loc5_)
            {
               if("TOURNAMENT_HISTORY" === _loc5_)
               {
                  §§goto(addr136);
               }
               else
               {
                  §§push(2);
               }
               addr159:
               switch(§§pop())
               {
                  case 0:
                     §?!r§.§"#_§("misc_menubuttonback_1");
                     addr49:
                     § g§(§"C§.§^!7§,true);
                     break;
                     addr61:
                     addr55:
                  case 1:
                     §?!r§.§"#_§("misc_menubuttonback_1");
                     if(!(_loc7_ && this))
                     {
                        if(!(_loc7_ && param3))
                        {
                           if(!(_loc7_ && param1))
                           {
                              if(true)
                              {
                                 _loc4_ = new TournamentHistoryPopup(§`"W§.§+v§,§+5§.DEFAULT);
                                 if(_loc6_ || param1)
                                 {
                                    §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 addr104:
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr61);
                           }
                           §§goto(addr49);
                        }
                        §§goto(addr55);
                     }
                     break;
                  default:
                     super.onUIInteraction(param1,param2,param3);
                     §§goto(addr104);
               }
               return;
            }
            if(_loc6_ || this)
            {
               §§push(0);
               if(!(_loc6_ || this))
               {
                  addr154:
               }
            }
            else
            {
               addr136:
               §§push(1);
               if(_loc6_ || param1)
               {
                  §§goto(addr154);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr136);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!j§ = null;
         if(_loc3_)
         {
            §§push(§,!q§.§9!,§);
            while(true)
            {
               §§pop().clearLevel();
               while(true)
               {
                  §§push(§,!q§.§9!,§);
                  if(_loc4_)
                  {
                     break;
                  }
                  §§pop().§]"J§(false);
                  loop2:
                  while(true)
                  {
                     §§push(§4#;§.singleton);
                     loop3:
                     while(true)
                     {
                        §§pop().playThemeMusic();
                        loop4:
                        while(true)
                        {
                           super.activate(param1);
                           loop5:
                           while(true)
                           {
                              §§push(this.§?-§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().§!!e§);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr320:
                                          if(!§@#B§(§@!m§(§4#;§.singleton).dataModel).userProgress.hasTutorialBeenSeen(CrystalImprovementsPopup.§%!h§))
                                          {
                                             addr332:
                                             _loc2_ = new CrystalImprovementsPopup(§`"W§.§+v§,§+5§.TOP);
                                             if(_loc3_)
                                             {
                                                §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
                                             }
                                          }
                                       }
                                       continue loop5;
                                       return;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       this.§#!>§(this.§?-§.isLoading);
                                       while(_loc3_)
                                       {
                                          continue loop2;
                                          loop14:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§?-§);
                                                   while(!_loc4_)
                                                   {
                                                      §§push(§@"b§.§,"3§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§pop().addEventListener(§§pop(),this.§,!X§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§?-§);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().isLoading);
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.§^!P§();
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr189:
                                                                           §@;§.movieClip.addEventListener(Event.ENTER_FRAME,this.§-!u§);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(§4#;§.singleton);
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().dataModel);
                                                                                 addr149:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().userProgress);
                                                                                    addr150:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(TournamentInfoPopup.§2!5§);
                                                                                       addr152:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().hasTutorialBeenSeen(§§pop()));
                                                                                          addr153:
                                                                                          while(!_loc4_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§4#;§.singleton);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().popupManager.openPopup(new TournamentInfoPopup(§`"W§.§+v§,§+5§.DEFAULT),true,true,true);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr100:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§4#;§.singleton);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         addr89:
                                                                                                         continue loop3;
                                                                                                         if(!(_loc3_ || param1))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr100);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr313:
                                                                                                            if(this.§?-§.§-j§.length > 0)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr320);
                                                                                                               }
                                                                                                               §§goto(addr332);
                                                                                                            }
                                                                                                            §§goto(addr320);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop14;
                                                                                                addr156:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr22:
                                                                                             }
                                                                                             addr287:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§?-§);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().reset();
                                                                                                addr288:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                addr46:
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop().addEventListener(§§pop(),this.§&!A§);
                                                            continue loop14;
                                                         }
                                                         addr240:
                                                      }
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr46);
                                                   }
                                                   addr238:
                                                   while(true)
                                                   {
                                                      §§goto(addr240);
                                                   }
                                                }
                                                addr252:
                                             }
                                             §§goto(addr288);
                                          }
                                       }
                                       continue loop4;
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
         §§goto(addr252);
      }
      
      private function §0#@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§+f§ = new §,!i§(§@;§.getItemByName("MovieClip_UpSell").mClip,§@#B§(§4#;§.singleton.dataModel).§1!f§);
         }
      }
      
      private function §,!X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!>§(true);
         }
      }
      
      private function §&!A§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^!P§();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&"[§ = null;
         if(!_loc4_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§+f§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§+f§);
                        addr186:
                        while(true)
                        {
                           §§pop().dispose();
                           addr187:
                           while(true)
                           {
                           }
                        }
                     }
                     addr184:
                  }
                  while(true)
                  {
                     §§push(this.§?-§);
                     loop3:
                     while(true)
                     {
                        §§push(§@"b§.§^o§);
                        loop4:
                        while(true)
                        {
                           §§pop().removeEventListener(§§pop(),this.§&!A§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§?-§);
                              loop6:
                              while(true)
                              {
                                 §§push(§@"b§.§,"3§);
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 §§pop().removeEventListener(§§pop(),this.§,!X§);
                                 loop7:
                                 while(_loc5_)
                                 {
                                    §§push(§@#B§(§4#;§.singleton.dataModel).§1!f§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§="g§.§=#2§);
                                       addr143:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.§"#^§);
                                          addr146:
                                          while(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop5;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop0;
                                 addr67:
                                 while(true)
                                 {
                                    §§push(this.§?-§);
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§pop().§!!e§ = true;
                                    §§goto(addr85);
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr187);
                  }
               }
               §§goto(addr186);
            }
         }
         §§goto(addr67);
      }
      
      private function §7"g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§5"$§ = null;
         var _loc3_:* = this.§%"]§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc1_.parent.removeChild(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc4_ || _loc3_)
         {
            this.§%"]§.length = 0;
         }
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§?-§);
            if(_loc2_)
            {
               §§push(§§pop().isLoading);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§?-§);
                        if(_loc2_)
                        {
                           §§push(§§pop().§!!e§);
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(this.§?-§);
                                    break loop0;
                                 }
                                 break;
                              }
                              §@;§.getItemByName("Container_TournamentTitle").mClip.tournamentTitle.txtTimeLeft.text = this.§?-§.§#!m§();
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           addr90:
                           addr69:
                        }
                        break;
                     }
                     addr89:
                     §§pop().reset();
                     §§goto(addr90);
                  }
                  return;
               }
               §§goto(addr69);
            }
            §§goto(addr89);
         }
         §§goto(addr90);
      }
      
      private function §#!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §@;§.getItemByName("MovieClip_TournamentLoading").setVisibility(param1);
            loop0:
            while(true)
            {
               §@;§.getItemByName("Container_TournamentTitle").setVisibility(!param1);
               while(true)
               {
                  §@;§.getItemByName("Container_LevelSelection").setVisibility(!param1);
                  continue loop0;
                  addr58:
                  while(_loc3_ || _loc2_)
                  {
                     §@;§.getItemByName("Container_TotalTrophies").setVisibility(!param1);
                     if(!_loc2_)
                     {
                        addr33:
                        if(!(_loc2_ && this))
                        {
                           return;
                           addr40:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §-!q§(param1:§="g§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§?6§,this.§-!q§);
            do
            {
               this.§^!P§();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §^!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§""t§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         if(_loc4_)
         {
            if(_loc1_.§^5§ != null)
            {
               loop0:
               do
               {
                  this.§#!>§(false);
                  if(!(_loc3_ && _loc1_))
                  {
                     if(!_loc3_)
                     {
                        addr41:
                        if(true)
                        {
                           var _loc2_:int = 0;
                           loop4:
                           do
                           {
                              §§push(_loc2_);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop() >= §1"X§)
                                 {
                                    loop5:
                                    for(; !_loc3_; for(; _loc4_ || _loc1_; §@!m§(§4#;§.singleton).§""s§.§%#+§(this.§?-§.§'"?§),if(!_loc4_)
                                    {
                                       continue;
                                    },§§goto(addr95))
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr247);
                                    })
                                    {
                                       this.§%T§();
                                       loop6:
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          this.§+"h§();
                                          while(!(_loc3_ && _loc1_))
                                          {
                                             this.§0#_§();
                                             continue loop5;
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                if(_loc4_)
                                                {
                                                   return;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   _loc2_++;
                                                   continue loop14;
                                                }
                                                addr186:
                                             }
                                             continue loop4;
                                          }
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          addr220:
                                          while(true)
                                          {
                                             §§push(§§pop() >= this.§?-§.levelObjects.length);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop15;
                                                }
                                                addr234:
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr245:
                                                         if(!§§pop())
                                                         {
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr247:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?-§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop().levelObjects);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(!§§pop()[_loc2_]);
                                                                        if(_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().levelObjects);
                                                                     }
                                                                     addr262:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr264:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr265:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        §§goto(addr245);
                                                                        §§goto(addr234);
                                                                     }
                                                                  }
                                                                  continue loop20;
                                                               }
                                                            }
                                                            addr246:
                                                         }
                                                         if(§§pop())
                                                         {
                                                            break loop4;
                                                         }
                                                         break loop5;
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr246);
                                          }
                                       }
                                    }
                                    this.§`"0§(this.§;!^§[_loc2_],this.§?-§.levelObjects[_loc2_]);
                                    §§goto(addr186);
                                 }
                                 else
                                 {
                                    §§push(this.§?-§);
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr220);
                           }
                           while(_loc4_);
                           
                           throw new Error("Tournament level " + (_loc2_ + 1) + " missing.");
                        }
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           _loc1_.addEventListener(§="g§.§?6§,this.§-!q§);
                           break loop0;
                           addr72:
                           while(true)
                           {
                              this.§#!>§(true);
                              continue loop1;
                           }
                        }
                        addr67:
                     }
                     return;
                  }
               }
               while(_loc4_ || _loc3_);
               
               while(true)
               {
                  if(!(_loc4_ || _loc1_))
                  {
                     §§goto(addr72);
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr41);
      }
      
      private function §`"0§(param1:§&"[§, param2:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = param2.levelId;
         §§push(this.§?-§.getScoreForLevel(_loc3_));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§?-§.getRankForLevel(_loc3_));
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || param1)
         {
            param1.§6!@§();
            while(true)
            {
               param1.§[!@§ = param2;
               while(!_loc7_)
               {
                  param1.§1Y§(param2.unlocksAt);
                  loop3:
                  for(; _loc6_; while(!(_loc7_ && param1))
                  {
                     param1.§?!N§ = §@#B§(§4#;§.singleton.dataModel).§1!f§.§^5§.§2"^§;
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        return;
                     }
                     §§goto(addr106);
                  })
                  {
                     if(_loc6_)
                     {
                        param1.score = _loc4_;
                        while(true)
                        {
                           param1.§[!F§ = §4#;§.singleton.dataModel.userProgress.getStarsForLevel(_loc3_,_loc4_);
                           addr106:
                           while(_loc6_ || param2)
                           {
                              param1.§9!<§ = _loc5_;
                              continue loop3;
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           param1.§'#I§ = false;
                           break loop3;
                        }
                        addr150:
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      private function §+"h§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = §@;§.getItemByName("Container_TotalTrophiesContent").mClip;
         if(_loc2_ || _loc1_)
         {
            _loc1_.txtGold.text = "x" + this.§?-§.goldTrophies;
         }
         do
         {
            _loc1_.txtSilver.text = "x" + this.§?-§.silverTrophies;
            do
            {
               _loc1_.txtBronze.text = "x" + this.§?-§.bronzeTrophies;
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && this);
         
      }
      
      private function §0#_§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         var _loc4_:§4#G§ = null;
         var _loc5_:§5"$§ = null;
         if(!_loc8_)
         {
            this.§7"g§();
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < 3)
         {
            _loc2_ = §@;§.getItemByName("Container_TopThree").mClip.topThree["top" + (_loc1_ + 1)];
            if(!(_loc8_ && _loc3_))
            {
               §§push(§@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§);
               if(!_loc8_)
               {
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               if(!_loc8_)
               {
                  _loc2_.floatingPlatform.gotoAndStop("platform_0" + _loc3_);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(this.§?-§);
                     if(!_loc8_)
                     {
                        §§push(§§pop().§'"?§);
                        if(_loc7_)
                        {
                           if(§§pop().data.length > _loc1_)
                           {
                              addr227:
                              if(_loc7_ || _loc3_)
                              {
                                 addr101:
                                 §§push(this.§?-§.§'"?§);
                              }
                              _loc1_++;
                              continue;
                           }
                           _loc2_.visible = false;
                           §§goto(addr227);
                           §§goto(addr227);
                        }
                        if(_loc4_ = §§pop().data[_loc1_] as §4#G§)
                        {
                           if(!_loc8_)
                           {
                              _loc2_.visible = true;
                              if(_loc7_ || _loc1_)
                              {
                                 _loc2_.txtName.text = _loc4_.userName;
                                 loop1:
                                 while(true)
                                 {
                                    _loc2_.txtScore.text = _loc4_.§]"q§;
                                    if(!_loc7_)
                                    {
                                    }
                                    break;
                                    addr157:
                                    _loc2_.txtScore.mouseEnabled = false;
                                    if(!_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             _loc2_.txtName.mouseEnabled = false;
                                             if(!(_loc8_ && this))
                                             {
                                                §§goto(addr157);
                                             }
                                             break loop1;
                                          }
                                          addr145:
                                       }
                                       _loc5_ = new §5"$§(_loc4_.userId);
                                       if(_loc7_ || this)
                                       {
                                          _loc2_.profilePic.addChild(_loc5_);
                                          if(_loc7_)
                                          {
                                             _loc5_.scaleX = _loc5_.scaleY = 1.44;
                                             if(!_loc8_)
                                             {
                                                addr203:
                                                this.§%"]§.push(_loc5_);
                                                if(_loc8_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr203);
                                    }
                                    break;
                                 }
                                 addr223:
                                 §§goto(addr227);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr145);
                           }
                        }
                        else
                        {
                           _loc2_.visible = false;
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr227);
         }
      }
      
      private function §0c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§%T§();
         }
      }
      
      private function §%T§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= §1"X§)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§;!^§[_loc1_].canBuyToUnlock = _loc1_ > 0 && this.§;!^§[_loc1_].isLocked && !this.§;!^§[_loc1_ - 1].isLocked;
            }
            _loc1_++;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
            do
            {
               this.§"!§.setSize(param1,param2);
            }
            while(!_loc3_);
            
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7!=§ = new §-"e§(param1,§%G§.stage);
         }
      }
   }
}
