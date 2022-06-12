package com.AngryBirds.friendsbar
{
   import §!!C§.§1"=§;
   import §!!C§.§]!;§;
   import §%!v§.§[<§;
   import §+N§.§@!]§;
   import §,"2§.§"-§;
   import §,"2§.§;6§;
   import §-!+§.§ 7§;
   import §-!+§.§1C§;
   import §-!+§.§`"+§;
   import §1p§.§,O§;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §7-§.§,!C§;
   import §]!>§.§#"1§;
   import §]!>§.§0!!§;
   import §]!>§.§2!W§;
   import §]!>§.§;!e§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class § K§ extends Sprite
   {
      
      public static const §7!y§:String = "SidebarButtonStateInfo";
      
      public static const §`!R§:String = "SidebarButtonStatePlay";
      
      public static const §2_§:String = "SidebarButtonStateNone";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §7!y§ = "SidebarButtonStateInfo";
            while(true)
            {
               §`!R§ = "SidebarButtonStatePlay";
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            §2_§ = "SidebarButtonStateNone";
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §0"#§:§`"+§;
      
      private var §7"6§:Array;
      
      private var §,!V§:FriendsBarAsset;
      
      private var §+]§:String;
      
      private var §2!f§:§1"=§;
      
      private var §&X§:String = "";
      
      private var §6"2§:§]!;§;
      
      private var §9!,§:Boolean;
      
      private var §"S§:String;
      
      private var §[f§:Boolean;
      
      public function § K§(param1:§1"=§, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               § 7§.§+!z§ = param3;
               while(true)
               {
                  this.§"S§ = param3;
                  while(_loc4_)
                  {
                     this.§2!f§ = param1;
                     if(_loc4_ || param1)
                     {
                        return;
                        addr47:
                     }
                  }
                  continue loop0;
                  loop4:
                  while(!(_loc5_ && param1))
                  {
                     this.init();
                     if(_loc5_)
                     {
                        continue;
                     }
                     addr28:
                     if(_loc4_)
                     {
                        §§goto(addr40);
                     }
                     while(true)
                     {
                        this.§+]§ = param2;
                        continue loop4;
                        §§goto(addr28);
                     }
                     §§goto(addr47);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §[!e§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,!V§.txtTitle.text = param1;
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            this.§,!V§ = new FriendsBarAsset();
            if(_loc2_ || this)
            {
               addChild(this.§,!V§);
               loop0:
               while(true)
               {
                  this.§[!e§("Total scores");
                  if(_loc2_)
                  {
                     this.§-!d§();
                     if(!_loc3_)
                     {
                        MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
                        if(_loc2_)
                        {
                           MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§0"#§ = new §`"+§(330,180,[],§ 7§,2,15);
                              if(!_loc3_)
                              {
                                 addChild(this.§0"#§.scrollerSprite);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§0"#§);
                                    if(!_loc3_)
                                    {
                                       §§pop().scrollerSprite.x = 180 + 7;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(this.§0"#§);
                                          while(true)
                                          {
                                             §§pop().scrollerSprite.y = 60;
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                             addr73:
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§pop().scrollerSprite.rotation = 90;
                                             if(!(_loc3_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§,!V§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§pop().btnUp.addEventListener(MouseEvent.CLICK,this.§2!d§);
                                                      while(true)
                                                      {
                                                         §§push(this.§,!V§);
                                                         if(_loc2_)
                                                         {
                                                            §§pop().btnDown.addEventListener(MouseEvent.CLICK,this.§!?§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§9!,§ = true;
                                                               while(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(this.§2!f§);
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§9V§());
                                                                        addr331:
                                                                        while(true)
                                                                        {
                                                                           §§pop().addEventListener(§"-§.§;!t§,this.§4!u§);
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr455);
                                                               }
                                                               addr430:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§#!`§.mcItemCountBg.mouseChildren = false;
                                                      §§goto(addr430);
                                                   }
                                                }
                                             }
                                             §§goto(addr503);
                                          }
                                          while(true)
                                          {
                                             §@!]§.addCallback("giftsSentToUsers",this.§<!_§);
                                             if(_loc2_)
                                             {
                                                §§goto(addr248);
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr527);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§pop().scrollerSprite.addEventListener(§;6§.§<!e§,this.§`!i§);
                                    §§goto(addr357);
                                    §§goto(addr383);
                                 }
                                 addr351:
                              }
                              §§goto(addr457);
                           }
                           §§goto(addr548);
                        }
                        §§goto(addr402);
                     }
                     §§goto(addr527);
                  }
                  break;
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(this.§0"#§);
                  if(!_loc3_)
                  {
                     §§goto(addr73);
                  }
                  §§goto(addr351);
               }
               while(true)
               {
                  §§goto(addr387);
               }
            }
            §§goto(addr457);
         }
         §§goto(addr492);
      }
      
      private function §<!_§(param1:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§ 7§ = null;
         if(_loc9_)
         {
            if(!param1)
            {
               if(!_loc10_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:Boolean = false;
            for each(_loc3_ in param1)
            {
               for each(_loc4_ in this.§0"#§.§^!c§)
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     if(_loc3_ != _loc4_.§%!Q§.data.userId)
                     {
                        continue;
                     }
                     if(!(_loc10_ && _loc3_))
                     {
                        addr87:
                        if(_loc4_.§%!Q§ is §1C§)
                        {
                           if(!_loc10_)
                           {
                              §1C§(_loc4_.§%!Q§).setCanSendGift(false,true);
                              if(!(_loc10_ && _loc3_))
                              {
                                 addr118:
                                 §0!!§.§;"§.§[!i§(_loc4_.§%!Q§.data.userId);
                              }
                           }
                           break;
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr87);
               }
            }
            return;
         }
         addr28:
      }
      
      public function §&!t§(param1:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §+!k§.log("Changing state");
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§7!y§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     loop3:
                     for(; _loc3_; §§push(param1),if(_loc2_ && _loc3_)
                     {
                        continue;
                     },§§push(§`!R§),if(_loc2_)
                     {
                        §§goto(addr389);
                     },if(!(_loc3_ || param1))
                     {
                        continue loop2;
                     },if(§§pop() == §§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §+!k§.log("Play state");
                           loop6:
                           while(true)
                           {
                              MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
                              loop7:
                              for(; !_loc2_; if(!(_loc3_ || this))
                              {
                                 continue;
                              },if(!(_loc2_ && param1))
                              {
                                 §§push(this.§,!V§);
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                §§pop().§#!`§.btnInfo.visible = true;
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr65);
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr60);
                                                }
                                                else
                                                {
                                                   §§goto(addr220);
                                                }
                                             }
                                             §§goto(addr441);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr418);
                                    }
                                    §§goto(addr123);
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       §§pop().§#!`§.btnInfo.mouseEnabled = true;
                                       §§goto(addr110);
                                    }
                                    break;
                                    §§goto(addr95);
                                 }
                                 addr95:
                                 §§goto(addr274);
                                 addr99:
                              },§§goto(addr278))
                              {
                                 MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
                                 while(_loc3_)
                                 {
                                    MovieClip(this.§,!V§.§#!`§.mClipInfo).visible = false;
                                    loop9:
                                    while(!_loc2_)
                                    {
                                       MovieClip(this.§,!V§.§#!`§.mClipTutorial).visible = true;
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          MovieClip(this.§,!V§.§#!`§.mClipTutorial).alpha = 1;
                                          loop11:
                                          while(_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§,!V§);
                                                addr123:
                                                while(!(_loc2_ && _loc2_))
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§pop().§#!`§.btnInfo.alpha = 1;
                                                      loop14:
                                                      while(!(_loc2_ && this))
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr343);
                                                         }
                                                         §§goto(addr445);
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§9!,§ = false;
                                                               continue;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop6;
                                                   }
                                                   §§goto(addr449);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr25);
                                          }
                                          continue loop5;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       §§goto(addr390);
                                    }
                                    §§goto(addr333);
                                 }
                                 §§goto(addr422);
                              }
                              §§goto(addr372);
                           }
                        }
                     },§§goto(addr25))
                     {
                        §§push(§2_§);
                        while(§§pop() != §§pop())
                        {
                           continue loop3;
                        }
                        addr390:
                        §+!k§.log("None state");
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
                                 addr372:
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc2_)
                                    {
                                       MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
                                       addr360:
                                       if(_loc3_)
                                       {
                                          MovieClip(this.§,!V§.§#!`§.mClipInfo).alpha = 0.5;
                                          loop18:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                MovieClip(this.§,!V§.§#!`§.mClipTutorial).alpha = 0.5;
                                                §§push(this.§,!V§);
                                                while(true)
                                                {
                                                   §§pop().§#!`§.btnInfo.alpha = 0.5;
                                                   loop19:
                                                   for(; _loc3_; while(true)
                                                   {
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop19;
                                                      }
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               if(_loc2_ && _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     MovieClip(this.§,!V§.§#!`§.mClipTutorial).visible = false;
                                                                     addr473:
                                                                     while(true)
                                                                     {
                                                                        MovieClip(this.§,!V§.§#!`§.mClipTutorial).alpha = 1;
                                                                        break loop19;
                                                                     }
                                                                     §§goto(addr424);
                                                                  }
                                                                  addr483:
                                                               }
                                                               §§goto(addr25);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr390);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr360);
                                                   })
                                                   {
                                                      §§push(this.§,!V§);
                                                      while(true)
                                                      {
                                                         §§pop().§#!`§.btnInfo.mouseEnabled = false;
                                                         continue loop19;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§,!V§);
                                                         addr428:
                                                         while(true)
                                                         {
                                                            §§pop().§#!`§.btnInfo.visible = true;
                                                            addr432:
                                                            while(true)
                                                            {
                                                               §§push(this.§,!V§);
                                                               addr418:
                                                               while(true)
                                                               {
                                                                  §§pop().§#!`§.btnFullscreen.visible = true;
                                                                  addr422:
                                                                  if(_loc3_)
                                                                  {
                                                                     addr25:
                                                                     return;
                                                                     addr424:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr523:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     MovieClip(this.§,!V§.§#!`§.mClipTutorial).mouseEnabled = false;
                                                                     addr513:
                                                                     while(true)
                                                                     {
                                                                        MovieClip(this.§,!V§.§#!`§.mClipInfo).visible = true;
                                                                        break loop18;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§,!V§);
                                                      addr449:
                                                      while(true)
                                                      {
                                                         §§pop().§#!`§.btnInfo.alpha = 1;
                                                         addr453:
                                                         while(true)
                                                         {
                                                            §§push(this.§,!V§);
                                                            addr441:
                                                            while(true)
                                                            {
                                                               §§pop().§#!`§.btnInfo.mouseEnabled = true;
                                                               addr445:
                                                               while(true)
                                                               {
                                                                  this.§9!,§ = true;
                                                                  §§goto(addr437);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr317:
                                                addr333:
                                             }
                                             break;
                                             §§goto(addr362);
                                          }
                                          addr362:
                                          while(true)
                                          {
                                             MovieClip(this.§,!V§.§#!`§.mClipInfo).alpha = 1;
                                             §§goto(addr483);
                                          }
                                          addr343:
                                       }
                                       §§goto(addr437);
                                    }
                                    §§goto(addr513);
                                 }
                                 §§goto(addr473);
                              }
                              break loop2;
                           }
                           MovieClip(this.§,!V§.§#!`§.mClipInfo).mouseEnabled = false;
                           §§goto(addr523);
                           addr531:
                        }
                        §§goto(addr453);
                     }
                     continue loop1;
                  }
                  §+!k§.log("Info state");
                  §§goto(addr531);
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr99);
               §§push(this.§,!V§);
            }
         }
         §§goto(addr181);
      }
      
      public function §-!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§>!E§.§=J§())
            {
               if(!(_loc1_ && _loc2_))
               {
                  MovieClip(this.§,!V§.§#!`§.mClipSoundOff).visible = false;
               }
               loop5:
               while(true)
               {
                  MovieClip(this.§,!V§.§#!`§.mClipSoundOn).visible = true;
                  addr144:
                  while(true)
                  {
                     MovieClip(this.§,!V§.§#!`§.mClipSoundOff).mouseEnabled = false;
                     addr122:
                     while(!_loc2_)
                     {
                        continue loop5;
                     }
                     MovieClip(this.§,!V§.§#!`§.mClipSoundOn).mouseEnabled = false;
                  }
               }
            }
            else
            {
               MovieClip(this.§,!V§.§#!`§.mClipSoundOff).visible = true;
               while(true)
               {
                  MovieClip(this.§,!V§.§#!`§.mClipSoundOn).visible = true;
                  loop1:
                  while(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        MovieClip(this.§,!V§.§#!`§.mClipSoundOff).mouseEnabled = false;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr144);
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  addr47:
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         §§goto(addr47);
      }
      
      private function §=!+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new §;6§(§;6§.§>!B§));
         }
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §;6§(§;6§.§;"E§));
         }
      }
      
      private function §[!G§(param1:§;6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.§@<§.§#m§();
         }
         do
         {
            §@!]§.§9"'§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §[<§).userName,param1.data.userId);
         }
         while(!(_loc3_ || this));
         
      }
      
      private function §`!i§(param1:§;6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.§@<§.§#m§();
         }
         do
         {
            §@!]§.§9"'§("flashSendChallengeFriend",(AngryBirdsFP11.sUserProgress as §[<§).userName,param1.data.userId);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private function §1!T§(param1:§;6§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§;!e§ = null;
         var _loc2_:§;!e§ = param1.data as §;!e§;
         if(!(_loc8_ && _loc3_))
         {
            §§push(§]!;§.§!!"§);
            if(!(_loc8_ && param1))
            {
               §§pop().push(_loc2_.userId);
               while(true)
               {
                  §§push(this.§2!f§);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(§§pop().§9V§());
                     if(!(_loc8_ && param1))
                     {
                        if(§§pop().data.indexOf(_loc2_) != -1)
                        {
                           addr144:
                           if(!_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 §§push(this.§2!f§);
                                 break;
                              }
                              continue;
                           }
                           while(true)
                           {
                           }
                           addr144:
                        }
                        loop1:
                        while(true)
                        {
                           §§push(this.§6"2§);
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
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
                                          §§push(this.§6"2§);
                                          if(!_loc8_)
                                          {
                                             if(!(_loc7_ || _loc2_))
                                             {
                                                break;
                                             }
                                             §§push(§§pop().data.indexOf(_loc2_) == -1);
                                             if(!_loc8_)
                                             {
                                                if(_loc8_ && _loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(!§§pop());
                                             }
                                             if(!_loc8_)
                                             {
                                                loop6:
                                                while(§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(this.§6"2§);
                                                      while(true)
                                                      {
                                                         §§pop().data.splice(this.§6"2§.data.indexOf(_loc2_),1);
                                                      }
                                                      addr68:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr85:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr144);
                                                      }
                                                   }
                                                }
                                                var _loc3_:Array = §,!C§.§;"§.§=!V§();
                                                for each(_loc4_ in _loc3_)
                                                {
                                                   if(_loc4_.userId == _loc2_.userId)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §,!C§.§;"§.§9§(_loc2_.userId);
                                                      }
                                                   }
                                                }
                                                if(_loc7_)
                                                {
                                                   this.§'"+§();
                                                   while(true)
                                                   {
                                                      this.§@!&§();
                                                      §§goto(addr224);
                                                   }
                                                }
                                             }
                                             continue loop4;
                                             addr224:
                                             while(true)
                                             {
                                                dispatchEvent(new §;6§(§;6§.§;"E§,_loc2_));
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr68);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr62);
                              }
                           }
                        }
                     }
                     addr135:
                     §§pop().data.splice(this.§2!f§.§9V§().data.indexOf(_loc2_),1);
                     §§goto(addr144);
                  }
                  break;
               }
               §§goto(addr135);
               §§push(§§pop().§9V§());
            }
            §§goto(addr161);
         }
         §§goto(addr85);
      }
      
      private function §4!W§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            dispatchEvent(new §;6§(§;6§.§-!&§));
         }
      }
      
      private function §"!'§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new §;6§(§;6§.§%!>§));
         }
      }
      
      private function §7!U§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §;6§(§;6§.§!C§));
            do
            {
               this.§-!d§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §1_§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §+!k§.log("Info Clicked at least in friendsbar");
            loop0:
            while(true)
            {
               if(!this.§9!,§)
               {
                  §+!k§.log(§;6§.§;c§);
                  do
                  {
                     if(_loc3_ || param1)
                     {
                        continue;
                     }
                     addr81:
                     do
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                     }
                     while(!_loc3_);
                     
                     if(_loc3_)
                     {
                        break;
                        addr87:
                     }
                     continue loop0;
                  }
                  while(dispatchEvent(new §;6§(§;6§.§;c§)), _loc2_ && this);
                  
                  return;
               }
               while(true)
               {
                  §+!k§.log(§;6§.§+u§);
                  while(true)
                  {
                     dispatchEvent(new §;6§(§;6§.§+u§));
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.resize(param1);
         }
      }
      
      private function resize(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = Math.max(param1,330);
         if(_loc5_)
         {
            §§push(this.§,!V§);
            loop0:
            while(true)
            {
               §§pop().§0"?§.height = _loc2_ - this.§,!V§.§ "+§.height - this.§,!V§.§"!1§.height;
               loop1:
               while(true)
               {
                  §§push(this.§,!V§);
                  loop2:
                  while(true)
                  {
                     §§pop().§"!1§.y = this.§,!V§.§0"?§.y + this.§,!V§.§0"?§.height;
                     loop3:
                     while(_loc5_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(this.§,!V§);
                           loop5:
                           while(_loc5_)
                           {
                              §§pop().§#!`§.y = this.§,!V§.§"!1§.y - 62;
                              do
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.§,!V§);
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                                 §§pop().btnDown.y = this.§,!V§.§"!1§.y - 92;
                              }
                              while(!(_loc5_ || _loc2_));
                              
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr55);
         }
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(§§pop() - 254);
            if(_loc5_ || this)
            {
               addr146:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               this.§0"#§.setWidth(_loc3_);
               do
               {
                  this.§@!&§();
               }
               while(!(_loc5_ || this));
               
            }
            return;
         }
         §§goto(addr146);
      }
      
      private function §2!d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.scroll(-this.§0"#§.§1!a§);
         }
      }
      
      private function §!?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.scroll(this.§0"#§.§1!a§);
         }
      }
      
      private function §-t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(new §;6§(§;6§.§ !H§));
         }
      }
      
      public function §0"=§(param1:String, param2:String, param3:§]!;§ = null, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§&X§);
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
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
                              addr456:
                              while(true)
                              {
                                 §§push(this.§[f§);
                                 addr433:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr434:
                                    while(_loc5_)
                                    {
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 break;
                              }
                              loop9:
                              for(; _loc5_; if(_loc6_ && this)
                              {
                                 continue;
                              },§§goto(addr199),§§push(this.§6"2§))
                              {
                                 while(true)
                                 {
                                    this.§[f§ = false;
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§6"2§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop13:
                                          while(_loc5_ || param1)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(this.§&X§);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(_loc6_ && this)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc6_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(!§§pop());
                                                               while(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§6"2§);
                                                                           addr392:
                                                                           while(true)
                                                                           {
                                                                              §§push(§"-§.§;!t§);
                                                                              addr394:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().removeEventListener(§§pop(),this.§,!E§);
                                                                                 addr397:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§6"2§ = null;
                                                                                    addr356:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr388:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr433);
                                                                  }
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     §§push(param4);
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§6"2§);
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(§"-§.§;!t§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().addEventListener(§§pop(),this.§,!E§);
                                                                              loop40:
                                                                              while(true)
                                                                              {
                                                                                 loop41:
                                                                                 while(true)
                                                                                 {
                                                                                    § 7§.§<"C§ = true;
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§0"#§.data = [];
                                                                                       loop48:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             this.§@!&§();
                                                                                             loop42:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§6"2§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         if(§§pop().§6I§)
                                                                                                         {
                                                                                                            loop43:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§&!t§(§`!R§);
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop39:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§&X§ = param2;
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr29:
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        loop37:
                                                                                                                        for(; !(_loc6_ && param2); §§goto(addr29))
                                                                                                                        {
                                                                                                                           this.§&!t§(§7!y§);
                                                                                                                           while(_loc5_ || param3)
                                                                                                                           {
                                                                                                                              addr48:
                                                                                                                              if(_loc5_ || param3)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              loop22:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ || param2))
                                                                                                                                 {
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    this.§7"6§ = this.§2!f§.§9V§().data;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§'"+§();
                                                                                                                                       addr108:
                                                                                                                                       addr144:
                                                                                                                                       while(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          this.§&?§(this.§2!f§.§9V§().§8"?§);
                                                                                                                                          break loop37;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop50;
                                                                                                                                          }
                                                                                                                                          if(!(_loc6_ && param3))
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                § 7§.§<"C§ = false;
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          addr285:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop41;
                                                                                                                                                }
                                                                                                                                                §§goto(addr390);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr330:
                                                                                                                                                while(param3 != null)
                                                                                                                                                {
                                                                                                                                                   this.§6"2§ = param3;
                                                                                                                                                }
                                                                                                                                                loop46:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§6"2§ = this.§2!f§.§#!7§(param1,param2,param4);
                                                                                                                                                   addr316:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ || param1))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      addr348:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         § 7§.§<"C§ = true;
                                                                                                                                                         addr351:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§[!e§("Level scores");
                                                                                                                                                            §§goto(addr330);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop46;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr356);
                                                                                                                                                }
                                                                                                                                                addr330:
                                                                                                                                                addr308:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr108);
                                                                                                                                       }
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    addr123:
                                                                                                                                 }
                                                                                                                                 while(!(_loc6_ && this))
                                                                                                                                 {
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 §§goto(addr397);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 this.§2!f§.§9V§().§%!e§(0,0);
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              addr204:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ || param2))
                                                                                                                                 {
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                 {
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 §§goto(addr316);
                                                                                                                              }
                                                                                                                              continue loop43;
                                                                                                                              §§goto(addr41);
                                                                                                                           }
                                                                                                                           addr41:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                    this.§@!&§();
                                                                                                                                    §§goto(addr74);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || param3)
                                                                                                                                          {
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          §§goto(addr308);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§6"2§);
                                                                                                                                             addr278:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§"-§.§;!t§);
                                                                                                                                                addr280:
                                                                                                                                                while(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§pop().addEventListener(§§pop(),this.§,E§);
                                                                                                                                                   §§goto(addr285);
                                                                                                                                                }
                                                                                                                                                §§goto(addr394);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr276:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr181:
                                                                                                                                 }
                                                                                                                                 §§goto(addr330);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr123);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr63);
                                                                                                                        }
                                                                                                                        addr63:
                                                                                                                        §§goto(addr108);
                                                                                                                     }
                                                                                                                     §§goto(addr41);
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr181);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr278);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      §§pop().§%!e§(0,0);
                                                                                                   }
                                                                                                   addr199:
                                                                                                }
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                             §§goto(addr392);
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             §§goto(addr388);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr456);
                           }
                           §§goto(addr425);
                        }
                        return;
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr348);
               }
               this.§[!e§("Total scores");
               §§goto(addr144);
            }
         }
         §§goto(addr390);
      }
      
      private function §4!u§(param1:§"-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§6"2§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§0"#§);
                  loop1:
                  while(§§pop().data == this.§2!f§.§9V§().data)
                  {
                     §§push(this.§0"#§);
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§pop().§7C§();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           this.§&?§(this.§2!f§.§9V§().§8"?§);
                           loop4:
                           while(_loc3_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 while(_loc3_ || this)
                                 {
                                    this.§'"+§();
                                    break loop4;
                                 }
                                 break loop3;
                              }
                              addr121:
                              this.§@!&§();
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       return;
                                    }
                                    break loop1;
                                 }
                                 continue loop2;
                              }
                           }
                           addr93:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        §§goto(addr132);
                     }
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     this.§7"6§ = this.§2!f§.§9V§().data;
                     §§goto(addr121);
                  }
               }
            }
            addr132:
            return;
         }
         §§goto(addr93);
      }
      
      private function §,E§(param1:§"-§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         if(_loc7_ || _loc3_)
         {
            § 7§.§<"C§ = true;
         }
         var _loc2_:Array = §,!C§.§;"§.§=!V§();
         var _loc3_:Array = this.§6"2§.data.concat(_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ is §2!W§)
            {
               if(_loc7_)
               {
                  (_loc4_ as §2!W§).§'<§ = true;
               }
            }
         }
         if(_loc7_ || this)
         {
            this.§7"6§ = _loc3_;
            while(true)
            {
               this.§'"+§();
               §§goto(addr135);
            }
         }
         addr135:
         while(true)
         {
            this.§&?§(this.§6"2§.§8"?§);
            do
            {
               this.§@!&§();
            }
            while(!(_loc7_ || _loc3_));
            
            if(!(_loc8_ && _loc3_))
            {
               if(!(_loc8_ && _loc3_))
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      private function §,!E§(param1:§"-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            § 7§.§<"C§ = true;
         }
         loop0:
         while(true)
         {
            this.§7"6§ = this.§6"2§.data;
            do
            {
               this.§'"+§();
               do
               {
                  this.§&?§(this.§6"2§.§8"?§);
                  continue loop0;
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
            return;
         }
      }
      
      public function §[!L§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[f§ = true;
            loop0:
            while(true)
            {
               § 7§.§<"C§ = false;
               loop1:
               while(true)
               {
                  this.§7"6§ = param1;
                  while(true)
                  {
                     this.§'"+§();
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              this.§@!&§();
                              if(_loc2_ || param1)
                              {
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §&?§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc6_ || param2)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(-1);
               addr143:
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§0"#§);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop().offset));
                        loop4:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(int(Math.floor(this.§0"#§.§1!a§ / 2)));
                              loop6:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop7:
                                 while(_loc6_)
                                 {
                                    §§push(param1);
                                    if(_loc6_ || param2)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             continue loop0;
                                          }
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                    addr109:
                                    _loc5_ = §§pop();
                                    while(!(_loc7_ && param1))
                                    {
                                       §§push(this.§0"#§);
                                       if(_loc6_)
                                       {
                                          §§push(_loc5_);
                                          §§push(param2);
                                          if(!_loc7_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          §§pop().scroll(§§pop(),§§pop());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(!_loc7_)
                                             {
                                                break loop1;
                                             }
                                             continue loop7;
                                          }
                                          continue;
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr144);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 != 0)
            {
               if(_loc3_)
               {
                  addr50:
                  this.§0"#§.scroll(param1);
               }
               do
               {
                  this.§@!&§();
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr50);
      }
      
      private function §@!&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§0"#§.offset == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§0"#§.offset == this.§0"#§.data.length - this.§0"#§.§1!a§);
         if(_loc4_ || this)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.§,!V§);
            while(true)
            {
               §§pop().btnUp.visible = _loc1_;
               while(true)
               {
                  §§push(this.§,!V§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§pop().btnDown.visible = _loc2_;
                  if(!(_loc3_ && _loc1_))
                  {
                     return;
                     addr89:
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function get §-!C§() : §]!;§
      {
         return this.§6"2§;
      }
      
      public function §&]§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         if(!(_loc14_ && param1))
         {
            §§push(!this.§6"2§);
            if(_loc15_ || this)
            {
               if(!§§pop())
               {
                  if(_loc15_)
                  {
                     addr44:
                     §§pop();
                     if(!_loc14_)
                     {
                        §§push(this.§&X§ == param1);
                        if(_loc15_ || param1)
                        {
                           addr59:
                           if(!§§pop())
                           {
                              if(!_loc14_)
                              {
                                 §§goto(addr62);
                              }
                           }
                        }
                        §§goto(addr59);
                     }
                     var _loc7_:Array = [];
                     var _loc8_:int = this.§0"#§.offset;
                     §§push(this.§6"2§.§&]§(param2,param3,param4,_loc7_));
                     if(!(_loc14_ && this))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc15_)
                     {
                        this.§7"6§ = this.§6"2§.data;
                        if(!_loc14_)
                        {
                           if(param6)
                           {
                              if(_loc15_)
                              {
                                 _loc11_ = §,!C§.§;"§.§=!V§();
                                 if(_loc15_)
                                 {
                                    this.§7"6§ = this.§6"2§.data.concat(_loc11_);
                                 }
                              }
                              this.§&?§(_loc9_ - 1,true);
                              addr149:
                              for each(_loc10_ in _loc7_)
                              {
                                 if(!_loc14_)
                                 {
                                    param5.push(_loc10_);
                                 }
                              }
                              if(_loc15_)
                              {
                                 this.§@!&§();
                              }
                              return _loc9_;
                              addr134:
                           }
                           this.§'"+§();
                           if(_loc15_ || this)
                           {
                              §§goto(addr134);
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr149);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr44);
         }
         addr62:
         return 0;
      }
      
      public function §5!,§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            if(param1 != 0)
            {
               §§push(this.§,!V§);
               loop0:
               while(true)
               {
                  §§pop().§#!`§.txtInboxItemCount.visible = true;
                  loop1:
                  while(_loc5_)
                  {
                     §§push(this.§,!V§);
                     loop2:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        if(_loc5_ || _loc3_)
                        {
                           §§pop().§#!`§.mcItemCountBg.visible = true;
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§<w§(param1));
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§,!V§);
                                       if(_loc6_ && _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    _loc3_ = §§pop().§#!`§.mcItemCountBg;
                                    if(_loc5_ || this)
                                    {
                                       _loc4_ = _loc3_.width;
                                       loop10:
                                       while(true)
                                       {
                                          addr203:
                                          while(true)
                                          {
                                             _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   _loc3_.x = this.§,!V§.§#!`§.txtInboxItemCount.x + this.§,!V§.§#!`§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                       §§goto(addr203);
                                    }
                                    addr44:
                                    §§pop().§#!`§.txtInboxItemCount.text.text = _loc2_;
                                    if(_loc6_ && this)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr156);
                                    §§push(this.§,!V§);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        else
                        {
                           addr118:
                           if(!(_loc6_ && _loc2_))
                           {
                              §§pop().§#!`§.mcItemCountBg.visible = false;
                              break loop1;
                           }
                           loop7:
                           while(true)
                           {
                              §§pop().§#!`§.txtInboxItemCount.visible = false;
                              addr153:
                              while(true)
                              {
                                 §§goto(addr118);
                              }
                              addr136:
                              if(!(_loc5_ || this))
                              {
                                 while(true)
                                 {
                                    continue loop7;
                                    §§goto(addr136);
                                 }
                                 addr147:
                              }
                              break loop2;
                           }
                        }
                     }
                     return;
                  }
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr136);
                  }
                  §§goto(addr153);
               }
            }
            §§goto(addr147);
         }
         §§goto(addr75);
      }
      
      private function §'"+§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§#"1§ = null;
         var _loc5_:* = null;
         var _loc1_:Dictionary = §0!!§.§;"§.§4!Z§();
         var _loc2_:Array = this.§7"6§.concat();
         var _loc3_:* = int(this.§7"6§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§7"6§[_loc3_];
            if(!(_loc9_ && _loc3_))
            {
               §§push(0);
               if(!(_loc9_ && this))
               {
                  var _loc6_:* = §§pop();
                  if(_loc8_)
                  {
                     var _loc7_:* = _loc1_;
                     if(_loc8_ || this)
                     {
                     }
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        §§push(§§nextvalue(_loc6_,_loc7_));
                        if(!_loc9_)
                        {
                           §§push(§§pop());
                           if(!(_loc9_ && this))
                           {
                              _loc5_ = §§pop();
                              addr101:
                              §§push(_loc4_.userId);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc9_ && this))
                              {
                                 _loc2_.splice(_loc3_,1);
                              }
                           }
                           continue;
                        }
                        §§goto(addr101);
                     }
                  }
                  if(_loc8_ || _loc2_)
                  {
                     addr136:
                     §§push(_loc3_);
                     if(_loc8_ || _loc3_)
                     {
                        addr144:
                        §§push(§§pop() - 1);
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr144);
            }
            §§goto(addr136);
         }
         if(_loc8_)
         {
            this.§0"#§.data = _loc2_;
         }
      }
      
      private function §<w§(param1:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_ || param1)
         {
            §§push(Number(Math.min(param1,99000000)));
            loop0:
            while(true)
            {
               param1 = §§pop();
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(100000);
                     loop3:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(1000);
                              if(!(_loc3_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             §§goto(addr55);
                                             §§push(§§pop().toString());
                                          }
                                          break;
                                       }
                                       §§goto(addr70);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr155);
                           }
                           break;
                        }
                        if(!_loc3_)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(1000000);
                              addr206:
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr210:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                 }
                              }
                           }
                           addr205:
                        }
                        loop13:
                        while(true)
                        {
                           §§push(param1);
                           loop14:
                           while(true)
                           {
                              §§push(2);
                              addr178:
                              while(true)
                              {
                                 §§push(§§pop().toPrecision(§§pop()).slice(0,3) + "M");
                                 addr194:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr195:
                                    while(!_loc4_)
                                    {
                                       continue loop13;
                                    }
                                    loop21:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop21;
                                                   }
                                                   addr139:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue loop14;
                                                         }
                                                         §§push(1000);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                      }
                                                      addr156:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               break loop3;
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                   }
                                                }
                                                while(_loc4_ || _loc3_)
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr195);
                                                addr167:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop21;
                                                   }
                                                }
                                                addr110:
                                             }
                                             continue loop21;
                                          }
                                          addr55:
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr155);
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr167);
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
   }
}
