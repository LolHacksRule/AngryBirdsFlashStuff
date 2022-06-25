package com.angrybirds.friendsbar
{
   import §!!0§.SoundEngine;
   import §"!i§.§5>§;
   import §"!i§.FriendListItemVO;
   import §"!i§.InviteVO;
   import §#_§.CachedFacebookFriends;
   import §#_§.HighScoreListManager;
   import §5!]§.FriendItemRenderer;
   import §5!]§.HighScoreScroller;
   import §5=§.§9F§;
   import §<u§.Log;
   import §=!i§.§>Z§;
   import §=!i§.CachedDataEvent;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FriendsBar extends Sprite
   {
      
      public static const SIDEBAR_BUTTON_STATE_INFO:String = "SidebarButtonStateInfo";
      
      public static const SIDEBAR_BUTTON_STATE_PLAY:String = "SidebarButtonStatePlay";
      
      public static const SIDEBAR_BUTTON_STATE_NONE:String = "SidebarButtonStateNone";
      
      {
         var SIDEBAR_BUTTON_STATE_INFO:Boolean = false;
         var SIDEBAR_BUTTON_STATE_PLAY:Boolean = true;
         if(!SIDEBAR_BUTTON_STATE_INFO)
         {
            while(true)
            {
               SIDEBAR_BUTTON_STATE_INFO = "SidebarButtonStateInfo";
               while(true)
               {
                  addr72:
                  while(!SIDEBAR_BUTTON_STATE_INFO)
                  {
                  }
               }
            }
            addr81:
         }
         loop3:
         while(true)
         {
            SIDEBAR_BUTTON_STATE_PLAY = "SidebarButtonStatePlay";
            loop4:
            while(true)
            {
               while(SIDEBAR_BUTTON_STATE_PLAY)
               {
                  SIDEBAR_BUTTON_STATE_NONE = "SidebarButtonStateNone";
                  if(!(SIDEBAR_BUTTON_STATE_PLAY || SIDEBAR_BUTTON_STATE_PLAY))
                  {
                     continue;
                  }
                  if(SIDEBAR_BUTTON_STATE_INFO)
                  {
                     continue loop4;
                  }
                  if(SIDEBAR_BUTTON_STATE_PLAY)
                  {
                     break loop3;
                  }
                  §§goto(addr81);
               }
               §§goto(addr72);
            }
         }
      }
      
      private var §9![§:HighScoreScroller;
      
      private var §[!M§:Array;
      
      private var §-!#§:FriendsBarAsset;
      
      private var § l§:String;
      
      private var §"w§:HighScoreListManager;
      
      private var §18§:String = "";
      
      private var §8!2§:CachedFacebookFriends;
      
      private var §`I§:String;
      
      private var §!!a§:Boolean;
      
      public function FriendsBar(highScoreListManager:HighScoreListManager, serverRoot:String, userId:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!(_loc5_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        super();
                        addr169:
                        addr98:
                        while(true)
                        {
                           continue loop0;
                        }
                        if(!(_loc4_ || serverRoot))
                        {
                           continue;
                        }
                        this.§ l§ = serverRoot;
                        loop12:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              while(_loc4_ || serverRoot)
                              {
                                 if(!_loc5_)
                                 {
                                    this.init();
                                    while(_loc5_)
                                    {
                                    }
                                    if(_loc5_ && userId)
                                    {
                                       continue;
                                    }
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          addr47:
                                          if(_loc4_ || serverRoot)
                                          {
                                             §§goto(addr54);
                                          }
                                          else
                                          {
                                             addr132:
                                             while(!(_loc5_ && serverRoot))
                                             {
                                                this.§`I§ = userId;
                                                §§goto(addr47);
                                             }
                                             continue loop0;
                                             addr132:
                                          }
                                       }
                                       while(!_loc5_)
                                       {
                                       }
                                       continue loop2;
                                    }
                                    while(!(_loc5_ && this))
                                    {
                                       this.§"w§ = highScoreListManager;
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             break loop12;
                                          }
                                          break;
                                       }
                                       §§goto(addr169);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr132);
                                       §§goto(addr115);
                                    }
                                    addr115:
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop12;
                           }
                           return;
                        }
                        while(_loc4_ || serverRoot)
                        {
                           §§goto(addr98);
                        }
                        §§goto(addr110);
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §8K§(title:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_)
         {
            do
            {
               do
               {
                  this.§-!#§.§?&§.text = title;
                  while(!(_loc3_ || this))
                  {
                  }
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc1_)
         {
         }
         if(_loc2_)
         {
            if(_loc2_ || this)
            {
               this.§-!#§ = new FriendsBarAsset();
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     addChild(this.§-!#§);
                     if(!(_loc3_ && _loc1_))
                     {
                        while(true)
                        {
                           this.§8K§("Total scores");
                           if(_loc2_ || this)
                           {
                              if(_loc2_)
                              {
                                 this.§8w§();
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       MovieClip(this.§-!#§.§9!#§.soundsOff).mouseEnabled = false;
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          MovieClip(this.§-!#§.§9!#§.soundsOff).mouseChildren = false;
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                this.§9![§ = new HighScoreScroller(250,250,[],FriendItemRenderer,2,15);
                                                loop4:
                                                while(!_loc3_)
                                                {
                                                   addChild(this.§9![§.scrollerSprite);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§9![§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§pop().scrollerSprite.rotation = 90;
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.§9![§);
                                                                  continue;
                                                               }
                                                               addr651:
                                                               addr651:
                                                               §§push(this.§-!#§);
                                                               while(true)
                                                               {
                                                                  §§pop().§9!#§.btnInvite.addEventListener(MouseEvent.CLICK,this.§4e§);
                                                                  addr649:
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     addr636:
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-!#§);
                                                                        loop23:
                                                                        while(_loc2_)
                                                                        {
                                                                           §§pop().§9!#§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§-!;§);
                                                                           while(true)
                                                                           {
                                                                              while(_loc2_ || _loc2_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(this.§-!#§);
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§9!#§.btnSound.addEventListener(MouseEvent.CLICK,this.§var §);
                                                                                       addr594:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break loop4;
                                                                                          }
                                                                                          break loop26;
                                                                                       }
                                                                                       loop30:
                                                                                       for(; !(_loc3_ && _loc3_); §§push(this.§-!#§),if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       },if(_loc2_)
                                                                                       {
                                                                                          addr520:
                                                                                          §§pop().§[!@§.addEventListener(MouseEvent.CLICK,this.§8X§);
                                                                                          break loop6;
                                                                                       },§§goto(addr567))
                                                                                       {
                                                                                          §§pop().§9!#§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§`!h§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr531:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                }
                                                                                                addr531:
                                                                                                addr560:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr581:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§-!#§);
                                                                                                   addr567:
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      §§pop().§9!#§.btnInfo.addEventListener(MouseEvent.CLICK,this.§-"§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                                addr581:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop30;
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                    addr608:
                                                                                    addr585:
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop21;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         loop35:
                                                         while(true)
                                                         {
                                                            addr507:
                                                            while(true)
                                                            {
                                                               addr482:
                                                               addr490:
                                                               this.§9![§.scrollerSprite.addEventListener(§>Z§.INVITE_FRIENDS_REQUESTED,this.§#!-§);
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     addr497:
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        addr504:
                                                                        while(true)
                                                                        {
                                                                           addr476:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              continue loop35;
                                                                           }
                                                                           §§goto(addr497);
                                                                        }
                                                                        addr504:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr651);
                                                                     }
                                                                  }
                                                                  §§goto(addr649);
                                                                  §§goto(addr482);
                                                               }
                                                            }
                                                         }
                                                         addr528:
                                                      }
                                                      break;
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§push(this.§"w§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§^!F§());
                                                      addr466:
                                                      while(true)
                                                      {
                                                         §§pop().addEventListener(CachedDataEvent.DATA_LOADED,this.§1!+§);
                                                         addr473:
                                                         while(true)
                                                         {
                                                            addr452:
                                                            while(_loc2_)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr578);
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr596:
                                                §§goto(addr581);
                                                addr596:
                                             }
                                             §§goto(addr608);
                                          }
                                          §§goto(addr504);
                                       }
                                       §§goto(addr596);
                                       addr66:
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§-!#§);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§pop().§`Q§.addEventListener(MouseEvent.CLICK,this.§^!6§);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr59:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§goto(addr66);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§9![§);
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr124);
                                                            }
                                                            break;
                                                            §§goto(addr59);
                                                         }
                                                         addr139:
                                                      }
                                                      §§goto(addr482);
                                                   }
                                                   §§goto(addr636);
                                                }
                                                break;
                                             }
                                             §§goto(addr520);
                                             addr34:
                                          }
                                          §§push(this.§-!#§);
                                          if(!_loc3_)
                                          {
                                             §§pop().§%>§.visible = this.§-!#§.§`Q§.visible = false;
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§goto(addr427);
                                          }
                                          §§goto(addr585);
                                       }
                                       §§goto(addr596);
                                    }
                                    §§goto(addr651);
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr34);
                                 }
                              }
                              §§goto(addr528);
                           }
                           §§goto(addr649);
                        }
                     }
                     §§goto(addr581);
                  }
                  §§goto(addr649);
               }
            }
            §§goto(addr504);
         }
         §§goto(addr473);
      }
      
      public function §5!;§(currentState:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  Log.log("Changing state");
                  while(true)
                  {
                     while(true)
                     {
                        §§push(currentState);
                        loop4:
                        while(true)
                        {
                           §§push(SIDEBAR_BUTTON_STATE_INFO);
                           addr411:
                           addr412:
                           while(§§pop() != §§pop())
                           {
                              §§push(currentState);
                              continue loop4;
                           }
                           addr412:
                           while(true)
                           {
                              while(true)
                              {
                                 Log.log("Info state");
                                 addr406:
                                 while(true)
                                 {
                                    addr399:
                                    while(true)
                                    {
                                       SimpleButton(this.§-!#§.§9!#§.btnInfo).visible = true;
                                       addr396:
                                       while(true)
                                       {
                                          addr376:
                                          while(true)
                                          {
                                             SimpleButton(this.§-!#§.§9!#§.btnTutorial).visible = false;
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 addr60:
                                 if(_loc3_ || _loc2_)
                                 {
                                    return;
                                    addr67:
                                 }
                              }
                           }
                        }
                        if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr106);
                     }
                     while(_loc3_ || this)
                     {
                        Log.log("None state");
                        §§goto(addr298);
                        §§goto(addr160);
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §8w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               if(SoundEngine.§'5§())
               {
                  if(_loc1_)
                  {
                  }
                  MovieClip(this.§-!#§.§9!#§.soundsOff).visible = false;
                  addr110:
               }
               else
               {
                  MovieClip(this.§-!#§.§9!#§.soundsOff).visible = true;
                  for(; _loc2_ || _loc2_; if(!_loc1_)
                  {
                     §§goto(addr34);
                  })
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr110);
                  }
               }
            }
         }
         addr34:
      }
      
      private function §4e§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  dispatchEvent(new §>Z§(§>Z§.INVITE_FRIENDS_REQUESTED));
                  continue loop0;
                  addr62:
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                     addr69:
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §#!-§(e:§>Z§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  addr41:
                  while(!_loc4_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc4_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr39);
            }
            §§goto(addr41);
         }
         var inviteVO:InviteVO = e.data as InviteVO;
         if(_loc4_)
         {
         }
         loop4:
         while(true)
         {
            CachedFacebookFriends.invitedIDs.push(inviteVO.userId);
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  §§push(this.§"w§);
                  loop7:
                  while(true)
                  {
                     §§push(§§pop().§^!F§());
                     addr268:
                     while(true)
                     {
                        if(§§pop().data.indexOf(inviteVO) == -1)
                        {
                           loop13:
                           while(true)
                           {
                              §§push(this.§8!2§);
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop15:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          §§pop();
                                          loop17:
                                          while(true)
                                          {
                                             §§push(this.§8!2§);
                                             loop18:
                                             while(true)
                                             {
                                                §§push(§§pop().data.indexOf(inviteVO) == -1);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      continue loop16;
                                                   }
                                                }
                                                addr204:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop5;
                                                   }
                                                   loop23:
                                                   while(true)
                                                   {
                                                      this.§<!%§();
                                                      while(_loc3_)
                                                      {
                                                         loop25:
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            this.§+6§();
                                                            loop26:
                                                            while(_loc3_ || inviteVO)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     dispatchEvent(new §>Z§(§>Z§.INVITE_FRIENDS_REQUESTED,inviteVO));
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                        continue loop26;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  addr172:
                                                                  while(!(_loc4_ && inviteVO))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  while(_loc3_)
                                                                  {
                                                                     §§goto(addr141);
                                                                  }
                                                                  addr141:
                                                                  continue loop17;
                                                               }
                                                               while(!_loc4_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop18;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             continue loop15;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr204);
                                    }
                                 }
                              }
                           }
                           addr214:
                        }
                        §§goto(addr273);
                     }
                  }
               }
            }
         }
      }
      
      private function §-!;§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         do
         {
            do
            {
               dispatchEvent(new §>Z§(§>Z§.FULLSCREEN_TOGGLE_REQUESTED));
               while(_loc3_)
               {
               }
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      private function §var §(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && e))
         {
            while(true)
            {
               addr100:
               while(true)
               {
                  dispatchEvent(new §>Z§(§>Z§.MUTE_TOGGLE_REQUESTED));
               }
            }
            addr102:
         }
         loop2:
         do
         {
            loop3:
            for(; _loc2_; if(!(_loc3_ && e))
            {
               continue loop2;
            })
            {
               this.§8w§();
               while(_loc2_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     continue loop3;
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr100);
         }
         while(_loc3_ && e);
         
      }
      
      private function §-"§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  Log.log(§>Z§.INFO_REQUESTED);
                  while(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        loop3:
                        while(_loc3_ || _loc2_)
                        {
                           while(true)
                           {
                              dispatchEvent(new §>Z§(§>Z§.INFO_REQUESTED));
                              while(_loc2_)
                              {
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §`!h§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               while(!(_loc2_ && _loc3_))
               {
                  dispatchEvent(new §>Z§(§>Z§.TUTORIAL_REQUESTED));
                  loop4:
                  for(; _loc3_; if(!(_loc3_ || this))
                  {
                     continue;
                  },§§goto(addr52))
                  {
                     addr71:
                     if(_loc3_ || this)
                     {
                        continue;
                     }
                     addr110:
                     while(true)
                     {
                        Log.log(§>Z§.TUTORIAL_REQUESTED);
                        do
                        {
                           break loop4;
                        }
                        while(!(_loc3_ || _loc2_));
                        
                        return;
                        §§goto(addr71);
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §2!W§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.scroll(-this.§9![§.§!0§);
                  while(!(_loc2_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           return;
                           addr57:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §^!6§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               addr66:
               if(!(_loc3_ && this))
               {
                  addr73:
                  if(!(_loc2_ || e))
                  {
                     while(!_loc3_)
                     {
                        §§goto(addr66);
                        §§goto(addr73);
                     }
                     while(true)
                     {
                        this.scroll(this.§9![§.§!0§);
                        §§goto(addr64);
                     }
                     addr64:
                     addr76:
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §8X§(e:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && e)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  continue loop0;
               }
            }
            addr46:
         }
         while(true)
         {
            if(!(_loc5_ || urlReq))
            {
               continue;
            }
            if(_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr46);
            }
            §§goto(addr42);
         }
         §§push("http://www.facebook.com/Intel");
         if(_loc5_ || e)
         {
         }
         var ultrabookURL:String = §§pop();
         if(!_loc5_)
         {
         }
         loop3:
         while(true)
         {
            §9F§.§+3§(ultrabookURL);
            while(true)
            {
               continue loop3;
               addr90:
               if(_loc4_ && this)
               {
                  continue;
               }
               if(!(_loc4_ && ultrabookURL))
               {
                  addr80:
                  if(false)
                  {
                     while(true)
                     {
                        AngryBirdsUltraBook.sSingleton.§?]§();
                        addr88:
                        while(_loc5_)
                        {
                           §§goto(addr90);
                        }
                        continue loop3;
                        §§goto(addr80);
                     }
                     addr82:
                  }
                  var urlReq:URLRequest = new URLRequest(ultrabookURL);
                  if(_loc4_ && ultrabookURL)
                  {
                  }
                  navigateToURL(urlReq,"_blank");
                  addr155:
                  if(_loc5_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr155);
                     }
                     return;
                  }
                  addr159:
                  §§goto(addr159);
               }
               §§goto(addr88);
            }
         }
      }
      
      override public function set height(value:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            do
            {
               while(true)
               {
                  this.resize(value);
                  while(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_ && value);
            
         }
      }
      
      private function resize(setHeight:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && scrollerHeight))
         {
            while(true)
            {
               loop3:
               while(!(_loc4_ && setHeight))
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           continue loop3;
                        }
                        addr52:
                        var targetStageHeight:Number = Math.max(setHeight,330);
                        §§push(_loc5_ || setHeight);
                        addr37:
                     }
                     else
                     {
                        §§goto(addr52);
                     }
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§-!#§);
                           loop5:
                           while(true)
                           {
                              §§pop().§>X§.height = targetStageHeight - this.§-!#§.§3!0§.height - this.§-!#§.§+?§.height + 5;
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§-!#§);
                                    addr157:
                                    while(_loc5_)
                                    {
                                       §§pop().§+?§.y = this.§-!#§.§>X§.y + this.§-!#§.§>X§.height;
                                       while(!_loc4_)
                                       {
                                          while(!(_loc4_ && targetStageHeight))
                                          {
                                             continue loop7;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr129);
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr49:
                  }
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §^!;§(episode:String, level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || episode)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(; _loc5_; while(!(_loc6_ && scores))
                        {
                           FriendItemRenderer.isShowingLevelScores = true;
                           §§goto(addr545);
                        })
                        {
                           §§push(this.§18§);
                           loop5:
                           while(true)
                           {
                              §§push(level);
                              addr717:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr719:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr723:
                                                   while(true)
                                                   {
                                                      §§push(this.§!!a§);
                                                      addr705:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         addr706:
                                                         while(!_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                addr722:
                                             }
                                             while(true)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         this.§!!a§ = false;
                                                         loop18:
                                                         while(_loc5_ || episode)
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(this.§8!2§);
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop16;
                                                                  loop31:
                                                                  while(!(_loc6_ && this))
                                                                  {
                                                                     §§push(CachedDataEvent.DATA_LOADED);
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        §§pop().removeEventListener(§§pop(),this.§%!k§);
                                                                        loop33:
                                                                        while(_loc5_ || level)
                                                                        {
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              this.§8!2§ = null;
                                                                              while(true)
                                                                              {
                                                                                 loop36:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(level);
                                                                                       if(_loc6_ && episode)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop38:
                                                                                       while(!(_loc6_ && level))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.§8K§("Total scores");
                                                                                                loop39:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop40:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      FriendItemRenderer.isShowingLevelScores = false;
                                                                                                      loop41:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && level))
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ && level))
                                                                                                               {
                                                                                                                  this.§[!M§ = this.§"w§.§^!F§().data;
                                                                                                                  loop43:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ || scores)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && episode))
                                                                                                                        {
                                                                                                                           if(_loc5_ || scores)
                                                                                                                           {
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          this.§<!%§();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         this.§!!_§(this.§"w§.§^!F§().userIndex);
                                                                                                                                                         loop47:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop48:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ && scores)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     this.§+6§();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop48;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop40;
                                                                                                                                                                              addr133:
                                                                                                                                                                           }
                                                                                                                                                                           loop69:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§8!2§ = this.§"w§.§[4§(episode,level,isTournament);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       while(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          loop60:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc5_ || level))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                }
                                                                                                                                                                                                isTournament = §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr462:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(isTournament);
                                                                                                                                                                                                      addr429:
                                                                                                                                                                                                      addr627:
                                                                                                                                                                                                      loop66:
                                                                                                                                                                                                      while(!(_loc6_ && level))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc6_ && episode))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop82:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        FriendItemRenderer.isShowingLevelScores = true;
                                                                                                                                                                                                                        loop83:
                                                                                                                                                                                                                        while(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§9![§.data = [];
                                                                                                                                                                                                                              addr412:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr406:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§+6§();
                                                                                                                                                                                                                                    addr399:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc5_ || level)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop58;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr641:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr539:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§8K§("Level scores");
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr545:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                                                                          addr500:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_ || level)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§8!2§);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc6_ && scores))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(!§§pop().§#]§);
                                                                                                                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop60;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop66;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr448:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(CachedDataEvent.DATA_LOADED);
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr455:
                                                                                                                                                                                                                                                   §§pop().addEventListener(§§pop(),this.§%!k§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr426:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop82;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr455);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr394);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr394:
                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                             addr341:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop83;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr444:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(_loc5_ || level)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(scores == null)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr517:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop69;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr517:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§8!2§ = scores;
                                                                                                                                                                                                                        §§goto(addr500);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr539);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr437:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§8!2§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr448);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                         addr628:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               break loop38;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr722);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr723);
                                                                                                                                                                                                         §§goto(addr429);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr301:
                                                                                                                                                                                                   if(_loc5_ || scores)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   break loop60;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr672:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr705);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr520);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr520:
                                                                                                                                                                                 addr512:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§18§);
                                                                                                                                                                                 break loop37;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr406);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                     addr566:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr523);
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr481);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr335);
                                                                                                                                                }
                                                                                                                                                addr186:
                                                                                                                                             }
                                                                                                                                             §§goto(addr462);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr539);
                                                                                                                                    }
                                                                                                                                    §§goto(addr379);
                                                                                                                                    addr93:
                                                                                                                                    if(!(_loc5_ || level))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§18§ = level;
                                                                                                                                                   addr57:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc5_ || episode))
                                                                                                                                                      {
                                                                                                                                                         loop52:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               this.§5!;§(SIDEBAR_BUTTON_STATE_INFO);
                                                                                                                                                               while(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr93);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr186);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  continue loop52;
                                                                                                                                                               }
                                                                                                                                                               addr128:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop39;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr156);
                                                                                                                                                      §§goto(addr382);
                                                                                                                                                   }
                                                                                                                                                   addr315:
                                                                                                                                                   §§goto(addr517);
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr133);
                                                                                                                                          }
                                                                                                                                          §§goto(addr91);
                                                                                                                                       }
                                                                                                                                       continue loop41;
                                                                                                                                       addr78:
                                                                                                                                    }
                                                                                                                                    §§goto(addr459);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr426);
                                                                                                                           }
                                                                                                                           §§goto(addr415);
                                                                                                                        }
                                                                                                                        §§goto(addr318);
                                                                                                                     }
                                                                                                                     §§goto(addr294);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr412);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr387);
                                                                                                      }
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr566);
                                                                                          }
                                                                                          §§goto(addr628);
                                                                                       }
                                                                                       while(!(_loc6_ && level))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break loop36;
                                                                                             }
                                                                                             continue loop37;
                                                                                          }
                                                                                          §§goto(addr556);
                                                                                       }
                                                                                       addr556:
                                                                                       §§goto(addr706);
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr641);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr444);
      }
      
      private function §1!+§(e:CachedDataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!this.§8!2§)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        for(§§push(this.§9![§); §§pop().data == this.§"w§.§^!F§().data; )
                        {
                           §§push(this.§9![§);
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§pop().§,Z§();
                           while(!(_loc2_ && this))
                           {
                              continue loop0;
                              addr34:
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       addr125:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             this.§<!%§();
                                             while(true)
                                             {
                                                this.§!!_§(this.§"w§.§^!F§().userIndex);
                                                loop7:
                                                while(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break loop3;
                                                            }
                                                            this.§+6§();
                                                            while(!_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr34);
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                §§goto(addr122);
                                             }
                                             addr122:
                                             return;
                                             addr132:
                                             addr45:
                                             addr67:
                                          }
                                          addr162:
                                          while(true)
                                          {
                                             this.§[!M§ = this.§"w§.§^!F§().data;
                                             continue loop11;
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                 }
                                 §§goto(addr45);
                              }
                              §§goto(addr125);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr162);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr132);
      }
      
      private function §%!k§(e:CachedDataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               addr148:
               while(true)
               {
                  FriendItemRenderer.isShowingLevelScores = true;
               }
            }
            addr150:
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(_loc3_)
               {
                  this.§[!M§ = this.§8!2§.data;
                  loop4:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        loop5:
                        do
                        {
                           this.§<!%§();
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 do
                                 {
                                    this.§!!_§(this.§8!2§.userIndex);
                                    loop8:
                                    do
                                    {
                                       while(_loc3_)
                                       {
                                          this.§+6§();
                                          while(_loc3_ || e)
                                          {
                                             if(!(_loc2_ && e))
                                             {
                                                continue loop8;
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                    while(!_loc3_);
                                    
                                 }
                                 while(_loc2_ && this);
                                 
                                 continue loop5;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        while(_loc2_ && e);
                        
                        if(!_loc2_)
                        {
                           return;
                        }
                        break loop3;
                     }
                     continue loop2;
                  }
               }
               else
               {
                  §§goto(addr150);
               }
            }
            §§goto(addr148);
         }
      }
      
      public function §8N§(data:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               addr126:
               while(!_loc2_)
               {
                  this.§!!a§ = true;
               }
            }
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               FriendItemRenderer.isShowingLevelScores = false;
               loop4:
               for(; !_loc2_; if(!_loc2_)
               {
                  return;
               })
               {
                  while(true)
                  {
                     this.§[!M§ = data;
                     loop6:
                     while(_loc3_)
                     {
                        do
                        {
                           this.§<!%§();
                           while(_loc3_)
                           {
                              loop9:
                              while(_loc3_)
                              {
                                 this.§+6§();
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           continue loop6;
                        }
                        while(!_loc3_);
                        
                        continue loop4;
                     }
                  }
               }
               §§goto(addr126);
            }
         }
      }
      
      public function §!!_§(userIndex:int, animate:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && this)
         {
         }
         var currentOffset:* = 0;
         var halfway:* = 0;
         var newOffset:* = 0;
         if(_loc6_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(userIndex);
                     addr234:
                     addr189:
                     while(true)
                     {
                        §§push(-1);
                        addr235:
                        while(§§pop() != §§pop())
                        {
                           while(true)
                           {
                              addr237:
                              while(true)
                              {
                                 addr231:
                                 while(true)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr34);
                     }
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     §§push(int(Math.floor(this.§9![§.§!0§ / 2)));
                     loop14:
                     for(; !_loc7_; if(!_loc6_)
                     {
                        continue;
                     },§§push(halfway),if(!(_loc7_ && this))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc7_)
                        {
                           §§push(§§pop() - currentOffset);
                        }
                        §§goto(addr131);
                        §§push(int(§§pop()));
                     },§§goto(addr235))
                     {
                        halfway = §§pop();
                        loop15:
                        while(true)
                        {
                           addr144:
                           addr175:
                           loop16:
                           while(true)
                           {
                              if(_loc6_ || userIndex)
                              {
                                 if(!(_loc7_ && userIndex))
                                 {
                                    §§push(userIndex);
                                    if(!(_loc7_ && currentOffset))
                                    {
                                       continue loop14;
                                    }
                                    addr131:
                                    if(_loc6_)
                                    {
                                       newOffset = §§pop();
                                       while(_loc6_ || currentOffset)
                                       {
                                          continue loop15;
                                       }
                                       while(true)
                                       {
                                          break loop16;
                                       }
                                       addr134:
                                       addr213:
                                    }
                                    else
                                    {
                                       §§goto(addr234);
                                    }
                                 }
                                 §§goto(addr237);
                              }
                              break;
                              addr69:
                              if(_loc7_ && userIndex)
                              {
                                 continue;
                              }
                              if(!(_loc6_ || userIndex))
                              {
                                 continue loop1;
                              }
                              if(!_loc7_)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    if(!(_loc7_ && userIndex))
                                    {
                                       if(_loc6_)
                                       {
                                          addr34:
                                          return;
                                       }
                                       continue loop15;
                                    }
                                    while(!_loc7_)
                                    {
                                       §§goto(addr69);
                                       continue loop20;
                                    }
                                    §§goto(addr134);
                                    addr67:
                                 }
                                 addr85:
                              }
                              §§goto(addr231);
                           }
                           addr216:
                           while(_loc6_ || currentOffset)
                           {
                              if(!(_loc7_ && userIndex))
                              {
                                 §§goto(addr189);
                              }
                              else
                              {
                                 §§goto(addr236);
                              }
                           }
                           while(true)
                           {
                              §§push(this.§9![§);
                              addr200:
                              while(true)
                              {
                                 §§push(int(§§pop().offset));
                                 §§push(this.§9![§);
                                 addr95:
                                 break loop14;
                                 if(!(_loc6_ || currentOffset))
                                 {
                                    continue;
                                 }
                                 §§push(newOffset);
                                 §§push(animate);
                                 if(!_loc7_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().scroll(§§pop(),§§pop());
                                 §§goto(addr67);
                              }
                              §§goto(addr175);
                           }
                        }
                     }
                     while(true)
                     {
                        currentOffset = §§pop();
                        §§goto(addr213);
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function scroll(offset:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(offset != 0)
               {
                  while(true)
                  {
                     addr103:
                     while(_loc3_)
                     {
                     }
                     continue loop0;
                  }
                  addr90:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  loop6:
                  while(true)
                  {
                     this.§+6§();
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           addr61:
                           if(_loc2_ && offset)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     addr88:
                     while(_loc3_)
                     {
                        §§goto(addr90);
                        §§goto(addr61);
                     }
                     §§goto(addr102);
                  }
               }
               return;
            }
         }
         while(true)
         {
            this.§9![§.scroll(offset);
            §§goto(addr88);
         }
      }
      
      private function §+6§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && canGoRight)
         {
         }
         if(!(_loc3_ && canGoRight))
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         §§push(this.§9![§.offset == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
            if(!(_loc3_ && this))
            {
               §§push(Boolean(§§pop()));
            }
         }
         var canGoLeft:* = §§pop();
         if(!_loc4_)
         {
         }
         §§push(this.§9![§.offset == this.§9![§.data.length - this.§9![§.§!0§);
         if(!_loc3_)
         {
            §§push(!§§pop());
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var canGoRight:* = §§pop();
         if(!_loc3_)
         {
            loop4:
            while(true)
            {
               §§push(this.§-!#§);
               while(true)
               {
                  §§pop().§%>§.visible = canGoLeft;
                  continue loop4;
                  §§goto(addr149);
               }
            }
         }
         addr149:
         loop8:
         while(true)
         {
            §§push(this.§-!#§);
            if(_loc4_ || this)
            {
               addr141:
               §§pop().§`Q§.visible = canGoRight;
               while(_loc3_)
               {
               }
               if(_loc4_ || canGoLeft)
               {
                  break;
               }
               addr147:
               while(!_loc3_)
               {
                  continue loop8;
                  §§goto(addr141);
               }
               continue loop4;
            }
            continue loop5;
         }
      }
      
      public function get §3s§() : CachedFacebookFriends
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§8!2§;
      }
      
      public function §[!Y§(level:String, score:int, stars:int, eagle:int, beatenUsers:Array, isTournament:Boolean = false) : int
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc13_ && this)
         {
         }
         var userBeaten:Object = null;
         if(_loc14_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr181:
                     addr126:
                     while(true)
                     {
                        continue loop0;
                     }
                     if(_loc13_ && this)
                     {
                        continue;
                     }
                     loop10:
                     while(!(_loc13_ && level))
                     {
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              §§push(!this.§8!2§);
                              loop13:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc14_ || score)
                                 {
                                    §§push(§§pop());
                                    if(!_loc13_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          §§pop();
                                          addr94:
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                addr96:
                                                if(!(_loc13_ && level))
                                                {
                                                   §§push(this.§18§ == level);
                                                   if(!(_loc14_ || score))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc14_ || stars)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc14_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   continue loop16;
                                                }
                                                loop6:
                                                for(; !_loc13_; §§goto(addr96))
                                                {
                                                   while(true)
                                                   {
                                                      addr136:
                                                      addr158:
                                                      while(!(_loc13_ && stars))
                                                      {
                                                         continue loop1;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                         §§goto(addr136);
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop11;
                                          }
                                          if(_loc13_)
                                          {
                                             continue loop13;
                                          }
                                       }
                                       addr93:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             if(_loc14_ || stars)
                                             {
                                                if(!_loc13_)
                                                {
                                                   return 0;
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr94);
                                          }
                                          else
                                          {
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue loop12;
                                             }
                                          }
                                       }
                                       var out_usersBeaten:Array = [];
                                       if(_loc13_)
                                       {
                                       }
                                       var prevOffset:int = this.§9![§.offset;
                                       if(_loc13_)
                                       {
                                       }
                                       §§push(this.§8!2§.§[!Y§(score,stars,eagle,out_usersBeaten));
                                       if(_loc14_ || score)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var rankAfterUpdate:* = §§pop();
                                       if(_loc14_ || level)
                                       {
                                          this.§[!M§ = this.§8!2§.data;
                                          addr279:
                                          if(_loc14_)
                                          {
                                             this.§<!%§();
                                             addr272:
                                             if(!(_loc13_ && stars))
                                             {
                                                addr240:
                                                this.§!!_§(rankAfterUpdate - 1,true);
                                                if(!_loc13_)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(!(_loc13_ && level))
                                                         {
                                                            addr238:
                                                            if(false)
                                                            {
                                                               §§goto(addr240);
                                                            }
                                                            var _loc11_:int = 0;
                                                            var _loc12_:* = out_usersBeaten;
                                                            addr320:
                                                            for each(userBeaten in _loc12_)
                                                            {
                                                               if(_loc13_ && score)
                                                               {
                                                               }
                                                               addr310:
                                                               beatenUsers.push(userBeaten);
                                                               if(!_loc13_)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr310);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               addr319:
                                                               §§goto(addr319);
                                                            }
                                                            if(_loc13_ && stars)
                                                            {
                                                            }
                                                            this.§+6§();
                                                            addr365:
                                                            if(_loc14_)
                                                            {
                                                               if(!(_loc14_ || score))
                                                               {
                                                                  §§goto(addr365);
                                                               }
                                                               return rankAfterUpdate;
                                                            }
                                                            addr363:
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                }
                                                §§goto(addr272);
                                             }
                                             addr269:
                                             §§goto(addr269);
                                          }
                                          addr283:
                                          §§goto(addr283);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr93);
                              }
                           }
                        }
                     }
                     while(!(_loc13_ && stars))
                     {
                        §§goto(addr126);
                        §§goto(addr109);
                     }
                     addr109:
                     §§goto(addr136);
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      public function §6!b§(count:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && text)
         {
         }
         var text:* = null;
         var counterBackground:MovieClip = null;
         var oldWidth:int = 0;
         if(_loc6_ || count)
         {
            while(true)
            {
               addr220:
               loop1:
               for(; count != 0; if(_loc5_ && counterBackground)
               {
                  continue;
               },while(_loc6_)
               {
               },§§goto(addr176))
               {
                  §§push(this.§-!#§);
                  if(_loc6_)
                  {
                     §§pop().§9!#§.txtInboxItemCount.visible = true;
                     while(!(_loc5_ && count))
                     {
                        continue loop1;
                     }
                     addr176:
                     addr198:
                  }
                  else
                  {
                     addr225:
                     counterBackground = §§pop().§9!#§.mcItemCountBg;
                     if(_loc6_ || text)
                     {
                        while(true)
                        {
                           oldWidth = counterBackground.width;
                           addr315:
                           while(true)
                           {
                              addr309:
                              while(true)
                              {
                                 counterBackground.scaleX = 1 + (text.length - 1) / 7;
                              }
                           }
                        }
                        addr317:
                     }
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           if(!(_loc5_ && count))
                           {
                              loop10:
                              while(true)
                              {
                                 counterBackground.x = this.§-!#§.§9!#§.txtInboxItemCount.x + this.§-!#§.§9!#§.txtInboxItemCount.width / 2 - counterBackground.width / 2;
                                 while(!_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    if(_loc5_)
                                    {
                                       break loop10;
                                    }
                                    if(!_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(true)
                                          {
                                             return;
                                          }
                                          addr318:
                                          addr318:
                                          continue loop10;
                                       }
                                       §§goto(addr317);
                                    }
                                    §§goto(addr315);
                                 }
                                 §§goto(addr309);
                              }
                              continue;
                           }
                           continue loop8;
                        }
                     }
                  }
                  §§goto(addr318);
               }
               addr194:
               do
               {
                  this.§-!#§.§9!#§.txtInboxItemCount.visible = false;
               }
               while(_loc5_);
               
               addr201:
               this.§-!#§.§9!#§.mcItemCountBg.visible = false;
               §§goto(addr198);
            }
            addr222:
         }
         while(true)
         {
            §§push(this.§-!#§);
            if(!(_loc5_ && counterBackground))
            {
               if(_loc6_ || this)
               {
                  if(!(_loc5_ && this))
                  {
                     §§pop().§9!#§.mcItemCountBg.visible = true;
                     while(_loc6_)
                     {
                        if(_loc6_)
                        {
                           while(true)
                           {
                              §§push(this.§`?§(count));
                              if(_loc6_ || count)
                              {
                                 §§push(§§pop());
                              }
                              text = §§pop();
                              loop15:
                              for(; _loc6_ || counterBackground; if(!(_loc6_ || this))
                              {
                                 continue;
                              },if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr57);
                                 }
                                 §§goto(addr225);
                                 §§push(this.§-!#§);
                              },§§goto(addr217))
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_ || count)
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          addr57:
                                          while(true)
                                          {
                                             §§push(this.§-!#§);
                                             if(_loc6_)
                                             {
                                                §§pop().§9!#§.txtInboxItemCount.text.text = text;
                                                continue loop16;
                                             }
                                             §§goto(addr225);
                                          }
                                          continue loop15;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr201);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr158);
                                 }
                                 §§goto(addr318);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr222);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr217);
               }
               break;
            }
            §§goto(addr225);
         }
         §§goto(addr194);
      }
      
      private function §<!%§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_ && i)
         {
         }
         var userVO:FriendListItemVO = null;
         var userBlocked:String = null;
         if(!_loc8_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               addr52:
               while(true)
               {
                  while(_loc8_)
                  {
                     if(_loc8_ || newList)
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §`?§(amt:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         var text:* = null;
         if(_loc4_ || text)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(Number(Math.min(amt,99000000)));
                     addr317:
                     while(true)
                     {
                        amt = §§pop();
                        addr318:
                        while(true)
                        {
                        }
                     }
                     addr176:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§push(amt);
                     loop27:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && amt))
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(2);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().toPrecision(§§pop()) + "k");
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(_loc4_ || _loc3_)
                                             {
                                                text = §§pop();
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!(_loc3_ && amt))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(text);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc3_ && text))
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop15;
                                                         }
                                                         loop10:
                                                         while(true)
                                                         {
                                                            text = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               if(!(_loc3_ && text))
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        continue loop10;
                                                                        addr266:
                                                                     }
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(amt);
                                                                           addr246:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(2);
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().toPrecision(§§pop()).slice(0,3) + "M");
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       break loop15;
                                                                                    }
                                                                                 }
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(amt);
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1000);
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                §§push(amt);
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().toString());
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop27;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_ && this)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                if(!(_loc4_ || amt))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(amt);
                                                                                                   addr186:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(1000);
                                                                                                      addr187:
                                                                                                      addr281:
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         addr280:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            break loop18;
                                                                                                         }
                                                                                                      }
                                                                                                      addr281:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(amt);
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                   addr205:
                                                                                                   while(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      amt = §§pop();
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr167:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            if(!(_loc3_ && this))
                                                                                                            {
                                                                                                               §§goto(addr176);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr228);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr317);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr235);
                                                                                             }
                                                                                             addr228:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr249:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 amt = §§pop();
                                                                                 continue loop20;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr259:
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            continue loop22;
                                                         }
                                                         addr37:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(amt);
                                                            if(!(_loc3_ && amt))
                                                            {
                                                               §§goto(addr280);
                                                               §§push(1000000);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         addr306:
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr243);
                                                }
                                             }
                                             while(true)
                                             {
                                                text = §§pop();
                                                §§goto(addr259);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr257);
                                       }
                                       §§goto(addr187);
                                    }
                                    else
                                    {
                                       §§goto(addr317);
                                    }
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr205);
                     }
                  }
               }
            }
         }
         §§goto(addr309);
      }
   }
}
