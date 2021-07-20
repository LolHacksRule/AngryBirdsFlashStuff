package §5G§
{
   import § g§.§<n§;
   import §!V§.§<!g§;
   import §!V§.§>d§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §&!F§.§3S§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §,§.§7!N§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §09§.§4!7§;
   import §09§.§^V§;
   import §1!E§.§>f§;
   import §12§.§25§;
   import §12§.§4!1§;
   import §2v§.§!L§;
   import §2v§.§&O§;
   import §6;§.§%[§;
   import §6H§.§^5§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §=!&§.§3!-§;
   import §=!g§.§!!@§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§0!0§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.utils.Timer;
   
   public class StatePlay extends §!`§ implements §7Z§
   {
      
      public static const §3!?§:String = "StatePlay";
      
      private static const §!7§:Number = -10000.0;
      
      private static const §"3§:Number = 15000.0;
      
      private static const §8s§:int = 8;
      
      private static const §]+§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §3!?§ = "StatePlay";
            while(true)
            {
               §!7§ = -10 * 1000;
               loop1:
               while(_loc1_ || _loc1_)
               {
                  §"3§ = 15 * 1000;
                  while(true)
                  {
                     §8s§ = 8;
                     while(_loc1_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           §]+§ = 0;
                           if(_loc1_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private var §[!S§:Boolean = true;
      
      private var §@!P§:Boolean = false;
      
      private var §?!F§:Number = -10000.0;
      
      private var §4=§:int = 0;
      
      private var §"!g§:Boolean;
      
      private var §'_§:Boolean;
      
      private var callObject:Object;
      
      private var §]^§:Number;
      
      private var §86§:Number;
      
      private var §,!T§:Boolean = true;
      
      private var §0!a§:Boolean = false;
      
      private var §!F§:§7g§ = null;
      
      private var §6!i§:Boolean = false;
      
      private var §,!>§:int;
      
      private var §"2§:§3!-§;
      
      private var §-8§:§3S§;
      
      private var §6!D§:String;
      
      private var §[;§:Boolean;
      
      private var §>n§:int;
      
      private var §;i§:Timer;
      
      private var §4!,§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §%!0§ = new §5!§(this);
               while(true)
               {
                  §%!0§.init(§>!;§.§ get§.Views.View_LevelPlay[0]);
                  loop2:
                  while(true)
                  {
                     if(!§>f§.§%!`§)
                     {
                        do
                        {
                           this.§"2§ = new §3!-§(this);
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop2;
                           }
                        }
                        while(!(_loc1_ || _loc1_));
                        
                        if(!_loc2_)
                        {
                           return;
                           addr60:
                        }
                        continue loop0;
                        addr28:
                     }
                     while(true)
                     {
                        this.§-8§ = §>f§.§%!`§.§06§;
                        continue loop2;
                        §§goto(addr41);
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!!@§.addCallback("navigationAttempt",this.§"Z§);
         }
      }
      
      private function §"Z§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var url:String = param1;
         loop0:
         while(true)
         {
            §>f§.§%!-§ = url;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§5!9§.§-!O§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().§@n§() == null);
                     if(_loc4_ || this)
                     {
                        §§push(!§§pop());
                     }
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §?,§.sCheetosPopups.showPopup(§&O§.CONFIRM_LEAVE,§4I§.getText("Popup_Confirm_Leave"));
                              }
                              if(!_loc4_)
                              {
                                 loop6:
                                 while(_loc4_)
                                 {
                                    §§push(§5!9§.§-!O§);
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop().§@n§() == StatePlay.§3!?§);
                                    if(_loc4_ || this)
                                    {
                                       continue loop4;
                                    }
                                    addr88:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop6;
                                    }
                                 }
                                 continue loop0;
                              }
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              if(false)
                              {
                                 continue loop2;
                              }
                              try
                              {
                                 §%!0§.container.setObjectToFront(§?,§.sCheetosPopups.container);
                                 break;
                              }
                              catch(e:Error)
                              {
                                 break;
                              }
                           }
                           return;
                           addr44:
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
         }
      }
      
      private function navigationConfirmed() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §!!@§.§%Q§("navigationConfirmed",§>f§.§%!-§);
            if(_loc3_)
            {
               §?,§.sCheetosPopups.hidePopup();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               this.§,!>§ = §@!Z§.§;!,§.slingshot.§@S§() as int;
               loop1:
               while(true)
               {
                  §§push(this.§!F§);
                  if(!(_loc1_ && _loc2_))
                  {
                     if(§§pop() != null)
                     {
                        while(true)
                        {
                           §§push(this.§!F§);
                           addr350:
                           while(true)
                           {
                              §§pop().§!^§();
                              addr351:
                              while(true)
                              {
                                 this.§!F§ = null;
                                 addr335:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           loop28:
                           while(!_loc1_)
                           {
                              loop24:
                              while(true)
                              {
                                 this.§"!g§ = false;
                                 addr100:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    addr124:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          addr126:
                                          if(!(_loc2_ || this))
                                          {
                                             break;
                                          }
                                          continue loop24;
                                       }
                                       continue loop28;
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(§5!9§.§-!O§);
                                          loop21:
                                          while(true)
                                          {
                                             §§pop().§5N§.§@Y§(§0!0§.§'!c§);
                                             addr193:
                                             loop22:
                                             while(true)
                                             {
                                                §§push(§5!9§.§-!O§);
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop21;
                                                }
                                                §§push(§§pop().§7!6§(§@;§.§6!K§));
                                                if(_loc2_)
                                                {
                                                   addr149:
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      if(§§pop().charAt(0) == "1")
                                                      {
                                                         while(_loc2_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               §>d§.§@Y§(§>d§.§&`§,§5!9§.§-!O§.§7!6§(§@;§.§6!K§));
                                                               continue loop28;
                                                            }
                                                            continue loop0;
                                                         }
                                                         loop17:
                                                         while(!(_loc1_ && _loc2_))
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §,!7§.§13§();
                                                               addr207:
                                                               while(!(_loc1_ && _loc2_))
                                                               {
                                                                  §>d§.§@Y§(§<!g§.§#S§,§@;§.§6!K§);
                                                                  continue loop20;
                                                               }
                                                               addr264:
                                                               while(true)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§'_§ = false;
                                                               addr316:
                                                               while(true)
                                                               {
                                                                  §§push(§@;§.§6!K§);
                                                                  addr305:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == "1-1");
                                                                     addr307:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        addr308:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr311:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§@;§.§6!K§);
                                                                                       break loop22;
                                                                                    }
                                                                                 }
                                                                                 addr310:
                                                                              }
                                                                              addr286:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc1_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr296:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop17;
                                                                                    }
                                                                                    addr296:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       this.§4!,§ = true;
                                                                                       continue loop17;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_ && _loc2_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       this.§]!%§();
                                                                                       §§goto(addr264);
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
                                                         while(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§push(§@;§.§6!K§);
                                                               while(_loc2_)
                                                               {
                                                                  §§push(§§pop() == "1-3");
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        addr251:
                                                                        §§push(!§§pop());
                                                                        if(!_loc1_)
                                                                        {
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr307);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr305);
                                                               addr232:
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr311);
                                                         addr160:
                                                      }
                                                      else
                                                      {
                                                         §>d§.§@Y§(§>d§.§3B§,§5!9§.§-!O§.§7!6§(§@;§.§6!K§));
                                                         §§goto(addr124);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr232);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() == "1-2");
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc2_)
                                                      {
                                                         addr284:
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr286);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr284);
                                                §§goto(addr149);
                                             }
                                             §§goto(addr308);
                                          }
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr351);
                                 }
                                 addr330:
                                 while(true)
                                 {
                                    §@!Z§.§,R§();
                                    §§goto(addr320);
                                 }
                              }
                              addr185:
                           }
                        }
                     }
                     while(true)
                     {
                        ((§@!Z§.§;!,§ as § $§).§7!h§ as §^5§).§1f§();
                        §§goto(addr330);
                        §§goto(addr335);
                     }
                  }
                  §§goto(addr350);
               }
            }
         }
         §§goto(addr78);
      }
      
      private function § E§() : void
      {
         try
         {
            §!!@§.§%Q§("levelStart",§5!9§.§-!O§.§ !&§(§@;§.§6!K§));
         }
         catch(e:Error)
         {
            §+!D§(e);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§@!Z§.§;!,§.§5!H§ != 0)
            {
               this.§4!,§ = true;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     super.activate();
                     loop2:
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              while(_loc1_)
                              {
                                 §§push(§%[§.§`1§);
                                 while(true)
                                 {
                                    §§pop().start();
                                    addr192:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              continue loop0;
                              addr187:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§!F§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§!F§);
                                       addr174:
                                       while(true)
                                       {
                                          §§pop().play();
                                          addr175:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr172:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    this.§&s§();
                                    loop7:
                                    while(true)
                                    {
                                       §%!0§.setText(§4I§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
                                       loop8:
                                       for(; !_loc2_; while(_loc1_ || _loc1_)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             this.§+g§();
                                             §§goto(addr76);
                                          }
                                          §§goto(addr222);
                                          §§goto(addr38);
                                       })
                                       {
                                          §%!0§.setText(§4I§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
                                          while(true)
                                          {
                                             §%!0§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                                             addr125:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §%!0§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
                                                      continue loop8;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr172);
                                             }
                                             loop14:
                                             for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc1_)
                                             {
                                                continue;
                                             },if(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         break;
                                                      }
                                                      this.§`!G§();
                                                      §§goto(addr70);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr125);
                                                   }
                                                }
                                                continue loop7;
                                                addr76:
                                             },if(_loc2_ && _loc1_)
                                             {
                                                continue loop8;
                                             },§§goto(addr45))
                                             {
                                                while(true)
                                                {
                                                   this.§[;§ = false;
                                                   for(; _loc1_; this.§>n§ = 0,if(!_loc2_)
                                                   {
                                                      continue loop14;
                                                   })
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      addr219:
                                                      while(true)
                                                      {
                                                         this.§4!,§ = false;
                                                         addr222:
                                                         while(true)
                                                         {
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   addr70:
                                                   while(_loc1_)
                                                   {
                                                      this.§,!T§ = true;
                                                      continue loop14;
                                                   }
                                                   §§goto(addr187);
                                                }
                                                return;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr191);
                     }
                  }
               }
            }
            §§goto(addr219);
         }
         §§goto(addr66);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!!@§.§,2§("navigationAttempt",this.§"Z§);
            while(true)
            {
               §§push(this.§!F§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr326:
                           do
                           {
                              §§push(this.§!F§);
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop().isCompleted);
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(!§§pop());
                              }
                           }
                           while(_loc2_);
                           
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              super.deActivate();
                              while(true)
                              {
                                 this.§5p§();
                                 addr273:
                                 loop11:
                                 while(true)
                                 {
                                    this.§`!G§();
                                    loop12:
                                    for(; _loc2_ || this; while(_loc2_ || this)
                                    {
                                       §§push(this.§-8§);
                                       while(true)
                                       {
                                          §§push(§25§.§ -§);
                                          addr232:
                                          addr151:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(§§pop(),this.§6!@§);
                                             continue loop11;
                                          }
                                          if(!(_loc2_ || this))
                                          {
                                             continue;
                                          }
                                          addr168:
                                          §§push(§25§.§^!9§);
                                          if(!(_loc1_ && this))
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.§1!@§);
                                                      addr226:
                                                      while(true)
                                                      {
                                                         §§push(this.§-8§);
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(§25§.§?n§);
                                                            addr214:
                                                            while(true)
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.§`!d§);
                                                               addr217:
                                                               while(true)
                                                               {
                                                                  §§push(this.§-8§);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§25§.§case §);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().removeEventListener(§§pop(),this.§=v§);
                                                                           continue loop25;
                                                                        }
                                                                        §§goto(addr232);
                                                                        §§goto(addr168);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§pop().removeEventListener(§§pop(),this.§>x§);
                                                addr184:
                                                while(!(_loc1_ && this))
                                                {
                                                   §§push(this.§"2§);
                                                   loop29:
                                                   while(true)
                                                   {
                                                      §§push(§4!1§.§1!8§);
                                                      addr133:
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(§§pop(),this.§,5§);
                                                         addr136:
                                                         addr298:
                                                         while(!(_loc1_ && _loc1_))
                                                         {
                                                            continue loop29;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§!F§);
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop10;
                                                   §§goto(addr184);
                                                }
                                                addr184:
                                                addr308:
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr201);
                                       }
                                    })
                                    {
                                       §§push(this.§-8§);
                                       while(true)
                                       {
                                          §§push(§25§.§&g§);
                                          addr248:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(§§pop(),this.§95§);
                                             continue loop12;
                                          }
                                       }
                                    }
                                    §§goto(addr326);
                                    addr235:
                                    while(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr221);
                                       §§push(this.§-8§);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr298);
                     }
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(this.§;i§)
               {
                  loop33:
                  while(true)
                  {
                     this.§;i§.stop();
                     addr89:
                     while(!_loc1_)
                     {
                        this.§;i§.removeEventListener(TimerEvent.TIMER,this.§;!M§);
                        continue loop33;
                     }
                     §§goto(addr235);
                  }
               }
               §§goto(addr29);
            }
         }
         §§goto(addr273);
      }
      
      private function §5p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!_loc3_)
         {
            §§push(this.§@!P§);
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(§%[§.§4$§);
               if(!(_loc2_ || _loc3_))
               {
                  continue loop0;
               }
               if(!§§pop())
               {
                  §>d§.§@Y§(§<!g§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     addr68:
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §>d§.§@Y§(§<!g§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
                           break loop0;
                           addr84:
                        }
                        else
                        {
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr84);
               }
               §§goto(addr68);
            })
            {
               while(true)
               {
                  if(this.§?!F§ <= §"3§)
                  {
                     break loop0;
                     addr125:
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§@!P§ = true;
                  }
                  while(true)
                  {
                     _loc1_ = Math.round(1000 / this.§?!F§ * this.§4=§);
                     continue loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      private function §8!Q§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§?!F§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?!F§ = §§pop();
            if(_loc5_ || this)
            {
               if(this.§?!F§ > 0)
               {
                  if(_loc5_)
                  {
                     addr50:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§4=§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§4=§ = _loc3_;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function §`!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?!F§ = §!7§;
         }
         do
         {
            this.§4=§ = 0;
         }
         while(_loc2_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(§@!Z§.isPaused);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§,!T§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
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
                                    addr261:
                                    while(true)
                                    {
                                       §§push(this.§4!,§);
                                       addr224:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr225:
                                          while(!(_loc6_ && _loc2_))
                                          {
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr260:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc5_ || this)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          this.§,!T§ = false;
                                          loop11:
                                          while(!_loc6_)
                                          {
                                             §!L§.§'@§(§%!0§);
                                             while(true)
                                             {
                                                addr195:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§"!g§);
                                                   loop14:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§'_§);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc5_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr184:
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr184);
                                                                        }
                                                                     }
                                                                     loop16:
                                                                     while(§§pop())
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§@!Z§.§;!,§);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              (§§pop() as § $§).§&§();
                                                                              loop19:
                                                                              while(_loc5_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§@!Z§.§;!,§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§push(§§pop().slingshot.§ b§());
                                                                                          loop23:
                                                                                          for(; _loc5_ || param1; §§push(this.§4!,§),if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            §!L§.§'@§(§%!0§);
                                                                                                            addr46:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr48);
                                                                                                            }
                                                                                                            §§goto(addr63);
                                                                                                         }
                                                                                                         §§goto(addr104);
                                                                                                      }
                                                                                                      §§goto(addr80);
                                                                                                   }
                                                                                                   §§goto(addr46);
                                                                                                }
                                                                                                break loop16;
                                                                                             }
                                                                                             continue loop0;
                                                                                          })
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(this.§!F§);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(§§pop() == null)
                                                                                                   {
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         this.§!F§ = ((§@!Z§.§;!,§ as § $§).slingshot as §4!7§).§?!5§();
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ || param1))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§@!Z§.§;!,§);
                                                                                                                  addr159:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     ((§§pop() as § $§).slingshot as §4!7§).§0!7§();
                                                                                                                     while(!_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        this.§!F§ = §%g§.§'I§.§5!0§(null,null,null,§^V§.§3N§);
                                                                                                                        loop27:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§!F§);
                                                                                                                           addr103:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().play();
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 break loop16;
                                                                                                                                 addr59:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§'_§ = true;
                                                                                                                                 addr63:
                                                                                                                                 while(_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr157:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                      addr80:
                                                                                                   }
                                                                                                   §§goto(addr59);
                                                                                                }
                                                                                                §§goto(addr103);
                                                                                             }
                                                                                             §§goto(addr157);
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr159);
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                     var _loc2_:String = mNextState;
                                                                     §§push(super.run(param1));
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(mNextState == this.getVictoryState())
                                                                        {
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              this.§6!D§ = mNextState;
                                                                           }
                                                                           mNextState = _loc2_;
                                                                           addr340:
                                                                        }
                                                                        §§push(_loc3_);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(§§pop() != §%!$§.STATE_STATUS_RUNNING)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              addr320:
                                                                           }
                                                                           addr288:
                                                                           this.§8!Q§(param1);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 this.§&s§();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    var _loc4_:§^-§ = §%!0§.getItemByName("Button_LaunchCheetos") as §^-§;
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr781:
                                                                                       §§push(§@!Z§.§;!,§.slingshot.mSlingShotState == §7!N§.§4!G§);
                                                                                       if(!(§@!Z§.§;!,§.slingshot.mSlingShotState == §7!N§.§4!G§))
                                                                                       {
                                                                                          addr783:
                                                                                          §§pop();
                                                                                          addr746:
                                                                                          addr784:
                                                                                          §§push(§@!Z§.§;!,§.slingshot);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr758:
                                                                                             §§push(§§pop().birdsAvailable);
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr762:
                                                                                                   §§pop();
                                                                                                   addr763:
                                                                                                   §§push(§@!Z§.§;!,§);
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      addr723:
                                                                                                      §§push(Boolean(§§pop().objects.isPigsAlive()));
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr733:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr734:
                                                                                                            §§pop();
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               addr707:
                                                                                                               §§push(§<M§.mLevelState == §<n§.§7!O§);
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  addr706:
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr709:
                                                                                                                  §§pop();
                                                                                                                  addr710:
                                                                                                                  §§push(this.§"!g§);
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     addr678:
                                                                                                                     §§push(!§§pop());
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr688:
                                                                                                                              §§pop();
                                                                                                                              addr689:
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr650:
                                                                                                                                 §§push(this.§'_§);
                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                 {
                                                                                                                                    addr660:
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr661:
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          addr642:
                                                                                                                                          §§push(§>f§.§%!`§);
                                                                                                                                          if(§>f§.§%!`§)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             addr646:
                                                                                                                                             §§push(§>f§.§%!`§);
                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§`!b§);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(§"!d§.§7!c§);
                                                                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr609:
                                                                                                                                                      §§push(Boolean(§§pop() >= §§pop()));
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr632:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr635:
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr638:
                                                                                                                                                                           §§push(§@!Z§.§;!,§);
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push((§§pop() as § $§).§,!e§());
                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr575:
                                                                                                                                                                                          §§push(Boolean(!§§pop()));
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr579:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr581:
                                                                                                                                                                                                _loc4_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                addr585:
                                                                                                                                                                                                if(mNextState.length > 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr520:
                                                                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr482:
                                                                                                                                                                                                         §§push(this.§`!5§.length > 0);
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr497:
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 addr507:
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§0!K§());
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr425:
                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr436:
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc5_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr463:
                                                                                                                                                                                                                                                                           this.§"2§.§5>§();
                                                                                                                                                                                                                                                                           addr464:
                                                                                                                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr710);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr351:
                                                                                                                                                                                                                                                                              return §%!$§.STATE_STATUS_RUNNING;
                                                                                                                                                                                                                                                                              addr478:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr646);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr689);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr638);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr507);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr464);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(this.§`!5§);
                                                                                                                                                                                                                                                            if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() == §;!8§.§3!?§)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§"2§);
                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr463);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§5>§();
                                                                                                                                                                                                                                                                              addr405:
                                                                                                                                                                                                                                                                              §§goto(addr351);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr581);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr520);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr463);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr405);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr351);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr482);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr575);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr482);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr497);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr781);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr762);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr650);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr609);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr425);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr535:
                                                                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr581);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr585);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr661);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr575);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr436);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr678);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr660);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr632);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr734);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr635);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr661);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return §%!$§.STATE_STATUS_COMPLETED;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr482);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc4_.setComponentState(§0j§.§%!T§);
                                                                                                                                                                                             §§goto(addr535);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr758);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr707);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr678);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr575);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr746);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr762);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr783);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr579);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr733);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr709);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr660);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr635);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr781);
                                                                                                                                             }
                                                                                                                                             §§goto(addr642);
                                                                                                                                          }
                                                                                                                                          §§goto(addr609);
                                                                                                                                       }
                                                                                                                                       §§goto(addr763);
                                                                                                                                    }
                                                                                                                                    §§goto(addr579);
                                                                                                                                 }
                                                                                                                                 §§goto(addr688);
                                                                                                                              }
                                                                                                                              §§goto(addr734);
                                                                                                                           }
                                                                                                                           §§goto(addr660);
                                                                                                                        }
                                                                                                                        §§goto(addr758);
                                                                                                                     }
                                                                                                                     §§goto(addr707);
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               §§goto(addr678);
                                                                                                            }
                                                                                                            §§goto(addr784);
                                                                                                         }
                                                                                                         §§goto(addr706);
                                                                                                      }
                                                                                                      §§goto(addr734);
                                                                                                   }
                                                                                                   §§goto(addr781);
                                                                                                }
                                                                                                §§goto(addr733);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr781);
                                                                                       }
                                                                                       §§goto(addr733);
                                                                                    }
                                                                                    §§goto(addr478);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                                 addr301:
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        addr319:
                                                                        return _loc3_;
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               addr214:
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr260);
                                                         }
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr224);
                                                }
                                             }
                                          }
                                          §§goto(addr265);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr195);
                              }
                           }
                        }
                     }
                  }
               }
               addr265:
               return 0;
            }
         }
         §§goto(addr194);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!this.§[;§)
            {
               if(!_loc1_)
               {
                  §§push(this.§"2§);
                  while(true)
                  {
                     §§pop().levelCompleted();
                  }
                  addr142:
               }
               while(true)
               {
                  §§push(this.§"2§);
                  loop2:
                  while(true)
                  {
                     §§push(§4!1§.§1!8§);
                     addr121:
                     while(true)
                     {
                        §§pop().addEventListener(§§pop(),this.§,5§);
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr124);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || param1)
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               addr34:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     if(_loc4_ || param1)
                     {
                        if(§§pop().§§slot[2].error)
                        {
                           if(!(_loc5_ && param1))
                           {
                              addr142:
                              var _loc3_:* = returnObject.error.code;
                              if(_loc4_)
                              {
                                 if(§ B§ === _loc3_)
                                 {
                                    addr151:
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(1);
                                 }
                                 loop6:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §5!9§.§-!O§.§;!;§(§39§.§3!?§);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       addr91:
                                       §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Popup_Session_Expired"));
                                       return;
                                       addr100:
                                       addr138:
                                       break;
                                    default:
                                       §§push(this);
                                       §§push(returnObject.error.message + " Code:");
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop() + returnObject.error.code);
                                       }
                                       §§pop().§+!D§(§§pop());
                                       if(_loc4_ || param1)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             if(false)
                                             {
                                             }
                                             §§goto(addr91);
                                          }
                                          §§goto(addr100);
                                       }
                                       else
                                       {
                                          addr180:
                                          this.§0!a§ = false;
                                          if(_loc4_)
                                          {
                                             §§push(§!L§.§2!,§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(!§§pop());
                                                if(_loc4_ || param1)
                                                {
                                                   addr252:
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop6;
                                                      }
                                                      addr254:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §@!Z§.§,R§();
                                                            addr224:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr222:
                                                      }
                                                      while(true)
                                                      {
                                                         super.onComplete(e);
                                                         if(_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         return;
                                                         addr201:
                                                      }
                                                      break loop6;
                                                   }
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr201);
                                          addr166:
                                       }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr166);
               }
               §§goto(addr142);
            }
            catch(e:Error)
            {
               _loc3_ = e;
            }
            §§goto(addr180);
         }
         §§goto(addr34);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0!a§ = false;
            do
            {
               §5!9§.§-!O§.§;!;§(§39§.§3!?§);
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §+!D§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §5!9§.§-!O§.§;!;§(§39§.§3!?§);
            do
            {
               §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error"));
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function getVictoryState() : String
      {
         return §1!F§.§3!?§;
      }
      
      override public function getLoserState() : String
      {
         return §;!8§.§3!?§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(!_loc7_)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                        addr606:
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        if(§§pop().§§slot[1] == 1)
                        {
                           loop8:
                           do
                           {
                              §§push(§@!Z§.§;!,§);
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop().slingshot);
                                 if(_loc6_ || param1)
                                 {
                                    if(!§§pop().mDragging)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§@!Z§.§;!,§);
                                          if(!(_loc7_ && param3))
                                          {
                                             if(_loc7_ && param3)
                                             {
                                                continue loop9;
                                             }
                                             §§pop().camera.stopDragging();
                                             if(!(_loc7_ && param2))
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                addr639:
                                                while(true)
                                                {
                                                   §<M§.changeGameState(§<n§.§7!O§);
                                                }
                                                addr639:
                                             }
                                             while(true)
                                             {
                                                if(!(_loc6_ || param3))
                                                {
                                                   addr628:
                                                   while(_loc6_ || param2)
                                                   {
                                                      §§push(§@!Z§.§;!,§);
                                                      break loop10;
                                                   }
                                                   break;
                                                   addr628:
                                                }
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr660);
                                                §§goto(addr639);
                                             }
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§§newactivation());
                                                if(_loc7_ && param1)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr606);
                                                §§goto(addr628);
                                             }
                                             addr730:
                                             var _loc5_:* = eventName;
                                             if(!(_loc7_ && param2))
                                             {
                                                if("CLOSE_TUTORIAL" === _loc5_)
                                                {
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      §§push(0);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§goto(addr938);
                                                      }
                                                      addr897:
                                                      §§goto(addr938);
                                                   }
                                                   addr880:
                                                   §§push(9);
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr888:
                                                      §§goto(addr938);
                                                   }
                                                   §§goto(addr897);
                                                }
                                                if("PAUSE" === _loc5_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr938);
                                                      }
                                                      addr822:
                                                      §§goto(addr938);
                                                   }
                                                   addr894:
                                                   §§push(10);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr897);
                                                   }
                                                   addr933:
                                                   §§goto(addr938);
                                                }
                                                if("RESTART_LEVEL" === _loc5_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(2);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§goto(addr938);
                                                      }
                                                      addr841:
                                                      §§goto(addr938);
                                                   }
                                                   addr819:
                                                   §§push(5);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr822);
                                                   }
                                                   §§goto(addr938);
                                                }
                                                if("CONTINUE" === _loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(3);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§goto(addr938);
                                                      }
                                                      §§goto(addr869);
                                                   }
                                                   addr833:
                                                   §§push(6);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§goto(addr841);
                                                   }
                                                   addr869:
                                                   §§goto(addr938);
                                                }
                                                if("LAUNCH_CHEETOS" === _loc5_)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(4);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr938);
                                                      }
                                                      §§goto(addr897);
                                                   }
                                                   §§goto(addr833);
                                                }
                                                if("ZOOM_IN" === _loc5_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      §§goto(addr819);
                                                   }
                                                   addr920:
                                                   §§push(12);
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr933);
                                                   }
                                                   §§goto(addr938);
                                                }
                                                if("ZOOM_OUT" === _loc5_)
                                                {
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§goto(addr833);
                                                   }
                                                   addr866:
                                                   §§push(8);
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr869);
                                                   }
                                                   §§goto(addr888);
                                                }
                                                if("BUTTON_NO" === _loc5_)
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(7);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§goto(addr938);
                                                      }
                                                      §§goto(addr869);
                                                   }
                                                   §§goto(addr880);
                                                }
                                                if("BUTTON_YES" === _loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr866);
                                                   }
                                                   §§goto(addr880);
                                                }
                                                if("CREDIT_OK" === _loc5_)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§goto(addr880);
                                                   }
                                                   §§goto(addr894);
                                                }
                                                if("CHECKBOX_CHANGE" === _loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr894);
                                                   }
                                                   §§goto(addr920);
                                                }
                                                if("CREDIT_REDEEM" === _loc5_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(11);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§goto(addr819);
                                                      }
                                                      §§goto(addr894);
                                                   }
                                                   §§goto(addr920);
                                                }
                                                if("CONFIRM_LEAVE" === _loc5_)
                                                {
                                                   §§goto(addr920);
                                                }
                                                addr938:
                                                switch(§§pop())
                                                {
                                                   case 9:
                                                      sCheetosPopups.hidePopup();
                                                      addr296:
                                                   case 10:
                                                      addr277:
                                                      var checkBoxComponent:§0j§ = component as §0j§;
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3^§)
                                                         {
                                                            addr249:
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  addr259:
                                                                  §5!9§.§-!O§.§+!1§ = !§5!9§.§-!O§.§+!1§;
                                                                  addr255:
                                                                  if(_loc6_ || param3)
                                                                  {
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        addr213:
                                                                        addr212:
                                                                        if(§5!9§.§-!O§.§+!1§)
                                                                        {
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc6_ || param3)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr234:
                                                                                    §§pop().§§slot[4].setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                    addr232:
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr237:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr249);
                                                                                       }
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr671:
                                                                                          break;
                                                                                          addr141:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr318:
                                                                                          this.§+8§();
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr291:
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    sCheetosPopups.hidePopup();
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       addr692:
                                                                                       break;
                                                                                       addr692:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                              §§goto(addr730);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        addr198:
                                                                        addr196:
                                                                        addr195:
                                                                        §§push(checkBoxComponent);
                                                                        §§push(§0j§.§+o§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§pop().setComponentState(§§pop());
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§goto(addr141);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr336:
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 this.§'^§();
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       if(_loc7_ && param2)
                                                                                       {
                                                                                          addr480:
                                                                                          if(!§?,§.sCheetosPopups.showPopup(§&O§.§3^§))
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      this.§'^§();
                                                                                                      addr499:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      break;
                                                                                                      addr543:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr500:
                                                                                                   break;
                                                                                                   addr529:
                                                                                                   addr506:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr234);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          sCheetosPopups.hidePopup();
                                                                                          §§goto(addr291);
                                                                                          addr326:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr511:
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr382:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr327:
                                                                                          break;
                                                                                       }
                                                                                       break;
                                                                                       addr431:
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr499);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr380:
                                                                              sCheetosPopups.hidePopup();
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr692);
                                                               }
                                                               addr521:
                                                               if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                                                               {
                                                                  addr527:
                                                                  this.§+8§();
                                                                  §§goto(addr529);
                                                               }
                                                               §§goto(addr506);
                                                            }
                                                            break;
                                                            addr505:
                                                         }
                                                         addr146:
                                                         §§push(§5!9§.§-!O§);
                                                         §§push(§5!9§.§-!O§);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop().§8!&§);
                                                            if(_loc6_ || param3)
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  addr166:
                                                                  §§push(!§§pop());
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§pop().§8!&§ = §§pop();
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr58:
                                                                              §§push(§5!9§.§-!O§);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().§8!&§);
                                                                                       if(!(_loc7_ && param3))
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr108:
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc7_ && param3))
                                                                                                               {
                                                                                                                  addr119:
                                                                                                                  §§push(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§pop().setComponentState(§§pop());
                                                                                                                     if(!(_loc7_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§goto(addr296);
                                                                                                                        }
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              §§goto(addr671);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr306:
                                                                                                                              this.navigationConfirmed();
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr291);
                                                                                                                     }
                                                                                                                     addr726:
                                                                                                                     break;
                                                                                                                     addr712:
                                                                                                                  }
                                                                                                                  §§goto(addr198);
                                                                                                               }
                                                                                                               §§goto(addr232);
                                                                                                            }
                                                                                                            §§goto(addr196);
                                                                                                         }
                                                                                                         §§goto(addr730);
                                                                                                      }
                                                                                                      addr394:
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         sCheetosPopups.hidePopup();
                                                                                                         if(_loc7_ && param2)
                                                                                                         {
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr424:
                                                                                                      }
                                                                                                      §§goto(addr327);
                                                                                                   }
                                                                                                   §§goto(addr692);
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         §§push(§0j§.§+o§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§pop().setComponentState(§§pop());
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr58);
                                                                                                                  }
                                                                                                                  §§goto(addr671);
                                                                                                               }
                                                                                                               §§goto(addr198);
                                                                                                            }
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                         §§goto(addr119);
                                                                                                      }
                                                                                                      §§goto(addr108);
                                                                                                   }
                                                                                                   §§goto(addr195);
                                                                                                }
                                                                                                §§goto(addr730);
                                                                                             }
                                                                                             addr520:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr521);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this.§+8§();
                                                                                                §§goto(addr511);
                                                                                             }
                                                                                          }
                                                                                          addr479:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             this.§'^§();
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr480);
                                                                                          §§goto(addr480);
                                                                                       }
                                                                                       §§goto(addr213);
                                                                                    }
                                                                                    §§goto(addr255);
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr146);
                                                                           }
                                                                           break;
                                                                           addr537:
                                                                        }
                                                                        §§goto(addr527);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      break;
                                                   case 0:
                                                      §!L§.§&!Y§();
                                                      §§goto(addr543);
                                                   case 1:
                                                      mNextState = §@t§.§3!?§;
                                                      §§goto(addr537);
                                                   case 2:
                                                      addr517:
                                                      §§goto(addr520);
                                                   case 3:
                                                      sCheetosPopups.hidePopup();
                                                      §§goto(addr505);
                                                   case 4:
                                                      §§push((§@!Z§.§;!,§ as § $§).§,!e§());
                                                      §§push(§@!Z§.§;!,§);
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr479);
                                                         §§push((§§pop() as § $§).§,!e§());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr517);
                                                      }
                                                      §§goto(addr500);
                                                   case 5:
                                                      §<M§.doUserZoom(true);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr692);
                                                      break;
                                                   case 6:
                                                      §<M§.doUserZoom(false);
                                                      §§goto(addr431);
                                                   case 7:
                                                      if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3^§)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            sCheetosPopups.hidePopup();
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                      else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
                                                      {
                                                         §§goto(addr394);
                                                      }
                                                      else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.CONFIRM_LEAVE)
                                                      {
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr327);
                                                   case 8:
                                                      if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3^§)
                                                      {
                                                         §§goto(addr336);
                                                      }
                                                      else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
                                                      {
                                                         §§goto(addr318);
                                                      }
                                                      else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.CONFIRM_LEAVE)
                                                      {
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr291);
                                                   default:
                                                      break;
                                                   case 11:
                                                      try
                                                      {
                                                         §!!@§.§%Q§("addCredits");
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr692);
                                                      }
                                                      catch(e:Error)
                                                      {
                                                      }
                                                      §§goto(addr692);
                                                   case 12:
                                                      try
                                                      {
                                                         this.navigationConfirmed();
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr712);
                                                         }
                                                         break;
                                                      }
                                                      catch(e:Error)
                                                      {
                                                      }
                                                      §§goto(addr726);
                                                }
                                                return;
                                                §§push(13);
                                             }
                                             §§goto(addr920);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop().slingshot);
                                          break loop9;
                                       }
                                    }
                                    §§goto(addr628);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§pop().shoot();
                                 §§goto(addr639);
                              }
                           }
                           while(_loc7_);
                           
                        }
                        §§goto(addr538);
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §'^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§"!g§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§push(§@!Z§.§;!,§);
                     loop9:
                     while(true)
                     {
                        §§push((§§pop() as § $§).§,!e§());
                        addr128:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§"!g§ = true;
                              loop1:
                              while(true)
                              {
                                 this.§0!i§(false);
                                 do
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                this.§"!g§ = true;
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   this.§0!i§(false);
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             addr129:
                                             while(true)
                                             {
                                                §@!Z§.§@0§();
                                                continue loop3;
                                             }
                                          }
                                       }
                                       §§push(§@!Z§.§;!,§);
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr80);
                                 }
                                 while(§§pop().camera.goToBirdView(), _loc2_ && this);
                                 
                                 §§goto(addr24);
                              }
                           }
                           §§goto(addr129);
                           continue loop9;
                        }
                     }
                  }
                  addr123:
               }
               addr24:
               return;
            }
            §§goto(addr128);
         }
         §§goto(addr123);
      }
      
      private function §+8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!9§.§7T§();
         }
         do
         {
            mNextState = §'!9§.§3!?§;
            do
            {
               this.§"2§.§5>§();
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && this);
         
      }
      
      private function §&s§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §<M§.getScore();
         if(!(_loc4_ && _loc1_))
         {
            §%!0§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         var _loc2_:int = §5!9§.§#%§.§9!C§(§@;§.§6!K§);
         if(!(_loc4_ && _loc1_))
         {
            §%!0§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      private function §]!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§-8§);
            loop0:
            while(true)
            {
               §§push(§25§.§&a§);
               loop1:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§1!@§);
                  addr85:
                  while(true)
                  {
                     §§push(this.§-8§);
                     while(true)
                     {
                        §§push(§25§.§?n§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().addEventListener(§§pop(),this.§`!d§);
                        addr77:
                        while(true)
                        {
                           §§push(this.§-8§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §0>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§-8§);
            loop0:
            while(true)
            {
               §§push(§25§.§case §);
               addr81:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§=v§);
                  addr84:
                  while(true)
                  {
                     §§push(this.§-8§);
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§-8§);
            if(!_loc2_)
            {
               continue;
            }
            §§goto(addr52);
         }
      }
      
      private function §=v§(param1:§25§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§^!M§();
            loop0:
            while(true)
            {
               §§push(this.§-8§);
               while(true)
               {
                  §§push(§25§.§case §);
                  addr64:
                  addr84:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§=v§);
                     continue loop0;
                  }
                  §§push(this.§-8§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§push(§25§.§^!9§);
                  if(_loc3_ || _loc3_)
                  {
                     §§pop().removeEventListener(§§pop(),this.§>x§);
                     if(_loc3_)
                     {
                        return;
                        addr58:
                     }
                     continue loop0;
                  }
                  §§goto(addr64);
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §^!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§&O§.§2!,§ == false)
            {
               while(true)
               {
                  §@!Z§.§,R§();
                  addr76:
                  while(true)
                  {
                  }
               }
               addr74:
            }
            loop1:
            while(true)
            {
               this.§"!g§ = true;
               while(_loc2_)
               {
                  this.§0!i§(false);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break loop1;
                  }
                  §§goto(addr74);
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function §>x§(param1:§25§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT,"NO_CREDIT");
            while(true)
            {
               §§push(this.§-8§);
               loop1:
               while(true)
               {
                  §§push(§25§.§case §);
                  addr85:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§=v§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §+g§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_LaunchCheetos") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(_loc3_)
         {
            _loc1_.setComponentState(§0j§.§%!T§);
         }
         do
         {
            if((§@!Z§.§;!,§ as § $§).§,!e§())
            {
               if(!_loc4_)
               {
                  _loc2_.visible = true;
               }
            }
            else
            {
               _loc2_.visible = false;
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr33);
               }
            }
         }
         while(!(_loc3_ || _loc1_));
         
         addr33:
      }
      
      private function §95§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§'_§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(§>f§.§%!`§);
                     loop0:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc2_ && this))
                        {
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          while(true)
                                          {
                                             this.§0!i§(true);
                                          }
                                          addr73:
                                       }
                                    }
                                    else
                                    {
                                       this.§0!i§(false);
                                       if(_loc3_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr25:
                                          return;
                                          addr83:
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr64:
                              }
                           }
                           §§goto(addr25);
                           addr116:
                        }
                        addr118:
                        while(true)
                        {
                           §§pop();
                           §§push(§§pop().§`!b§ >= §"!d§.§7!c§);
                           addr43:
                           continue loop0;
                           if(!(_loc3_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr64);
                        }
                     }
                     addr98:
                  }
                  while(true)
                  {
                     §§push(§>f§.§%!`§);
                     if(!_loc2_)
                     {
                        §§goto(addr43);
                     }
                     else
                     {
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr25);
            }
            §§goto(addr116);
         }
         §§goto(addr73);
      }
      
      private function §0!i§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^-§ = §%!0§.getItemByName("Button_LaunchCheetos") as §^-§;
         if(!_loc3_)
         {
            if(!param1)
            {
               _loc2_.setComponentState(§0j§.§%!T§);
               if(_loc4_ || _loc2_)
               {
                  addr55:
               }
               else
               {
                  addr79:
               }
               return;
            }
            if(!(_loc3_ && _loc2_))
            {
               _loc2_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            §§goto(addr79);
         }
         §§goto(addr55);
      }
      
      private function §6!@§(param1:Event) : void
      {
      }
      
      public function get §58§() : §<n§
      {
         return §<M§;
      }
      
      public function get §`!5§() : String
      {
         return mNextState;
      }
      
      protected function §0!K§() : Boolean
      {
         return this.§"2§.§,!@§;
      }
      
      private function §1!@§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4!,§ = true;
         }
      }
      
      private function §`!d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §5!9§.§-!O§.§;!;§(§39§.§3!?§);
         }
         do
         {
            §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT,"NO_CREDIT");
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §%n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = this.§6!D§;
            do
            {
               this.§6!D§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      private function §=R§(param1:§4!1§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§"2§);
            loop0:
            while(true)
            {
               §§push(§4!1§.§1!8§);
               addr108:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§,5§);
                  continue loop0;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §;!M§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§"2§);
            loop0:
            while(true)
            {
               §§pop().§>3§();
               loop1:
               while(true)
               {
                  §§push(this.§"2§);
                  addr120:
                  while(true)
                  {
                     §§pop().levelCompleted();
                     loop3:
                     while(true)
                     {
                        §§push(this.§"2§);
                        addr99:
                        loop4:
                        while(_loc3_)
                        {
                           §§push(§4!1§.§1!8§);
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§,5§);
                              §§push(§4!1§.§3!>§);
                              addr83:
                              continue loop4;
                              if(_loc3_ || param1)
                              {
                                 §§pop().addEventListener(§§pop(),this.§=R§);
                                 for(; this.§;i§; if(!(_loc2_ && _loc2_))
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 })
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§;i§.removeEventListener(TimerEvent.TIMER,this.§;!M§);
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§"2§);
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  §§goto(addr83);
               }
               §§goto(addr120);
            }
            §§goto(addr99);
         }
      }
      
      private function §,5§(param1:§4!1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§"2§);
            loop0:
            while(true)
            {
               §§push(§4!1§.§3!>§);
               addr102:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§=R§);
                  continue loop0;
               }
            }
            addr100:
         }
         loop2:
         while(true)
         {
            §§push(this.§"2§);
            if(_loc2_)
            {
               §§push(§4!1§.§1!8§);
               if(_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.§,5§);
                  loop3:
                  while(this.§;i§)
                  {
                     loop4:
                     while(!_loc3_)
                     {
                        this.§;i§.removeEventListener(TimerEvent.TIMER,this.§;!M§);
                        loop5:
                        do
                        {
                           this.§;i§.stop();
                           while(!_loc3_)
                           {
                              this.§;i§ = null;
                              if(!_loc3_)
                              {
                                 continue loop5;
                              }
                           }
                           continue loop4;
                        }
                        while(_loc3_);
                        
                        if(_loc2_ || this)
                        {
                           break loop3;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
            }
            else
            {
               §§goto(addr100);
            }
            §§goto(addr102);
         }
      }
   }
}
