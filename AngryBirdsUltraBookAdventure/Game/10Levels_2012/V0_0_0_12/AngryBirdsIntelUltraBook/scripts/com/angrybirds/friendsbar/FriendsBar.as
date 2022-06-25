package com.angrybirds.friendsbar
{
   import §+p§.§&!>§;
   import §+p§.CachedDataEvent;
   import §5,§.FriendItemRenderer;
   import §5,§.HighScoreScroller;
   import §6b§.Log;
   import §7p§.§+!N§;
   import §9R§.CachedFacebookFriends;
   import §9R§.HighScoreListManager;
   import §=?§.SoundEngine;
   import §@!`§.§&!D§;
   import §@!`§.FriendListItemVO;
   import §@!`§.InviteVO;
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
      
      private var §@c§:HighScoreScroller;
      
      private var §for§:Array;
      
      private var §^5§:FriendsBarAsset;
      
      private var §9<§:String;
      
      private var §'U§:HighScoreListManager;
      
      private var §0!U§:String = "";
      
      private var §+1§:CachedFacebookFriends;
      
      private var §^+§:String;
      
      private var §-!'§:Boolean;
      
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
                        this.§9<§ = serverRoot;
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
                                                this.§^+§ = userId;
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
                                       this.§'U§ = highScoreListManager;
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
      
      public function §&,§(title:String) : void
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
                  this.§^5§.§`!D§.text = title;
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
               this.§^5§ = new FriendsBarAsset();
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     addChild(this.§^5§);
                     if(!(_loc3_ && _loc1_))
                     {
                        loop1:
                        while(true)
                        {
                           this.§&,§("Total scores");
                           while(true)
                           {
                              addr277:
                              addr458:
                              while(true)
                              {
                                 this.§>!E§();
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       MovieClip(this.§^5§.§!5§.soundsOff).mouseEnabled = false;
                                       if(_loc2_ || _loc2_)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             MovieClip(this.§^5§.§!5§.soundsOff).mouseChildren = false;
                                             addr237:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      this.§@c§ = new HighScoreScroller(250,250,[],FriendItemRenderer,2,15);
                                                      if(_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      loop36:
                                                      while(true)
                                                      {
                                                         §§push(this.§^5§);
                                                         while(true)
                                                         {
                                                            §§pop().§!5§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§catch§);
                                                            addr690:
                                                            loop38:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue loop38;
                                                                  }
                                                                  §§push(this.§^5§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§!5§.btnSound.addEventListener(MouseEvent.CLICK,this.§0!B§);
                                                                     addr650:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           addr657:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(this.§^5§);
                                                                                 continue loop16;
                                                                                 addr637:
                                                                              }
                                                                              continue loop36;
                                                                           }
                                                                           addr635:
                                                                           addr657:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr697:
                                                                           §§push(this.§^5§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().§!5§.btnInvite.addEventListener(MouseEvent.CLICK,this.§3!S§);
                                                                              addr706:
                                                                              while(true)
                                                                              {
                                                                                 continue loop36;
                                                                              }
                                                                           }
                                                                           addr697:
                                                                           addr708:
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr339);
                                          }
                                       }
                                       §§goto(addr690);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr445);
                              }
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(this.§@c§);
                              while(true)
                              {
                                 §§pop().scrollerSprite.x = 180 + 10;
                                 if(_loc3_ && this)
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    addr339:
                                    return;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr706);
                           }
                        }
                     }
                     §§goto(addr657);
                  }
                  §§goto(addr706);
               }
            }
            §§goto(addr419);
         }
         §§goto(addr458);
      }
      
      public function §+x§(currentState:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || currentState)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  Log.log("Changing state");
                  addr417:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr241);
      }
      
      public function §>!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               if(!SoundEngine.§4!7§())
               {
                  MovieClip(this.§^5§.§!5§.soundsOff).visible = true;
                  loop1:
                  for(; _loc2_; if(_loc1_ && _loc1_)
                  {
                     continue;
                  },if(!(_loc1_ && this))
                  {
                     §§goto(addr24);
                  }
                  else
                  {
                     addr105:
                  },while(true)
                  {
                     MovieClip(this.§^5§.§!5§.soundsOff).visible = false;
                     break loop1;
                  })
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        continue;
                     }
                  }
                  continue;
               }
            }
            addr24:
            return;
         }
         §§goto(addr105);
      }
      
      private function §3!S§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
         }
         while(true)
         {
            while(!_loc2_)
            {
               dispatchEvent(new §&!>§(§&!>§.INVITE_FRIENDS_REQUESTED));
               while(_loc3_ || this)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §07§(e:§&!>§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr29:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
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
            §§goto(addr29);
         }
         var inviteVO:InviteVO = e.data as InviteVO;
         if(!(_loc4_ && _loc3_))
         {
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
                     §§push(this.§'U§);
                     loop7:
                     while(true)
                     {
                        §§push(§§pop().§-!V§());
                        addr288:
                        while(true)
                        {
                           if(§§pop().data.indexOf(inviteVO) == -1)
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(this.§+1§);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop15:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc4_ && inviteVO))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§pop();
                                             addr246:
                                             while(true)
                                             {
                                                §§push(this.§+1§);
                                                while(true)
                                                {
                                                   §§push(§§pop().data.indexOf(inviteVO) == -1);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§push(!§§pop());
                                                      if(_loc3_ || inviteVO)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr230:
                                                   §§push(this.§+1§);
                                                   if(!(_loc4_ && e))
                                                   {
                                                      continue loop14;
                                                   }
                                                }
                                                continue loop15;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop24:
                                             while(true)
                                             {
                                                this.§60§();
                                                addr133:
                                                loop25:
                                                while(_loc3_ || _loc3_)
                                                {
                                                   loop26:
                                                   for(; _loc3_; if(_loc3_ || e)
                                                   {
                                                      continue loop25;
                                                   })
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         while(_loc3_)
                                                         {
                                                            while(_loc3_ || this)
                                                            {
                                                               §§goto(addr230);
                                                            }
                                                            while(true)
                                                            {
                                                               break loop25;
                                                               §§goto(addr223);
                                                            }
                                                            addr223:
                                                         }
                                                         continue loop6;
                                                         addr220:
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         break loop24;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§"E§();
                                                         while(_loc3_)
                                                         {
                                                            while(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && inviteVO))
                                                               {
                                                                  dispatchEvent(new §&!>§(§&!>§.INVITE_FRIENDS_REQUESTED,inviteVO));
                                                                  continue loop4;
                                                               }
                                                               continue loop7;
                                                               if(!(_loc4_ && inviteVO))
                                                               {
                                                                  continue loop26;
                                                               }
                                                            }
                                                         }
                                                         addr187:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop26;
                                                            }
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || inviteVO)
                                                      {
                                                         continue loop24;
                                                      }
                                                      addr293:
                                                      while(true)
                                                      {
                                                         break loop23;
                                                      }
                                                   }
                                                   continue loop7;
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr223);
                                                }
                                                continue loop13;
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr220);
                                       }
                                    }
                                 }
                              }
                              addr231:
                           }
                           §§goto(addr293);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      private function §catch§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               dispatchEvent(new §&!>§(§&!>§.FULLSCREEN_TOGGLE_REQUESTED));
               while(!(_loc3_ && _loc2_))
               {
                  if(!(_loc3_ && e))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      private function §0!B§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && e)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     dispatchEvent(new §&!>§(§&!>§.MUTE_TOGGLE_REQUESTED));
                     while(true)
                     {
                        while(!(_loc2_ && _loc3_))
                        {
                           this.§>!E§();
                           while(!(_loc2_ && this))
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
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
            }
         }
         §§goto(addr101);
      }
      
      private function §9V§(e:MouseEvent) : void
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
                  dispatchEvent(new §&!>§(§&!>§.INFO_REQUESTED));
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
                        Log.log(§&!>§.INFO_REQUESTED);
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
      
      private function §^!X§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  Log.log(§&!>§.TUTORIAL_REQUESTED);
                  continue loop0;
                  addr69:
                  while(!(_loc2_ && this))
                  {
                     dispatchEvent(new §&!>§(§&!>§.TUTORIAL_REQUESTED));
                     while(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           addr32:
                           if(_loc3_)
                           {
                              return;
                              addr44:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §9!#§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            while(true)
            {
            }
            addr74:
         }
         while(true)
         {
            this.scroll(-this.§@c§.§ ?§);
            for(; _loc2_; if(!_loc3_)
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr74);
            }
         }
      }
      
      private function §+!5§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && e)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.scroll(this.§@c§.§ ?§);
                  while(!(_loc3_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        if(_loc2_ || this)
                        {
                           return;
                           addr61:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §!w§(e:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(_loc4_ || this)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc5_)
                  {
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push("http://www.facebook.com/Intel");
                  if(_loc5_ && ultrabookURL)
                  {
                  }
                  var ultrabookURL:String = §§pop();
                  if(_loc4_ || urlReq)
                  {
                     loop4:
                     while(true)
                     {
                        §+!N§.§;7§(ultrabookURL);
                        while(true)
                        {
                           loop6:
                           for(; !_loc5_; while(!(_loc5_ && this))
                           {
                              continue loop4;
                           })
                           {
                              while(true)
                              {
                                 AngryBirdsUltraBook.sSingleton.§"§();
                                 continue loop6;
                              }
                           }
                        }
                        if(_loc5_ && urlReq)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(_loc4_ || this)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr92);
                        }
                        var urlReq:URLRequest = new URLRequest(ultrabookURL);
                        if(_loc4_ || urlReq)
                        {
                           while(true)
                           {
                              navigateToURL(urlReq,"_blank");
                              while(_loc4_ || e)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 return;
                                 addr152:
                              }
                           }
                        }
                        §§goto(addr152);
                        addr106:
                     }
                  }
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function set height(value:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               while(!_loc3_)
               {
                  this.resize(value);
                  while(!_loc2_)
                  {
                  }
                  if(!(_loc3_ && value))
                  {
                     return;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private function resize(setHeight:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && setHeight)
         {
         }
         if(_loc4_ || targetStageHeight)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr46:
                  while(true)
                  {
                     while(_loc4_)
                     {
                        if(!_loc5_)
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
         while(false)
         {
            §§goto(addr46);
         }
         var targetStageHeight:Number = Math.max(setHeight,330);
         if(_loc5_ && targetStageHeight)
         {
         }
         loop5:
         while(true)
         {
            §§push(this.§^5§);
            while(true)
            {
               §§pop().§,!W§.height = targetStageHeight - this.§^5§.§ e§.height - this.§^5§.§6l§.height + 5;
               addr208:
               addr154:
               while(true)
               {
                  continue loop5;
               }
               loop9:
               for(; _loc4_ || scrollerHeight; while(!(_loc5_ && targetStageHeight))
               {
                  §§pop().§!5§.y = this.§^5§.§6l§.y + 55;
                  §§goto(addr147);
                  §§goto(addr77);
               })
               {
                  §§pop().§6l§.y = this.§^5§.§,!W§.y + this.§^5§.§,!W§.height;
                  loop10:
                  for(; !(_loc5_ && setHeight); while(_loc4_ || targetStageHeight)
                  {
                     §§goto(addr77);
                  })
                  {
                     while(true)
                     {
                        §§push(this.§^5§);
                        continue loop9;
                        addr99:
                        if(!(_loc4_ || targetStageHeight))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           continue loop5;
                        }
                        addr108:
                        if(_loc4_)
                        {
                           if(false)
                           {
                              addr77:
                              while(true)
                              {
                                 §§push(this.§^5§);
                                 if(!(_loc4_ || this))
                                 {
                                    break;
                                    addr95:
                                 }
                                 §§pop().§2e§.y = this.§^5§.§6l§.y + 45;
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop10;
                                    }
                                    if(_loc4_)
                                    {
                                       §§goto(addr99);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop10;
                                       }
                                       addr147:
                                    }
                                    §§goto(addr108);
                                 }
                                 continue loop5;
                              }
                              continue loop9;
                              addr77:
                           }
                           §§push(targetStageHeight);
                           if(_loc4_)
                           {
                              §§push(this.§^5§.§6l§.height - 30);
                              if(!(_loc5_ && setHeight))
                              {
                                 §§push(§§pop() + this.§^5§.§ e§.height - 30);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc4_)
                              {
                                 addr237:
                                 §§push(Number(§§pop()));
                              }
                              var scrollerHeight:* = §§pop();
                              if(_loc4_ || scrollerHeight)
                              {
                                 this.§@c§.§3u§(scrollerHeight);
                                 addr298:
                              }
                              addr287:
                              if(!_loc5_)
                              {
                                 this.§"E§();
                                 addr277:
                                 if(!(_loc5_ && targetStageHeight))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_ && scrollerHeight)
                                       {
                                          §§goto(addr287);
                                       }
                                       return;
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr298);
                              }
                              addr296:
                              §§goto(addr296);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr208);
               }
            }
         }
      }
      
      public function §]! §(episode:String, level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && episode)
         {
         }
         if(!(_loc5_ && level))
         {
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
                        while(true)
                        {
                           §§push(this.§0!U§);
                           loop5:
                           while(true)
                           {
                              §§push(level);
                              addr718:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr720:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr726:
                                                while(true)
                                                {
                                                   §§push(this.§-!'§);
                                                   addr708:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      addr709:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                }
                                             }
                                             addr725:
                                          }
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§-!'§ = false;
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§+1§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!(_loc6_ || episode))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr665:
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§push(this.§+1§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(CachedDataEvent.DATA_LOADED);
                                                                                    addr618:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().removeEventListener(§§pop(),this.§;]§);
                                                                                       addr622:
                                                                                       while(true)
                                                                                       {
                                                                                          addr611:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§+1§ = null;
                                                                                             addr608:
                                                                                             while(true)
                                                                                             {
                                                                                                addr603:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr327:
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           addr664:
                                                                        }
                                                                        addr579:
                                                                        while(true)
                                                                        {
                                                                           §§push(level);
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           loop37:
                                                                           for(; !(_loc5_ && scores); while(_loc6_ || scores)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr521);
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr709);
                                                                              }
                                                                           })
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    addr684:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                    }
                                                                                 }
                                                                                 continue loop15;
                                                                                 addr642:
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.§&,§("Total scores");
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr558:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§+1§ = this.§'U§.§>3§(episode,level,isTournament);
                                                                                       addr550:
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(false);
                                                                                             continue loop37;
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr599);
                                                                              §§goto(addr685);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || level)
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr725);
                                                                              §§goto(addr589);
                                                                           }
                                                                           addr589:
                                                                           §§goto(addr726);
                                                                           §§goto(addr603);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  §§goto(addr684);
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr712);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(!(_loc5_ && level))
                           {
                              §§goto(addr452);
                              §§push(isTournament);
                           }
                        }
                     }
                  }
               }
               while(!(_loc5_ && level))
               {
                  §§goto(addr525);
                  §§goto(addr431);
               }
            }
         }
         §§goto(addr111);
      }
      
      private function §=F§(e:CachedDataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && e)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!this.§+1§)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        for(§§push(this.§@c§); §§pop().data == this.§'U§.§-!V§().data; )
                        {
                           §§push(this.§@c§);
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           §§pop().§3!b§();
                           while(true)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 loop5:
                                 while(true)
                                 {
                                    addr66:
                                    while(true)
                                    {
                                       this.§=-§(this.§'U§.§-!V§().userIndex);
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    break loop3;
                                 }
                                 while(true)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr172);
                        }
                     }
                  }
                  §§goto(addr178);
               }
            }
         }
         §§goto(addr160);
      }
      
      private function §;]§(e:CachedDataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
            }
            addr150:
         }
         loop1:
         while(true)
         {
            FriendItemRenderer.isShowingLevelScores = true;
            while(true)
            {
               while(true)
               {
                  this.§for§ = this.§+1§.data;
                  while(_loc3_)
                  {
                     while(!_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
               addr78:
               if(!(_loc2_ && _loc2_))
               {
                  this.§"E§();
                  while(_loc3_ || this)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        return;
                     }
                     §§goto(addr118);
                  }
                  loop9:
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr71:
                        if(!(_loc2_ && e))
                        {
                           §§goto(addr78);
                        }
                        else
                        {
                           while(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 this.§=-§(this.§+1§.userIndex);
                              }
                              else
                              {
                                 §§goto(addr150);
                              }
                              §§goto(addr71);
                           }
                           while(true)
                           {
                              §§goto(addr96);
                           }
                           addr96:
                           addr105:
                        }
                     }
                     while(true)
                     {
                        continue loop9;
                     }
                  }
                  addr44:
               }
            }
         }
      }
      
      public function §&m§(data:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§-!'§ = true;
                  while(true)
                  {
                     continue loop0;
                     addr72:
                     if(!(_loc3_ && this))
                     {
                        this.§"E§();
                        while(!(_loc2_ || data))
                        {
                        }
                        addr79:
                        if(_loc3_)
                        {
                           while(true)
                           {
                              if(!(_loc3_ && data))
                              {
                                 addr55:
                                 if(!(_loc3_ && data))
                                 {
                                    §§goto(addr72);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§60§();
                                       §§goto(addr55);
                                    }
                                    addr108:
                                 }
                              }
                              loop8:
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr91:
                                    if(_loc2_ || _loc3_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       this.§for§ = data;
                                       §§goto(addr91);
                                    }
                                    addr128:
                                 }
                                 while(_loc2_)
                                 {
                                    §§goto(addr108);
                                    continue loop8;
                                 }
                                 addr134:
                                 while(true)
                                 {
                                    §§goto(addr128);
                                 }
                              }
                              continue loop1;
                              §§goto(addr79);
                           }
                           continue;
                           addr48:
                        }
                        if(_loc2_)
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
      
      public function §=-§(userIndex:int, animate:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || currentOffset)
         {
         }
         var currentOffset:* = 0;
         var halfway:* = 0;
         var newOffset:* = 0;
         if(_loc6_ || currentOffset)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(userIndex);
                     addr234:
                     while(true)
                     {
                        §§push(-1);
                        addr235:
                        while(§§pop() != §§pop())
                        {
                        }
                        §§goto(addr39);
                     }
                     loop13:
                     while(!(_loc7_ && userIndex))
                     {
                        §§push(int(Math.floor(this.§@c§.§ ?§ / 2)));
                        loop14:
                        while(true)
                        {
                           halfway = §§pop();
                           loop15:
                           while(true)
                           {
                              loop16:
                              while(true)
                              {
                                 §§push(userIndex);
                                 if(_loc6_ || currentOffset)
                                 {
                                    continue loop14;
                                 }
                                 addr168:
                                 newOffset = §§pop();
                                 loop17:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       addr225:
                                       while(true)
                                       {
                                          §§push(this.§@c§);
                                          addr217:
                                          while(true)
                                          {
                                             §§push(int(§§pop().offset));
                                             §§push(this.§@c§);
                                             addr130:
                                             break loop16;
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             §§push(newOffset);
                                             §§push(animate);
                                             if(_loc6_ || currentOffset)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().scroll(§§pop(),§§pop());
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop17;
                                                }
                                                addr85:
                                                if(!(_loc7_ && currentOffset))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                         §§goto(addr58);
                                                      }
                                                   }
                                                   addr237:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                      §§goto(addr85);
                                                   }
                                                   addr222:
                                                }
                                                addr103:
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      break loop15;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr237);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                                 if(_loc7_ && userIndex)
                                 {
                                    continue;
                                 }
                                 §§goto(addr130);
                              }
                              addr219:
                              while(_loc6_)
                              {
                                 currentOffset = §§pop();
                                 §§goto(addr222);
                              }
                              §§goto(addr234);
                           }
                           if(_loc7_)
                           {
                              continue loop13;
                           }
                           if(!_loc7_)
                           {
                              addr58:
                              if(!(_loc7_ && userIndex))
                              {
                                 addr39:
                                 return;
                              }
                              continue loop7;
                           }
                           §§goto(addr225);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr236);
      }
      
      private function scroll(offset:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || offset)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(offset != 0)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§@c§.scroll(offset);
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              this.§"E§();
                              loop6:
                              while(!(_loc3_ && _loc3_))
                              {
                                 continue loop4;
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || offset))
                  {
                     continue;
                  }
                  §§goto(addr93);
               }
               addr28:
               return;
            }
         }
         §§goto(addr93);
      }
      
      private function §"E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && canGoLeft)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr37);
         }
         §§push(this.§@c§.offset == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var canGoLeft:* = §§pop();
         if(_loc3_)
         {
         }
         §§push(this.§@c§.offset == this.§@c§.data.length - this.§@c§.§ ?§);
         if(_loc4_)
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
               §§push(this.§^5§);
               loop5:
               while(true)
               {
                  §§pop().§#K§.visible = canGoLeft;
                  continue loop4;
                  addr149:
                  loop8:
                  while(true)
                  {
                     §§push(this.§^5§);
                     if(_loc4_ || this)
                     {
                        §§pop().§2e§.visible = canGoRight;
                        while(_loc4_ || this)
                        {
                           if(_loc4_ || canGoRight)
                           {
                              return;
                           }
                        }
                        while(_loc4_ || _loc3_)
                        {
                           continue loop8;
                           §§goto(addr122);
                        }
                        addr122:
                        continue loop4;
                        addr142:
                     }
                     continue loop5;
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      public function get §?!-§() : CachedFacebookFriends
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.§+1§;
      }
      
      public function §-!E§(level:String, score:int, stars:int, eagle:int, beatenUsers:Array, isTournament:Boolean = false) : int
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc13_)
         {
         }
         var userBeaten:Object = null;
         if(_loc13_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!_loc14_)
                  {
                     while(true)
                     {
                     }
                     addr90:
                     if(_loc14_ && stars)
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop11:
                        while(true)
                        {
                           §§push(!this.§+1§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop13:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc13_ || this)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§pop();
                                       addr115:
                                       while(true)
                                       {
                                          §§push(this.§0!U§ == level);
                                          if(_loc13_ || level)
                                          {
                                             §§push(!§§pop());
                                             if(_loc14_ && score)
                                             {
                                                continue loop14;
                                             }
                                          }
                                          continue loop14;
                                       }
                                       continue loop13;
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    if(!_loc14_)
                                    {
                                       if(!(_loc14_ && level))
                                       {
                                          if(_loc13_)
                                          {
                                             return 0;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                loop8:
                                                while(_loc13_)
                                                {
                                                   loop9:
                                                   while(!(_loc14_ && level))
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc14_ && score))
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop9;
                                                         addr83:
                                                         if(_loc14_ && score)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                      while(true)
                                                      {
                                                         break loop8;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             addr160:
                                             while(true)
                                             {
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr163);
                                       }
                                       else
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr83);
                                    }
                                    §§goto(addr118);
                                 }
                              }
                           }
                        }
                     }
                     var out_usersBeaten:Array = [];
                     if(_loc13_ || this)
                     {
                     }
                     var prevOffset:int = this.§@c§.offset;
                     if(_loc14_ && this)
                     {
                     }
                     §§push(this.§+1§.§-!E§(score,stars,eagle,out_usersBeaten));
                     if(_loc13_ || stars)
                     {
                        §§push(int(§§pop()));
                     }
                     var rankAfterUpdate:* = §§pop();
                     if(_loc13_ || this)
                     {
                        this.§for§ = this.§+1§.data;
                        addr300:
                        addr302:
                     }
                     this.§60§();
                     addr290:
                     if(_loc13_ || level)
                     {
                        if(!(_loc14_ && stars))
                        {
                           addr251:
                           this.§=-§(rankAfterUpdate - 1,true);
                           if(_loc13_ || level)
                           {
                              if(_loc13_)
                              {
                                 if(!(_loc14_ && level))
                                 {
                                    if(!(_loc14_ && level))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr251);
                                       }
                                       var _loc11_:int = 0;
                                       var _loc12_:* = out_usersBeaten;
                                       addr344:
                                       for each(userBeaten in _loc12_)
                                       {
                                          if(!_loc14_)
                                          {
                                             addr326:
                                             beatenUsers.push(userBeaten);
                                             addr343:
                                             if(!_loc14_)
                                             {
                                                if(!_loc14_)
                                                {
                                                   addr324:
                                                   if(false)
                                                   {
                                                      §§goto(addr326);
                                                   }
                                                   §§goto(addr344);
                                                }
                                                §§goto(addr343);
                                             }
                                             addr331:
                                             §§goto(addr331);
                                          }
                                          §§goto(addr324);
                                       }
                                       if(_loc13_)
                                       {
                                          this.§"E§();
                                          addr365:
                                          if(_loc13_ || this)
                                          {
                                             if(_loc14_)
                                             {
                                                §§goto(addr365);
                                             }
                                             return rankAfterUpdate;
                                             addr372:
                                          }
                                          addr374:
                                          §§goto(addr374);
                                       }
                                       §§goto(addr372);
                                    }
                                    §§goto(addr290);
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr300);
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr302);
                     }
                     addr293:
                     §§goto(addr293);
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      public function §8z§(count:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && counterBackground)
         {
         }
         var text:* = null;
         var counterBackground:MovieClip = null;
         var oldWidth:int = 0;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(count != 0)
                  {
                     §§push(this.§^5§);
                     if(_loc6_)
                     {
                        §§pop().§!5§.txtInboxItemCount.visible = true;
                        loop2:
                        while(true)
                        {
                           loop3:
                           for(; !_loc5_; loop6:
                           while(true)
                           {
                              if(_loc6_ || count)
                              {
                                 if(_loc6_)
                                 {
                                    while(_loc6_)
                                    {
                                       if(!(_loc6_ || counterBackground))
                                       {
                                          addr196:
                                          break loop6;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§^5§);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§pop().§!5§.txtInboxItemCount.text.text = text;
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr103);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr183);
                                 }
                                 break;
                              }
                              continue loop3;
                           },§§goto(addr187))
                           {
                              §§push(this.§^5§);
                              if(!(_loc5_ && text))
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    §§pop().§!5§.mcItemCountBg.visible = true;
                                    loop4:
                                    while(true)
                                    {
                                       addr103:
                                       while(true)
                                       {
                                          if(_loc6_ || text)
                                          {
                                             if(_loc5_ && counterBackground)
                                             {
                                                break;
                                             }
                                             §§push(this.§#^§(count));
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop());
                                             }
                                             text = §§pop();
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr298);
                                    }
                                 }
                                 else
                                 {
                                    addr187:
                                    §§pop().§!5§.txtInboxItemCount.visible = false;
                                    §§push(this.§^5§);
                                    if(_loc6_)
                                    {
                                       §§pop().§!5§.mcItemCountBg.visible = false;
                                    }
                                    else
                                    {
                                       addr205:
                                       counterBackground = §§pop().§!5§.mcItemCountBg;
                                       if(_loc6_ || this)
                                       {
                                          while(true)
                                          {
                                             oldWidth = counterBackground.width;
                                             loop11:
                                             while(!(_loc5_ && counterBackground))
                                             {
                                                while(true)
                                                {
                                                   loop13:
                                                   while(_loc6_)
                                                   {
                                                      counterBackground.scaleX = 1 + (text.length - 1) / 7;
                                                      loop14:
                                                      while(true)
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               counterBackground.x = this.§^5§.§!5§.txtInboxItemCount.x + this.§^5§.§!5§.txtInboxItemCount.width / 2 - counterBackground.width / 2;
                                                               while(_loc5_)
                                                               {
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr295);
                                    }
                                    addr191:
                                    addr183:
                                 }
                                 addr298:
                                 return;
                              }
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr205);
                  }
               }
            }
         }
         §§goto(addr196);
      }
      
      private function §60§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || blockedList)
         {
         }
         var userVO:FriendListItemVO = null;
         var userBlocked:* = null;
         if(!(_loc9_ && i))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr50:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr50);
         }
         var blockedList:Array = §&!D§.§8!X§.§]L§();
         if(_loc8_ || i)
         {
         }
         var newList:Array = this.§for§.concat();
         if(_loc8_ || blockedList)
         {
         }
         var i:* = int(this.§for§.length - 1);
         loop5:
         while(true)
         {
            if(i >= 0)
            {
               if(!(_loc9_ && i))
               {
                  while(_loc8_)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     userVO = this.§for§[i];
                     if(!(_loc9_ && this))
                     {
                        if(_loc9_)
                        {
                           continue loop5;
                        }
                     }
                     §§push(0);
                     if(_loc8_)
                     {
                        var _loc6_:* = §§pop();
                        if(!(_loc9_ && newList))
                        {
                           var _loc7_:* = blockedList;
                           if(_loc8_)
                           {
                              while(§§hasnext(_loc7_,_loc6_))
                              {
                                 §§push(§§nextvalue(_loc6_,_loc7_));
                                 loop8:
                                 while(true)
                                 {
                                    userBlocked = §§pop();
                                    addr227:
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                              }
                              addr231:
                              if(_loc8_)
                              {
                                 if(_loc8_ || blockedList)
                                 {
                                    §§push(i);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc8_)
                                       {
                                          addr258:
                                          §§push(int(§§pop()));
                                       }
                                    }
                                    i = §§pop();
                                 }
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 if(!(_loc9_ && blockedList))
                                 {
                                    §§goto(addr178);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr193);
                           }
                        }
                        §§goto(addr231);
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr265);
               }
               break;
            }
            if(_loc8_)
            {
               addr265:
               if(!(_loc9_ && newList))
               {
                  this.§@c§.data = newList;
                  addr287:
                  if(_loc9_)
                  {
                     §§goto(addr287);
                  }
                  break;
                  addr273:
               }
               break;
            }
            §§goto(addr273);
            §§goto(addr265);
         }
      }
      
      private function §#^§(amt:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && text)
         {
         }
         var text:String = null;
         if(_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr295:
                  while(true)
                  {
                     §§push(Number(Math.min(amt,99000000)));
                     addr284:
                     while(true)
                     {
                        amt = §§pop();
                        continue loop1;
                     }
                  }
               }
               while(!(_loc4_ && amt))
               {
                  §§goto(addr31);
                  §§goto(addr230);
               }
            }
         }
         §§goto(addr91);
      }
   }
}
