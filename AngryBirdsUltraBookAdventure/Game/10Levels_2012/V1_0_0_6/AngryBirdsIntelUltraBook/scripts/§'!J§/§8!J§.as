package §'!J§
{
   import §#!H§.§#p§;
   import §'!Q§.§ §;
   import §,!§.§![§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §;!o§.§>!l§;
   import §;H§.§%!D§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §?N§.§?1§;
   import §?N§.§]!e§;
   import §[!+§.§ !I§;
   import §]+§.§@!J§;
   import §^!W§.UserProgressEvent;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §8!J§ extends §%!D§
   {
       
      
      private var §<K§:§?1§;
      
      private var §>!6§:String;
      
      private var §,!&§:String;
      
      protected var §,0§:Boolean = false;
      
      private var §"5§:Boolean = false;
      
      public function §8!J§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
         }
         do
         {
            §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
            loop1:
            while(true)
            {
               §^!c§.§5!Y§.background.§5!e§();
               loop2:
               while(!_loc2_)
               {
                  if(LevelManager.§];§().name != "1000")
                  {
                     loop5:
                     while(this.§,0§)
                     {
                        addr32:
                        if(_loc1_)
                        {
                           this.§4^§();
                        }
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        addr79:
                        while(_loc1_)
                        {
                           continue loop5;
                           §§goto(addr32);
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
            while(true)
            {
               §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
            }
            addr94:
         }
         loop1:
         while(true)
         {
            §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
            loop2:
            do
            {
               if(_loc2_ && _loc1_)
               {
                  continue loop1;
               }
               this.§"5§ = false;
               while(_loc1_)
               {
                  super.deActivate();
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop2;
                  }
               }
               §§goto(addr94);
            }
            while(!(_loc1_ || this));
            
            return;
         }
      }
      
      protected function §4^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
         }
         do
         {
            §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
            do
            {
               §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
               do
               {
                  §&!m§.getItemByName("Button_Embed").setVisibility(false);
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && _loc1_))
         {
            super.onBadgeLanded();
         }
         §§push((AngryBirdsFP11.sUserProgress as §![§).§<y§(LevelManager.§%n§));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §![§).getEagleScoreForLevel(LevelManager.§%n§);
         if(!_loc6_)
         {
            §§push(this.§,0§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  this.§4^§();
                  if(!_loc5_)
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             if(_loc5_ || _loc1_)
                                             {
                                                addr52:
                                                return;
                                                addr56:
                                             }
                                             else
                                             {
                                                §4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc3_,_loc4_,§#p§.§8!C§,20);
                                                addr350:
                                                if(!_loc6_)
                                                {
                                                   addr352:
                                                   if(!_loc6_)
                                                   {
                                                      §&!m§.addChild(§4!y§);
                                                      §=K§.push(§4!y§);
                                                      addr335:
                                                      break;
                                                      addr354:
                                                      addr335:
                                                   }
                                                   while(true)
                                                   {
                                                      §&!m§.getItemByName("Button_Share_Crown").setVisibility(true);
                                                      addr394:
                                                      §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr354);
                                                   addr411:
                                                }
                                                while(true)
                                                {
                                                   addr379:
                                                   addr380:
                                                   _loc3_ = Number(§&!m§.getItemByName("Button_Share_Crown").x + §&!m§.getItemByName("Container_LevelEndStripe").x);
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr352);
                                                addr367:
                                             }
                                          }
                                          else
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §&!m§.getItemByName("Button_Share_Stars").setVisibility(true);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(Number(§&!m§.getItemByName("Button_Share_Stars").x + §&!m§.getItemByName("Container_LevelEndStripe").x));
                                                            }
                                                            else
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_ == 1);
                                                                  if(!(_loc6_ && _loc1_))
                                                                  {
                                                                     while(!§§pop())
                                                                     {
                                                                        if(§3!h§)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§,!&§ = "stars";
                                                                              continue loop1;
                                                                           }
                                                                           addr312:
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§,!&§ = "";
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §&!m§.getItemByName("Button_Share_Default").setVisibility(true);
                                                                                    §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                                                    addr123:
                                                                                    if(!(_loc5_ || _loc2_))
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr137:
                                                                                 }
                                                                                 §§goto(addr350);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_ && _loc3_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    §=K§.push(§4!y§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc1_))
                                                                                          {
                                                                                             §9'§.playSound("Hiscore_Star_Splash1",§!!>§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                if(!(_loc5_ || this))
                                                                                                {
                                                                                                   addr321:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr335);
                                                                                                   }
                                                                                                   addr323:
                                                                                                }
                                                                                                §§goto(addr56);
                                                                                             }
                                                                                             addr161:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr428:
                                                                                       addr428:
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §&!m§.addChild(§4!y§);
                                                                                             continue loop12;
                                                                                          }
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc6_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc3_,_loc4_,§#p§.§8!C§,20);
                                                                                                continue loop7;
                                                                                             }
                                                                                             addr278:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§&!m§.getItemByName("Button_Share_Stars").y + §&!m§.getItemByName("Container_LevelEndStripe").y));
                                                                                                if(!(_loc5_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§goto(addr379);
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                §§goto(addr279);
                                                                                             }
                                                                                             addr279:
                                                                                          }
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                       §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
                                                                                       §§goto(addr411);
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr380);
                                                                                 }
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                           addr144:
                                                                        }
                                                                     }
                                                                     break loop3;
                                                                     addr423:
                                                                  }
                                                                  addr440:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop20;
                                                                  }
                                                               }
                                                               addr441:
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         this.§,!&§ = "crown";
                                                         §§goto(addr428);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§%!#§));
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr440);
                                                               }
                                                               §§goto(addr423);
                                                            }
                                                            §§goto(addr440);
                                                         }
                                                         addr434:
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   addr295:
                                                }
                                                §§goto(addr312);
                                             }
                                          }
                                          §§goto(addr366);
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr123);
                     }
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §9'§.playSound("Hiscore_Star_Splash1",§!!>§);
                           §§goto(addr321);
                        }
                        else
                        {
                           §§goto(addr428);
                        }
                     }
                     §§goto(addr323);
                  }
                  §§goto(addr52);
               }
               §§goto(addr434);
            }
            §§goto(addr440);
         }
         §§goto(addr441);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if(_loc10_ || param1)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               §§push((§§pop() as §![§).§0m§);
               if(!_loc9_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc10_)
                  {
                     if(§§pop())
                     {
                        addr178:
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr179:
                           while(true)
                           {
                              §§push(_loc4_.indexOf(param2) == -1);
                              if(!(_loc9_ && param3))
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc10_)
                              {
                                 break;
                              }
                              continue loop6;
                           }
                        }
                        addr178:
                     }
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                              if(_loc10_)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    if(_loc10_ || param1)
                                    {
                                       break loop1;
                                    }
                                    break;
                                 }
                                 addr123:
                                 while(_loc9_ && param3)
                                 {
                                    while(!(_loc9_ && param3))
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 return;
                              }
                              if(!(_loc9_ && param2))
                              {
                                 continue;
                              }
                           }
                           this.§>!6§ = param2;
                           §§goto(addr135);
                           addr165:
                        }
                        this.§<K§ = §]!e§.§>§();
                        §§goto(addr165);
                     }
                     var _loc8_:* = param2;
                     if(_loc10_ || param3)
                     {
                        §§push("FRIENDS_BUTTON");
                        if(!(_loc9_ && this))
                        {
                           §§push(_loc8_);
                           if(_loc10_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§push(0);
                                    if(_loc9_)
                                    {
                                       addr502:
                                    }
                                 }
                                 else
                                 {
                                    addr431:
                                    §§push(1);
                                    if(!(_loc10_ || this))
                                    {
                                       addr467:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("SHARE_CROWN");
                                 if(!(_loc9_ && param3))
                                 {
                                    addr415:
                                    §§push(_loc8_);
                                    if(_loc10_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             §§goto(addr431);
                                          }
                                          §§goto(addr507);
                                       }
                                       §§push("SHARE_STARS");
                                       if(!(_loc9_ && this))
                                       {
                                          addr448:
                                          §§push(_loc8_);
                                          if(_loc10_ || param2)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr459:
                                                   §§push(2);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§goto(addr467);
                                                   }
                                                   else
                                                   {
                                                      addr495:
                                                      §§goto(addr507);
                                                   }
                                                }
                                                else
                                                {
                                                   addr487:
                                                   §§push(3);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§goto(addr495);
                                                   }
                                                   §§goto(addr507);
                                                }
                                                §§goto(addr507);
                                             }
                                             else
                                             {
                                                §§push("SHARE_DEFAULT");
                                                if(_loc10_)
                                                {
                                                   addr481:
                                                   §§push(_loc8_);
                                                   if(!_loc9_)
                                                   {
                                                      addr484:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr487);
                                                         }
                                                         else
                                                         {
                                                            addr499:
                                                            §§push(4);
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr502);
                                                            }
                                                            §§goto(addr507);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("EMBED");
                                                      }
                                                      §§goto(addr499);
                                                   }
                                                   addr498:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr499);
                                                   }
                                                   else
                                                   {
                                                      addr507:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                                            addr55:
                                                            §@!J§.§!v§(_loc5_);
                                                            addr72:
                                                            if(_loc10_ || param1)
                                                            {
                                                               §[!P§.§;!K§.§&2§();
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr55);
                                                                     }
                                                                     _loc6_ = new URLRequest(_loc5_);
                                                                     if(_loc10_)
                                                                     {
                                                                        navigateToURL(_loc6_,"_blank");
                                                                        break;
                                                                        addr371:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§>!l§);
                                                                        §§push("shareThreeStars");
                                                                        §§push(LevelManager.§%n§);
                                                                        §§push(LevelManager.§];§().writtenName + "-");
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
                                                                        }
                                                                        §§pop().§ a§(§§pop(),§§pop(),§§pop(),§^!c§.§-U§.getScore());
                                                                        addr309:
                                                                        break;
                                                                        addr309:
                                                                        addr300:
                                                                     }
                                                                  }
                                                                  §§goto(addr72);
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         case 1:
                                                            addr365:
                                                            AngryBirdsFP11.§3l§.§&2§();
                                                            §§push((AngryBirdsFP11.sUserProgress as §![§).§<y§(LevelManager.§%n§));
                                                            if(_loc10_)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            _loc7_ = §§pop();
                                                            §§push(§>!l§);
                                                            §§push("shareCrown");
                                                            §§push(LevelManager.§%n§);
                                                            §§push(LevelManager.§];§().writtenName + "-");
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
                                                            }
                                                            §§pop().§ a§(§§pop(),§§pop(),§§pop(),_loc7_,§^!c§.§-U§.getScore());
                                                            addr359:
                                                            if(_loc9_ && param1)
                                                            {
                                                               §§goto(addr359);
                                                            }
                                                            if(_loc10_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr371);
                                                            break;
                                                            addr366:
                                                         case 2:
                                                            §§push(AngryBirdsFP11.§3l§);
                                                            if(_loc10_)
                                                            {
                                                               §§pop().§&2§();
                                                               §§goto(addr309);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr365);
                                                            }
                                                         case 3:
                                                            §§push(§>!l§);
                                                            §§push("shareDefault");
                                                            §§push(LevelManager.§%n§);
                                                            §§push(LevelManager.§];§().writtenName + "-");
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
                                                            }
                                                            §§pop().§ a§(§§pop(),§§pop(),§§pop(),§^!c§.§-U§.getScore(),true);
                                                            addr269:
                                                            if(_loc10_ || param1)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr300);
                                                            }
                                                         case 4:
                                                            §§push(§]!e§);
                                                            §§push(LevelManager.§%n§);
                                                            §§push(LevelManager.§];§().writtenName + "-");
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
                                                            }
                                                            §§pop().§@!'§(§§pop(),§§pop(),§^!c§.§-U§.getScore(),this.§,!&§);
                                                            if(_loc10_ || param1)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr366);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                      }
                                                      return;
                                                      §§push(5);
                                                   }
                                                   §§goto(addr507);
                                                }
                                                §§goto(addr498);
                                                §§push(_loc8_);
                                             }
                                             §§goto(addr507);
                                          }
                                          §§goto(addr498);
                                       }
                                       §§goto(addr481);
                                       §§goto(addr499);
                                    }
                                    §§goto(addr481);
                                 }
                                 §§goto(addr448);
                              }
                              §§goto(addr507);
                           }
                           §§goto(addr484);
                        }
                        §§goto(addr415);
                     }
                     §§goto(addr459);
                  }
               }
               §§goto(addr178);
            }
            addr168:
         }
         while(true)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            if(!(_loc9_ && this))
            {
               (§§pop() as §![§).addEventListener(UserProgressEvent.§^!k§,this.§`!8§);
               §§goto(addr123);
            }
            else
            {
               §§goto(addr168);
            }
         }
      }
      
      protected function §`!8§(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (AngryBirdsFP11.sUserProgress as §![§).removeEventListener(UserProgressEvent.§^!k§,this.§`!8§);
            loop0:
            while(true)
            {
               §§push(this.§<K§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§<K§);
                        addr89:
                        while(true)
                        {
                           §§pop().close();
                           addr90:
                           addr80:
                           loop4:
                           while(true)
                           {
                              this.§<K§ = null;
                              addr78:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop4;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.uiInteractionHandler(-1,this.§>!6§,null);
                     while(_loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           this.§>!6§ = null;
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr78);
                     §§goto(addr80);
                  }
               }
               §§goto(addr89);
            }
         }
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§^!c§.§2!w§ as §[!P§).newUserScore(LevelManager.§%n§);
            do
            {
               (AngryBirdsFP11.sUserProgress as §![§).saveLevelProgress(LevelManager.§%n§);
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!(_loc6_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§%n§));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§^!c§.§-U§.getScore());
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            §%!#§ = _loc3_ > _loc2_;
            if(!(_loc6_ && _loc2_))
            {
               §[!3§(_loc3_,_loc2_);
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§%n§,_loc3_));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(false);
            while(true)
            {
               (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.gotoAndStop("UnLit");
               loop1:
               while(true)
               {
                  (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.gotoAndStop("UnLit");
                  addr168:
                  while(true)
                  {
                     (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.gotoAndStop("UnLit");
                     addr146:
                     while(_loc7_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            addr186:
         }
         while(true)
         {
            do
            {
               if(§%!#§)
               {
                  while(_loc7_)
                  {
                     this.saveLevelProgress();
                     while(true)
                     {
                        if(_loc7_)
                        {
                           continue;
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr146);
               }
               §§goto(addr101);
            }
            while(false);
            
            §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc5_:* = §§pop();
            return;
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
            do
            {
               (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
               continue loop0;
            }
            while(!(_loc2_ || this));
            
            return;
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=U§.push((§&!m§.getItemByName("Button_Menu") as §==§).x);
            while(true)
            {
               §=U§.push((§&!m§.getItemByName("Button_Replay") as §==§).x);
               addr45:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               return;
               addr52:
            }
         }
         while(true)
         {
            §=U§.push((§&!m§.getItemByName("Button_NextLevel") as §==§).x);
            while(!_loc1_)
            {
               §=U§.push((§&!m§.getItemByName("Button_CutScene") as §==§).x);
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr52);
      }
      
      override protected function getViewXML() : XML
      {
         return § !I§.§3!a§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.§9!,§(LevelManager.§%n§))
            {
               (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
               while(!(_loc2_ && _loc1_))
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc1_)
                     {
                        (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
                        loop1:
                        while(_loc1_ || _loc2_)
                        {
                           (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                           loop2:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
                              loop3:
                              while(true)
                              {
                                 (§&!m§.getItemByName("Button_Menu") as §==§).x = §=U§[0];
                                 loop4:
                                 while(_loc1_)
                                 {
                                    (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[1];
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                       addr69:
                                       (§&!m§.getItemByName("Button_CutScene") as §==§).x = §=U§[2];
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr233);
                              }
                           }
                           §§goto(addr19);
                        }
                        continue;
                     }
                     addr256:
                     (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
                     loop8:
                     while(true)
                     {
                        (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                        addr233:
                        addr212:
                        (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
                        while(!_loc1_)
                        {
                           continue loop8;
                        }
                        (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[0] + Math.abs(§=U§[1] - §=U§[0]) / 2;
                     }
                  }
                  (§&!m§.getItemByName("Button_CutScene") as §==§).x = §=U§[1] + Math.abs(§=U§[2] - §=U§[1]) / 2;
                  break;
               }
               while(_loc2_)
               {
                  §§goto(addr212);
                  §§goto(addr203);
               }
               §§goto(addr19);
            }
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(false);
            §§goto(addr256);
         }
         §§goto(addr42);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
            while(true)
            {
               (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
               addr79:
               if(_loc2_ && this)
               {
                  continue;
               }
               (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[1] + Math.abs(§=U§[2] - §=U§[1]) / 2;
               addr86:
               if(!_loc2_)
               {
                  addr47:
                  if(!(_loc1_ || _loc2_))
                  {
                     loop3:
                     for(; _loc1_; §§goto(addr47))
                     {
                        if(!_loc2_)
                        {
                           (§&!m§.getItemByName("Button_Menu") as §==§).x = §=U§[0] + Math.abs(§=U§[1] - §=U§[0]) / 2;
                           loop4:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr79);
                              }
                              else
                              {
                                 loop5:
                                 while(true)
                                 {
                                    (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[1];
                                    addr135:
                                    addr124:
                                    while(true)
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          while(_loc1_)
                                          {
                                             addr167:
                                             if(_loc1_ || this)
                                             {
                                                continue loop5;
                                             }
                                             addr202:
                                             while(true)
                                             {
                                                (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
                                                break loop5;
                                                §§goto(addr167);
                                             }
                                          }
                                          break loop5;
                                       }
                                       addr165:
                                       (§&!m§.getItemByName("Button_NextLevel") as §==§).x = §=U§[2];
                                       break loop3;
                                    }
                                    break loop4;
                                 }
                                 while(true)
                                 {
                                    if(!LevelManager.§7!X§())
                                    {
                                       (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                                       continue loop3;
                                    }
                                 }
                              }
                              §§goto(addr86);
                           }
                           addr19:
                           return;
                           addr77:
                        }
                        (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
                        §§goto(addr165);
                     }
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           §§goto(addr135);
                        }
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr19);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr202);
      }
   }
}
