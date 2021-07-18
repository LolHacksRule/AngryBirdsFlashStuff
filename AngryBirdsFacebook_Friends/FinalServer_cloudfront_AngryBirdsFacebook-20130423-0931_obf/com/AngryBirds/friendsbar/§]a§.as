package com.AngryBirds.friendsbar
{
   import § 7§.§ else§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §+!c§.§;!=§;
   import §,l§.§!"T§;
   import §,l§.§#!,§;
   import §,l§.§#!>§;
   import §,l§.§4"7§;
   import §,l§.§<"W§;
   import §0D§.§3!R§;
   import §2!o§.§,O§;
   import §2!o§.§0!o§;
   import §2!o§.§?j§;
   import §30§.§'"+§;
   import §8m§.§@"M§;
   import §9@§.§`!=§;
   import §;!d§.§+W§;
   import §;!d§.§6"L§;
   import §<w§.§8p§;
   import §<w§.§[!N§;
   import §@!%§.§#!$§;
   import §^!o§.§1! §;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §]a§ extends Sprite implements §&!l§
   {
      
      public static const §^!r§:String = "SidebarButtonStateInfo";
      
      public static const §9!z§:String = "SidebarButtonStatePlay";
      
      public static const §!!;§:String = "SidebarButtonStateNone";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!r§ = "SidebarButtonStateInfo";
            while(true)
            {
               §9!z§ = "SidebarButtonStatePlay";
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §!!;§ = "SidebarButtonStateNone";
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §+X§:§,O§;
      
      private var §"! §:Array;
      
      private var §%!w§:FriendsBarAsset;
      
      private var §@"R§:String;
      
      private var § !G§:§[!N§;
      
      private var §#M§:String = "";
      
      private var §1v§:§8p§;
      
      private var §;!Q§:Boolean;
      
      private var §'F§:String;
      
      private var §[!"§:Boolean;
      
      private var §4!u§:§6!F§;
      
      public function §]a§(param1:§[!N§, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               §?j§.§1"[§ = param3;
               while(true)
               {
                  this.§'F§ = param3;
                  addr96:
                  while(true)
                  {
                     this.§ !G§ = param1;
                     continue loop0;
                  }
                  addr62:
                  if(_loc4_ || param3)
                  {
                     this.init();
                     addr79:
                     if(!(_loc4_ || this))
                     {
                        while(_loc4_)
                        {
                           §§goto(addr62);
                           §§goto(addr79);
                        }
                        §§goto(addr96);
                        addr60:
                     }
                     addr48:
                     if(_loc4_ || param3)
                     {
                        return;
                        addr55:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§@"R§ = param2;
            §§goto(addr60);
         }
         §§goto(addr55);
      }
      
      public function §>"[§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§%!w§.txtTitle.text = param1;
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§%!w§ = new FriendsBarAsset();
            loop0:
            while(true)
            {
               addChild(this.§%!w§);
               if(!(_loc3_ && _loc3_))
               {
                  this.§>"[§("Total scores");
                  if(_loc2_ || this)
                  {
                     this.§7"W§();
                     if(_loc2_)
                     {
                        MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
                        while(true)
                        {
                           MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
                           if(_loc3_ && _loc1_)
                           {
                              break;
                           }
                           if(_loc2_ || _loc2_)
                           {
                              continue loop0;
                           }
                        }
                        loop2:
                        while(true)
                        {
                           this.§?!f§(new §6!F§(this,true,false,false,true));
                           loop3:
                           while(true)
                           {
                              this.§;!Q§ = true;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ !G§);
                                                addr362:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§pop().§^"D§());
                                                   addr363:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§+W§.§,!p§,this.§]"Q§);
                                                      addr368:
                                                      while(!_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr490:
                                                      loop37:
                                                      while(true)
                                                      {
                                                         §§push(this.§%!w§);
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§pop().§3z§.mcItemCountBg.mouseChildren = false;
                                                               addr466:
                                                               while(true)
                                                               {
                                                                  §§push(this.§+X§);
                                                                  addr448:
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     §§pop().scrollerSprite.addEventListener(§6"L§.§ !1§,this.§!!x§);
                                                                     addr454:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§+X§);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§pop().scrollerSprite.addEventListener(§6"L§.§&!'§,this.§1h§);
                                                                           addr435:
                                                                           while(_loc2_)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%!w§);
                                                                                 addr580:
                                                                                 loop17:
                                                                                 while(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§pop().§3z§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§%!3§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§%!w§);
                                                                                       addr569:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§3z§.btnSound.addEventListener(MouseEvent.CLICK,this.§-!w§);
                                                                                          break loop23;
                                                                                       }
                                                                                    }
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ || _loc1_))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr551:
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          §§pop().§3z§.btnInfo.addEventListener(MouseEvent.CLICK,this.§@s§);
                                                                                          §§push(this.§%!w§);
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop().§3z§.btnGift.addEventListener(MouseEvent.CLICK,this.§0A§);
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      §§push(this.§%!w§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§3z§.txtInboxItemCount.mouseEnabled = false;
                                                                                                         addr520:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§%!w§);
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                      }
                                                                                                      addr501:
                                                                                                      §§pop().§3z§.mcItemCountBg.mouseEnabled = false;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ && _loc1_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§push(this.§%!w§);
                                                                                                         while(!(_loc3_ && this))
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr479:
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §§pop().§3z§.txtInboxItemCount.mouseChildren = false;
                                                                                                               continue loop37;
                                                                                                            }
                                                                                                            addr629:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§3z§.btnAvatar.addEventListener(MouseEvent.CLICK,this.§4"B§);
                                                                                                               addr636:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§%!w§);
                                                                                                                  addr619:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§3z§.btnInvite.addEventListener(MouseEvent.CLICK,this.§""4§);
                                                                                                                     addr626:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§%!w§);
                                                                                                                        break loop17;
                                                                                                                     }
                                                                                                                     §§goto(addr551);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr479);
                                                                                                            }
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                         §§goto(addr516);
                                                                                                         §§goto(addr501);
                                                                                                      }
                                                                                                      addr516:
                                                                                                      addr505:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr594);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr569);
                                                                                          }
                                                                                          addr565:
                                                                                       }
                                                                                       §§goto(addr619);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§3z§.btnShop.addEventListener(MouseEvent.CLICK,this.§5!#§);
                                                                                    continue loop24;
                                                                                    §§goto(addr580);
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr544);
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                  }
                                                               }
                                                               addr466:
                                                            }
                                                            §§goto(addr494);
                                                         }
                                                         §§goto(addr470);
                                                      }
                                                   }
                                                }
                                             }
                                             addr393:
                                          }
                                          §§goto(addr636);
                                       }
                                       §§goto(addr565);
                                    }
                                    break;
                                 }
                                 continue loop3;
                                 addr334:
                                 if(_loc3_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr348:
                                    while(true)
                                    {
                                       this.§]"Q§(null);
                                       addr351:
                                       addr294:
                                       while(!(_loc2_ || this))
                                       {
                                          §§goto(addr466);
                                       }
                                       while(true)
                                       {
                                          this.§-!P§(§ else§.§'N§);
                                          addr299:
                                          §§goto(addr272);
                                       }
                                    }
                                    addr348:
                                 }
                                 §§goto(addr626);
                              }
                              while(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr520);
                           }
                        }
                     }
                     addr272:
                     loop11:
                     while(true)
                     {
                        this.§<!H§(true);
                        while(true)
                        {
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop11;
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr435);
                           }
                           else
                           {
                              §§goto(addr351);
                           }
                        }
                     }
                     addr272:
                     return;
                  }
                  §§goto(addr466);
               }
               break;
            }
            while(true)
            {
               §§push(this.§ !G§);
               if(!_loc3_)
               {
                  §§push(§§pop().§^"D§());
                  if(_loc2_ || _loc3_)
                  {
                     if(!§§pop().§each §)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_)
                           {
                              §§goto(addr334);
                           }
                           §§goto(addr368);
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr294);
                  }
                  §§goto(addr363);
               }
               §§goto(addr362);
            }
         }
         §§goto(addr466);
      }
      
      private function §6z§(param1:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§?j§ = null;
         if(_loc10_)
         {
            if(!param1)
            {
               if(!_loc9_)
               {
                  return;
               }
            }
         }
         var _loc2_:Boolean = false;
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§+X§.§`!-§)
            {
               if(!_loc9_)
               {
                  if(_loc3_ != _loc4_.§!P§.data.userId)
                  {
                     continue;
                  }
                  if(!(_loc9_ && param1))
                  {
                     if(_loc4_.§!P§ is §0!o§)
                     {
                        if(!(_loc9_ && param1))
                        {
                           §0!o§(_loc4_.§!P§).setCanSendGift(false,true);
                           addr95:
                           if(_loc10_ || _loc2_)
                           {
                           }
                           addr126:
                           break;
                        }
                     }
                     §4"7§.§&"5§.§0!Q§(_loc4_.§!P§.data.userId);
                  }
                  §§goto(addr126);
               }
               §§goto(addr95);
            }
         }
      }
      
      public function §@8§(param1:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §;!=§.log("Changing state");
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§^!r§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§!!;§);
                        addr355:
                        addr363:
                        addr25:
                        while(true)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §;!=§.log("None state");
                           MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
                           MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
                           if(!(_loc2_ && _loc3_))
                           {
                              MovieClip(this.§%!w§.§3z§.mClipInfo).alpha = 0.5;
                              addr320:
                              if(_loc3_)
                              {
                                 MovieClip(this.§%!w§.§3z§.mClipTutorial).alpha = 0.5;
                                 addr303:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr282:
                                    this.§%!w§.§3z§.btnInfo.alpha = 0.5;
                                    if(!(_loc2_ && param1))
                                    {
                                       addr253:
                                       §§push(this.§%!w§);
                                       if(_loc2_ && this)
                                       {
                                          §§goto(addr282);
                                       }
                                       if(!(_loc2_ && param1))
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop().§3z§.btnInfo.mouseEnabled = false;
                                             break;
                                             addr278:
                                          }
                                          else
                                          {
                                             addr406:
                                             addr389:
                                             addr398:
                                          }
                                          addr402:
                                          §§pop().§3z§.btnInfo.mouseEnabled = true;
                                          this.§;!Q§ = true;
                                          this.§%!w§.§3z§.btnInfo.visible = true;
                                          §§push(this.§%!w§);
                                          addr393:
                                       }
                                       §§pop().§3z§.btnFullscreen.visible = true;
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr486:
                                             if(_loc3_ || this)
                                             {
                                                MovieClip(this.§%!w§.§3z§.mClipTutorial).mouseEnabled = false;
                                                MovieClip(this.§%!w§.§3z§.mClipInfo).visible = true;
                                                MovieClip(this.§%!w§.§3z§.mClipInfo).alpha = 1;
                                                MovieClip(this.§%!w§.§3z§.mClipTutorial).visible = false;
                                                MovieClip(this.§%!w§.§3z§.mClipTutorial).alpha = 1;
                                                addr424:
                                                if(_loc3_)
                                                {
                                                   addr410:
                                                   this.§%!w§.§3z§.btnInfo.alpha = 1;
                                                   §§goto(addr402);
                                                   §§push(this.§%!w§);
                                                   addr414:
                                                }
                                                addr456:
                                                §§goto(addr456);
                                                addr436:
                                                addr476:
                                                addr446:
                                             }
                                             MovieClip(this.§%!w§.§3z§.mClipInfo).mouseEnabled = false;
                                             §§goto(addr486);
                                             addr501:
                                          }
                                          break;
                                       }
                                       §§goto(addr436);
                                    }
                                    §§goto(addr393);
                                 }
                                 §§goto(addr424);
                              }
                              §§goto(addr476);
                           }
                           §§goto(addr446);
                        }
                        return;
                     }
                  }
                  addr498:
                  §;!=§.log("Info state");
                  §§goto(addr501);
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §7"W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§@"M§.§]I§())
            {
               MovieClip(this.§%!w§.§3z§.mClipSoundOff).visible = true;
               loop2:
               while(true)
               {
                  MovieClip(this.§%!w§.§3z§.mClipSoundOn).visible = true;
                  loop3:
                  while(true)
                  {
                     if(_loc1_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           MovieClip(this.§%!w§.§3z§.mClipSoundOff).mouseEnabled = false;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_ && _loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           loop6:
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 MovieClip(this.§%!w§.§3z§.mClipSoundOff).mouseEnabled = false;
                                 §§goto(addr143);
                                 addr160:
                              }
                              addr172:
                              while(true)
                              {
                                 MovieClip(this.§%!w§.§3z§.mClipSoundOn).visible = true;
                                 continue loop6;
                              }
                              §§goto(addr160);
                           }
                        }
                        break;
                     }
                     continue loop2;
                  }
                  loop7:
                  while(true)
                  {
                     if(!(_loc1_ || this))
                     {
                        while(true)
                        {
                           MovieClip(this.§%!w§.§3z§.mClipSoundOff).visible = false;
                           §§goto(addr172);
                           continue loop7;
                        }
                        addr164:
                     }
                     §§goto(addr19);
                  }
               }
               addr106:
            }
            §§goto(addr164);
         }
         §§goto(addr106);
      }
      
      private function §4"B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new §6"L§(§6"L§.§?M§));
         }
      }
      
      private function §""4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new §6"L§(§6"L§.§ !1§));
         }
      }
      
      private function §1h§(param1:§6"L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            AngryBirdsFP11.§>m§.§^X§();
            do
            {
               §'"+§.§'!#§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §#!$§).userName,param1.data.userId);
            }
            while(_loc2_);
            
         }
      }
      
      private function §+!C§(param1:§6"L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            AngryBirdsFP11.§>m§.§^X§();
            do
            {
               §'"+§.§'!#§("flashSendChallengeFriend",(AngryBirdsFP11.sUserProgress as §#!$§).userName,param1.data.userId);
            }
            while(_loc2_);
            
         }
      }
      
      private function §!!x§(param1:§6"L§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§!"T§ = null;
         var _loc2_:§!"T§ = param1.data as §!"T§;
         if(!(_loc7_ && param1))
         {
            §§push(§8p§.§,!n§);
            if(!_loc7_)
            {
               §§pop().push(_loc2_.userId);
               loop0:
               while(true)
               {
                  §§push(this.§ !G§);
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop().§^"D§());
                     if(_loc8_)
                     {
                        if(§§pop().data.indexOf(_loc2_) != -1)
                        {
                           while(true)
                           {
                              §§push(this.§ !G§);
                              addr145:
                              while(true)
                              {
                                 §§push(§§pop().§^"D§());
                                 addr146:
                                 while(true)
                                 {
                                    §§pop().data.splice(this.§ !G§.§^"D§().data.indexOf(_loc2_),1);
                                    addr155:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr143:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§1v§);
                           addr96:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr97:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(§§pop())
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          §§push(this.§1v§);
                                          while(true)
                                          {
                                             §§pop().data.splice(this.§1v§.data.indexOf(_loc2_),1);
                                          }
                                          addr74:
                                       }
                                       while(true)
                                       {
                                          if(_loc8_ || _loc2_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(true)
                                                {
                                                   break loop7;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr143);
                                          }
                                          else
                                          {
                                             while(_loc8_ || this)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr155);
                                             addr100:
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    addr167:
                                    var _loc3_:Array = §3!R§.§&"5§.§@!X§();
                                    for each(_loc4_ in _loc3_)
                                    {
                                       if(_loc4_.userId == _loc2_.userId)
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §3!R§.§&"5§.§2>§(_loc2_.userId);
                                          }
                                       }
                                    }
                                    if(_loc8_ || _loc2_)
                                    {
                                       this.§^";§();
                                    }
                                    do
                                    {
                                       this.§&q§();
                                       do
                                       {
                                          dispatchEvent(new §6"L§(§6"L§.§ !1§,_loc2_));
                                       }
                                       while(!_loc8_);
                                       
                                    }
                                    while(!_loc8_);
                                    
                                    return;
                                    addr63:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                 }
                                 §§goto(addr100);
                              }
                           }
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr145);
               }
            }
            §§goto(addr167);
         }
         §§goto(addr155);
      }
      
      private function §5!#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            dispatchEvent(new §6"L§(§6"L§.§%!a§));
            do
            {
               this.§<!H§(false);
            }
            while(_loc3_);
            
         }
      }
      
      private function §%!3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            dispatchEvent(new §6"L§(§6"L§.§try§));
         }
      }
      
      private function §-!w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §6"L§(§6"L§.§-d§));
         }
         do
         {
            this.§7"W§();
         }
         while(!_loc3_);
         
      }
      
      private function §@s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §;!=§.log("Info Clicked at least in friendsbar");
            loop0:
            for(; !this.§;!Q§; if(!(_loc3_ || this))
            {
               continue;
            },§§goto(addr87))
            {
               §;!=§.log(§6"L§.§ !2§);
               loop1:
               while(!_loc2_)
               {
                  continue loop0;
                  dispatchEvent(new §6"L§(§6"L§.§ !2§));
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr25);
                  }
                  else
                  {
                     addr111:
                  }
                  while(true)
                  {
                     dispatchEvent(new §6"L§(§6"L§.§3"9§));
                     break loop1;
                  }
                  addr111:
               }
               while(_loc2_ && _loc2_)
               {
                  break loop0;
                  §§goto(addr111);
               }
               addr25:
               return;
            }
            while(true)
            {
               §;!=§.log(§6"L§.§3"9§);
               §§goto(addr111);
            }
         }
         §§goto(addr102);
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.resize(param1);
         }
      }
      
      private function resize(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = Math.max(param1,330);
         if(_loc4_ || param1)
         {
            §§push(this.§%!w§);
            loop0:
            while(true)
            {
               §§pop().§1P§.height = _loc2_ - this.§%!w§.§8Q§.height - this.§%!w§.§9!g§.height;
               loop1:
               while(true)
               {
                  §§push(this.§%!w§);
                  while(true)
                  {
                     §§pop().§9!g§.y = _loc2_ - this.§%!w§.§9!g§.height;
                     addr103:
                     while(!_loc5_)
                     {
                     }
                     addr57:
                     continue loop1;
                     while(_loc4_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr54);
         }
      }
      
      private function §#Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.scroll(-this.§+X§.§0"P§);
         }
      }
      
      private function §,U§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.scroll(this.§+X§.§0"P§);
         }
      }
      
      private function §0A§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §6"L§(§6"L§.§[!<§));
         }
      }
      
      public function §+x§(param1:String, param2:String, param3:§8p§ = null, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§#M§);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc5_ && param3))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr456:
                           while(true)
                           {
                              §§pop();
                              addr457:
                              while(true)
                              {
                                 §§push(this.§[!"§);
                                 addr438:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           addr456:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    this.§[!"§ = false;
                                    while(true)
                                    {
                                       §§push(this.§1v§);
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!(_loc5_ && param3))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§#M§);
                                                               addr370:
                                                               while(_loc6_)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     while(!(_loc5_ && this))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                     addr376:
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr429:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr456);
                                                         }
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr385);
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr438);
                                          if(_loc5_ && this)
                                          {
                                             continue;
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr441);
                           }
                        }
                     }
                  }
                  §§goto(addr456);
               }
            }
         }
         §§goto(addr32);
      }
      
      private function §]"Q§(param1:§+W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§1v§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§+X§);
                  loop1:
                  while(§§pop().data == this.§ !G§.§^"D§().data)
                  {
                     §§push(this.§+X§);
                     if(_loc3_ || param1)
                     {
                        §§pop().§->§();
                        loop2:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc2_ && param1)
                              {
                                 break loop1;
                              }
                              loop3:
                              while(true)
                              {
                                 this.§]!3§(this.§ !G§.§^"D§().§8#§);
                                 while(_loc3_)
                                 {
                                    this.§&q§();
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr100:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           addr123:
                           while(true)
                           {
                              this.§^";§();
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr127);
                     }
                  }
                  while(true)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        this.§"! § = this.§ !G§.§^"D§().data;
                        §§goto(addr123);
                     }
                  }
                  addr128:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            addr127:
            return;
         }
         §§goto(addr128);
      }
      
      private function §0"!§(param1:§+W§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            §?j§.§?`§ = true;
         }
         var _loc2_:Array = §3!R§.§&"5§.§@!X§();
         var _loc3_:Array = this.§1v§.data.concat(_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_ is §<"W§)
            {
               if(_loc8_)
               {
                  (_loc4_ as §<"W§).§!!u§ = true;
               }
            }
         }
         if(!(_loc7_ && _loc3_))
         {
            this.§"! § = _loc3_;
            while(true)
            {
               this.§^";§();
               while(true)
               {
                  this.§]!3§(this.§1v§.§8#§);
                  §§goto(addr117);
               }
            }
         }
         addr117:
         while(true)
         {
            this.§&q§();
            if(!_loc7_)
            {
               if(_loc8_ || this)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
      }
      
      private function §;"#§(param1:§+W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §?j§.§?`§ = true;
            while(true)
            {
               this.§"! § = this.§1v§.data;
            }
            addr92:
         }
         loop1:
         while(true)
         {
            this.§^";§();
            loop2:
            while(true)
            {
               this.§]!3§(this.§1v§.§8#§);
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr77:
                  this.§&q§();
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break loop1;
                  }
                  §§goto(addr92);
               }
               continue loop1;
            }
         }
      }
      
      public function §]"+§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[!"§ = true;
            while(true)
            {
               §?j§.§?`§ = false;
               while(_loc2_ || param1)
               {
                  this.§^";§();
                  loop3:
                  for(; !_loc3_; this.§&q§(),if(!(_loc3_ && this))
                  {
                     return;
                  })
                  {
                     addr64:
                     if(!(_loc3_ && param1))
                     {
                        continue;
                     }
                     addr88:
                     while(true)
                     {
                        this.§"! § = param1;
                        break loop3;
                        §§goto(addr64);
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §]!3§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(-1);
               loop1:
               while(§§pop() != §§pop())
               {
                  if(_loc7_ || param2)
                  {
                     §§push(this.§+X§);
                     while(true)
                     {
                        §§push(int(§§pop().offset));
                        addr164:
                        while(true)
                        {
                           _loc3_ = §§pop();
                        }
                        addr121:
                        §§push(this.§+X§);
                        if(!_loc6_)
                        {
                           addr40:
                           §§push(_loc5_);
                           §§push(param2);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(!§§pop());
                           }
                           §§pop().scroll(§§pop(),§§pop());
                           if(!(_loc7_ || param1))
                           {
                              while(_loc7_)
                              {
                                 §§goto(addr121);
                                 §§goto(addr40);
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() - _loc3_);
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 addr104:
                                 if(_loc6_ && param2)
                                 {
                                    continue loop0;
                                 }
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    break;
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr119);
                              }
                              addr119:
                              §§goto(addr164);
                              addr149:
                           }
                           if(_loc6_ && param2)
                           {
                              while(true)
                              {
                                 §§push(int(Math.floor(this.§+X§.§0"P§ / 2)));
                                 continue loop0;
                              }
                              addr165:
                           }
                           addr65:
                           break loop1;
                        }
                     }
                  }
                  §§goto(addr165);
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 != 0)
            {
               if(_loc2_)
               {
                  this.§+X§.scroll(param1);
                  do
                  {
                     this.§&q§();
                  }
                  while(_loc3_ && param1);
                  
                  addr58:
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §&q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§+X§.offset == 0);
         if(_loc4_ || _loc2_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§+X§.offset == this.§+X§.data.length - this.§+X§.§0"P§);
         if(_loc4_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§%!w§);
            while(true)
            {
               §§pop().btnUp.visible = _loc1_;
               while(true)
               {
                  §§push(this.§%!w§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§pop().btnDown.visible = _loc2_;
                  if(_loc4_)
                  {
                     return;
                     addr89:
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function get §3"7§() : §8p§
      {
         return this.§1v§;
      }
      
      public function §1"<§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         if(!(_loc14_ && param2))
         {
            §§push(!this.§1v§);
            if(!_loc14_)
            {
               if(!§§pop())
               {
                  if(_loc15_ || this)
                  {
                     §§pop();
                     addr59:
                     if(_loc15_)
                     {
                        §§push(this.§#M§ == param1);
                        if(!_loc14_)
                        {
                           addr53:
                           §§push(!§§pop());
                        }
                     }
                     var _loc7_:Array = [];
                     var _loc8_:int = this.§+X§.offset;
                     §§push(this.§1v§.§1"<§(param2,param3,param4,_loc7_));
                     if(_loc15_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc14_)
                     {
                        this.§"! § = this.§1v§.data;
                        if(!_loc14_)
                        {
                           if(param6)
                           {
                              if(!_loc14_)
                              {
                                 _loc11_ = §3!R§.§&"5§.§@!X§();
                                 if(_loc15_)
                                 {
                                    this.§"! § = this.§1v§.data.concat(_loc11_);
                                 }
                              }
                              this.§]!3§(_loc9_ - 1,true);
                              addr134:
                              for each(_loc10_ in _loc7_)
                              {
                                 if(!_loc14_)
                                 {
                                    param5.push(_loc10_);
                                 }
                              }
                              if(_loc15_)
                              {
                                 this.§&q§();
                              }
                              return _loc9_;
                              addr119:
                           }
                           this.§^";§();
                           if(!_loc14_)
                           {
                              §§goto(addr119);
                           }
                        }
                     }
                     §§goto(addr134);
                  }
               }
               if(§§pop())
               {
                  if(_loc15_)
                  {
                     return 0;
                  }
                  §§goto(addr59);
               }
               §§goto(addr59);
            }
            §§goto(addr53);
         }
         §§goto(addr59);
      }
      
      public function §-!P§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            if(param1 == 0)
            {
               if(_loc5_)
               {
                  addr139:
                  this.§%!w§.§3z§.txtInboxItemCount.visible = false;
               }
               §§push(this.§%!w§);
               if(!_loc6_)
               {
                  §§pop().§3z§.mcItemCountBg.visible = false;
                  addr131:
               }
               else
               {
                  addr146:
                  _loc3_ = §§pop().§3z§.mcItemCountBg;
                  if(_loc5_)
                  {
                     _loc4_ = _loc3_.width;
                     loop1:
                     while(true)
                     {
                        addr193:
                        while(true)
                        {
                           _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 _loc3_.x = this.§%!w§.§3z§.txtInboxItemCount.x + this.§%!w§.§3z§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
                                 if(_loc5_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr193);
                  }
               }
               return;
               addr143:
            }
            else
            {
               §§push(this.§%!w§);
               loop0:
               while(true)
               {
                  §§pop().§3z§.txtInboxItemCount.visible = true;
                  addr121:
                  while(true)
                  {
                     §§push(this.§%!w§);
                     if(_loc5_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr146);
         }
         §§goto(addr121);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§%!w§.§?R§;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!u§ = param1;
         }
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      private function §^";§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§#!>§ = null;
         var _loc5_:* = null;
         var _loc1_:Dictionary = §4"7§.§&"5§.§4!h§();
         var _loc2_:Array = this.§"! §.concat();
         var _loc3_:* = int(this.§"! §.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§"! §[_loc3_];
            if(!_loc8_)
            {
               continue;
            }
            §§push(0);
            if(!_loc9_)
            {
               var _loc6_:* = §§pop();
               if(!_loc9_)
               {
                  var _loc7_:* = _loc1_;
                  if(_loc8_)
                  {
                     loop1:
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        §§push(§§nextvalue(_loc6_,_loc7_));
                        if(!(_loc9_ && _loc1_))
                        {
                           §§push(§§pop());
                           if(_loc8_ || _loc3_)
                           {
                              _loc5_ = §§pop();
                              addr91:
                              §§push(_loc4_.userId);
                           }
                           if(§§pop() != §§pop())
                           {
                              continue;
                           }
                           if(!(_loc8_ || _loc2_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              _loc2_.splice(_loc3_,1);
                              continue loop1;
                           }
                        }
                        §§goto(addr91);
                     }
                     addr118:
                     if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(_loc8_)
                     {
                        addr130:
                        _loc3_ = §§pop() - 1;
                        continue;
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr101);
               }
               §§goto(addr118);
            }
            §§goto(addr130);
         }
         if(!_loc9_)
         {
            this.§+X§.data = _loc2_;
         }
      }
      
      private function §<!H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§#!,§.§&"5§.§9!9§.§8k§(§1! §.§2"J§));
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              MovieClip(this.§%!w§.§3z§.ButtonShop_Glow).visible = false;
                              loop3:
                              while(!(_loc3_ && _loc3_))
                              {
                                 §§push(this.§%!w§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§pop().§3z§.ButtonShop_Glow.gotoAndStop(0);
                                    if(!_loc3_)
                                    {
                                       break loop2;
                                    }
                                    continue;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().§3z§.ButtonShop_Glow.gotoAndPlay(0);
                                    addr122:
                                    while(true)
                                    {
                                       MovieClip(this.§%!w§.§3z§.ButtonShop_Glow).visible = true;
                                       break loop3;
                                    }
                                    addr85:
                                    if(_loc2_ || param1)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop2;
                                 }
                                 addr140:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr85);
                                 }
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr85);
                        }
                        return;
                     }
                     addr114:
                  }
               }
            }
            §§goto(addr139);
         }
         §§goto(addr140);
      }
   }
}
