package §'!%§
{
   import §9!!§.§1!E§;
   import §<!=§.§"o§;
   import §<!=§.FriendListItemVO;
   import §<!=§.InviteVO;
   import §<!=§.UserLevelScoreVO;
   import §<!=§.UserTotalScoreVO;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class CachedFacebookFriends extends CachedData
   {
      
      public static var sUserObject:FriendListItemVO;
      
      public static var invitedIDs:Array;
      
      private static var sUserAvatars:Object;
      
      {
         var sUserObject:Boolean = true;
         var invitedIDs:Boolean = false;
         if(sUserObject || invitedIDs)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               invitedIDs = [];
               while(!(invitedIDs && sUserObject))
               {
                  while(!(invitedIDs && invitedIDs))
                  {
                     continue loop0;
                     sUserAvatars = {};
                     if(sUserObject)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected var §^Q§:String;
      
      protected var §!! §:String;
      
      protected var §]?§:Boolean = false;
      
      protected var §+!k§:int = -1;
      
      private var § k§:int = 0;
      
      public function CachedFacebookFriends(userId:String, userName:String, remoteServiceUrl:String, isTotalScores:Boolean, injectedDataResults:Object = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || userName)
         {
         }
         if(_loc6_ || userName)
         {
            while(true)
            {
               loop1:
               while(_loc6_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           loop5:
                           while(!_loc7_)
                           {
                              this.§^Q§ = userId;
                              loop6:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§!! § = userName;
                                    loop8:
                                    while(true)
                                    {
                                       addr197:
                                       while(true)
                                       {
                                          this.§]?§ = isTotalScores;
                                          addr182:
                                          while(!_loc7_)
                                          {
                                             if(!(_loc7_ && remoteServiceUrl))
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                    addr168:
                                    loop12:
                                    while(_loc6_ || userId)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       super(remoteServiceUrl);
                                       loop13:
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(!injectedDataResults)
                                             {
                                                §&a§(0,0);
                                                for(; !(_loc7_ && userId); if(_loc6_)
                                                {
                                                   continue loop13;
                                                })
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc7_ && userName)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                loop18:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && remoteServiceUrl))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr33);
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr87:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && remoteServiceUrl))
                                                      {
                                                         continue loop14;
                                                      }
                                                      continue loop18;
                                                   }
                                                   continue loop3;
                                                }
                                                addr75:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr157);
                                             }
                                          }
                                          if(!(_loc6_ || this))
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             addr33:
                                             return;
                                          }
                                          §§goto(addr197);
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
         while(true)
         {
            §§goto(addr168);
         }
      }
      
      public static function §"!7§(userId:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && userId))
         {
            while(_loc3_)
            {
            }
         }
         return sUserAvatars[userId];
      }
      
      public function get §>R§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         return this.§ k§;
      }
      
      public function get userIndex() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§+!k§;
      }
      
      override protected function dataLoaded(dataObj:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         var lastNonInviteFriend:§"o§ = null;
         var friendListItemVO:FriendListItemVO = null;
         if(_loc9_)
         {
         }
         while(true)
         {
            loop1:
            while(_loc8_)
            {
               loop2:
               do
               {
                  while(!_loc9_)
                  {
                     if(!(_loc9_ && dataObj))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               §§push("items");
               if(_loc9_)
               {
               }
               var parsedFriends:Object = {§§pop():[]};
               if(_loc8_ || this)
               {
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        this.§+!k§ = -1;
                        while(_loc9_)
                        {
                        }
                        if(!(_loc8_ || this))
                        {
                           break;
                        }
                        while(false)
                        {
                           continue loop5;
                        }
                        var i:* = int(dataObj.items.length - 1);
                        loop8:
                        while(true)
                        {
                           §§push(i);
                           if(!_loc9_)
                           {
                              §§push(0);
                              if(!_loc9_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc9_ && lastNonInviteFriend))
                                    {
                                       addr697:
                                       if(_loc8_ || dataObj)
                                       {
                                          §§push(this.§+!k§);
                                          break;
                                          addr617:
                                       }
                                       parsedFriends.items.splice(this.§+!k§,0,this.§]I§(lastNonInviteFriend));
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             addr657:
                                             parsedFriends.totalItemCount = parsedFriends.items.length;
                                             if(!_loc9_)
                                             {
                                                loop47:
                                                while(true)
                                                {
                                                   this.§ k§ = invitedIDs.length;
                                                   addr653:
                                                   while(true)
                                                   {
                                                      addr635:
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop47;
                                                         }
                                                      }
                                                      continue loop47;
                                                   }
                                                }
                                                addr665:
                                             }
                                          }
                                          §§goto(addr797);
                                       }
                                       §§goto(addr789);
                                    }
                                    §§push(this);
                                    if(_loc8_)
                                    {
                                       if(lastNonInviteFriend)
                                       {
                                          addr705:
                                          §§push(int(parsedFriends.items.indexOf(lastNonInviteFriend) + 1));
                                          if(_loc8_ || dataObj)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(!(_loc9_ && lastNonInviteFriend))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       §§pop().§+!k§ = §§pop();
                                       if(_loc8_ || dataObj)
                                       {
                                          if(_loc8_ || this)
                                          {
                                             §§goto(addr697);
                                          }
                                          §§goto(addr799);
                                       }
                                       §§goto(addr775);
                                    }
                                    §§goto(addr705);
                                    addr747:
                                 }
                                 else if(_loc8_ || parsedFriends)
                                 {
                                    if(_loc8_ || lastNonInviteFriend)
                                    {
                                       while(true)
                                       {
                                          CustomAvatarCache.§+8§(new §#!4§(dataObj.items[i].a,dataObj.items[i].u));
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && lastNonInviteFriend))
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                friendListItemVO = FriendListItemVO.§#!_§(dataObj.items[i]);
                                                if(_loc8_ || this)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(friendListItemVO is InviteVO);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc8_ || this)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc9_ && dataObj))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc9_ && parsedFriends))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(invitedIDs);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§push(friendListItemVO.userId);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop().indexOf(§§pop()) == -1);
                                                                                    if(_loc8_ || dataObj)
                                                                                    {
                                                                                       if(_loc9_ && lastNonInviteFriend)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§push(!§§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc8_ || dataObj)
                                                                                          {
                                                                                             addr209:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ || dataObj))
                                                                                                {
                                                                                                   break loop10;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§push(friendListItemVO is InviteVO);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                break loop11;
                                                                                             }
                                                                                             addr480:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                addr485:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc9_ && dataObj))
                                                                                                      {
                                                                                                         §§push(invitedIDs);
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(friendListItemVO.userId);
                                                                                                            addr447:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().indexOf(§§pop()) == -1);
                                                                                                               addr450:
                                                                                                               while(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc8_ || parsedFriends)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && dataObj))
                                                                                                                              {
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              addr586:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr586:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(friendListItemVO.userId);
                                                                                                                                 if(_loc8_ || parsedFriends)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == this.§^Q§)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && parsedFriends))
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && dataObj))
                                                                                                                                          {
                                                                                                                                             this.§+!k§ = i;
                                                                                                                                             if(_loc8_ || dataObj)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      sUserObject = friendListItemVO;
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      addr558:
                                                                                                                                                      addr583:
                                                                                                                                                      addr583:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         loop30:
                                                                                                                                                         while(_loc8_ || dataObj)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr536:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(i);
                                                                                                                                                                  if(!(_loc9_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  i = §§pop();
                                                                                                                                                                  if(!(_loc9_ && lastNonInviteFriend))
                                                                                                                                                                  {
                                                                                                                                                                     break loop12;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop31:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && parsedFriends))
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr583);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr586);
                                                                                                                                                                  }
                                                                                                                                                                  addr594:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr586);
                                                                                                                                                            addr569:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               parsedFriends.items.unshift(friendListItemVO);
                                                                                                                                                               continue loop31;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr534);
                                                                                                                                          }
                                                                                                                                          §§goto(addr583);
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                    §§goto(addr305);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr518);
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr569);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr480);
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop11;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr567);
                                                                                                   }
                                                                                                   addr487:
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr447);
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(false)
                                                                        {
                                                                           §§goto(addr558);
                                                                           §§goto(addr536);
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                               }
                                                               §§goto(addr485);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr482);
                                                         }
                                                      }
                                                      §§goto(addr536);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr380);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr697);
                                          }
                                          §§goto(addr617);
                                       }
                                       §§goto(addr697);
                                    }
                                    §§goto(addr646);
                                 }
                                 §§goto(addr665);
                              }
                              addr741:
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr747);
                                    }
                                    §§goto(addr789);
                                 }
                                 §§goto(addr775);
                              }
                              §§goto(addr657);
                           }
                           break;
                        }
                        §§goto(addr741);
                        §§push(0);
                     }
                  }
               }
               §§goto(addr79);
            }
         }
      }
      
      public function §]I§(lastNonInviteFriend:§"o§) : §"o§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && lastNonInviteFriend))
         {
            while(!_loc3_)
            {
            }
            if(!this.§]?§)
            {
               §§push(§§findproperty(UserLevelScoreVO));
               if(_loc2_ && this)
               {
               }
               §§push(this.§^Q§);
               if(!_loc3_)
               {
               }
               §§push(this.§!! §);
               if(!_loc2_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr63:
                     §§push(sUserObject);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           addr76:
                           §§push(sUserObject.avatarString);
                           if(!(_loc2_ && lastNonInviteFriend))
                           {
                              §§push(§§pop());
                              if(_loc3_ || lastNonInviteFriend)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push("");
                           if(_loc2_)
                           {
                           }
                        }
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                        }
                        §§push(0);
                        if(_loc2_)
                        {
                        }
                        §§push(0);
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              if(lastNonInviteFriend)
                              {
                                 addr125:
                                 §§push(lastNonInviteFriend.rank);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(int(§§pop() + 1));
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr158:
                                    §§push(int(§§pop()));
                                 }
                              }
                              else
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr158);
                                 }
                              }
                              return new §§pop().UserLevelScoreVO(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           }
                        }
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr63);
            }
         }
         §§push(§§findproperty(UserTotalScoreVO));
         if(_loc2_ && _loc2_)
         {
         }
         §§push(this.§^Q§);
         if(_loc3_ || _loc2_)
         {
         }
         §§push(this.§!! §);
         if(_loc3_)
         {
            if(!_loc2_)
            {
               addr190:
               §§push(sUserObject);
               if(_loc3_ || lastNonInviteFriend)
               {
                  if(§§pop())
                  {
                     addr203:
                     addr201:
                     §§push(sUserObject.avatarString);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                        }
                        addr225:
                        §§push(0);
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              addr245:
                              if(lastNonInviteFriend)
                              {
                                 addr248:
                                 §§push(lastNonInviteFriend.rank);
                                 if(_loc3_)
                                 {
                                    §§push(1);
                                    if(!(_loc2_ && lastNonInviteFriend))
                                    {
                                       §§push(int(§§pop() + §§pop()));
                                       if(!_loc2_)
                                       {
                                          addr287:
                                          §§push(0);
                                       }
                                       else
                                       {
                                          addr286:
                                          §§goto(addr287);
                                       }
                                       §§goto(addr287);
                                    }
                                    return new §§pop().UserTotalScoreVO(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 }
                                 addr273:
                                 §§push(int(§§pop()));
                                 if(!_loc2_)
                                 {
                                    §§goto(addr286);
                                 }
                                 §§goto(addr287);
                              }
                              else
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr273);
                                 }
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr248);
                        }
                        §§goto(addr245);
                     }
                  }
                  else
                  {
                     §§push("");
                     if(_loc2_ && lastNonInviteFriend)
                     {
                     }
                  }
                  §§goto(addr225);
               }
               §§goto(addr203);
            }
            §§goto(addr201);
         }
         §§goto(addr190);
      }
      
      public function §`!8§(id:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && id))
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
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
            §§goto(addr39);
         }
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop4:
         while(true)
         {
            §§push(i);
            loop5:
            while(§§pop() >= data.length)
            {
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     addr91:
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§push(-1);
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc4_ && i))
                           {
                              if(!(_loc4_ && i))
                              {
                                 if(_loc3_ || this)
                                 {
                                    break loop4;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc3_ || id)
                                    {
                                       §§push(§§pop() + 1);
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr123:
                                          while(true)
                                          {
                                             i = §§pop();
                                             addr124:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop4;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push((data[i] as §"o§).userId == id);
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      addr168:
                                                      if(_loc3_ || this)
                                                      {
                                                         addr175:
                                                         if(!(_loc3_ || i))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc3_ || i)
                                                               {
                                                                  addr213:
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                     §§goto(addr168);
                                                                  }
                                                                  addr213:
                                                               }
                                                               §§goto(addr213);
                                                               §§goto(addr175);
                                                            }
                                                            addr204:
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr150:
                                                            return (data[i] as §"o§).rank;
                                                            addr195:
                                                            addr194:
                                                         }
                                                         else
                                                         {
                                                            addr112:
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§goto(addr150);
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                                §§goto(addr195);
                                             }
                                          }
                                       }
                                       addr122:
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr112);
               }
               §§goto(addr91);
            }
            while(true)
            {
               §§goto(addr204);
            }
         }
         return §§pop();
      }
      
      public function §-=§(rank:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && this))
         {
            loop0:
            while(true)
            {
               addr36:
               while(true)
               {
                  continue loop0;
               }
            }
            addr40:
         }
         while(true)
         {
            if(!_loc3_)
            {
               continue;
            }
            if(_loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr40);
            }
            §§goto(addr36);
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop3:
         while(true)
         {
            for(§§push(i); §§pop() >= data.length; )
            {
               if(_loc3_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr98:
                        if(!(_loc4_ && i))
                        {
                           §§push(0);
                           if(_loc4_ && i)
                           {
                              continue;
                           }
                           if(_loc3_ || this)
                           {
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                              }
                              addr114:
                           }
                           loop6:
                           while(true)
                           {
                              i = §§pop();
                              addr116:
                              while(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 addr194:
                                 loop7:
                                 do
                                 {
                                    §§push((data[i] as UserLevelScoreVO).rank == 2);
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                break loop7;
                                             }
                                             continue loop7;
                                          }
                                          addr188:
                                       }
                                    }
                                 }
                                 while(!(_loc3_ || _loc3_));
                                 
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr157:
                                       break loop6;
                                    }
                                    addr107:
                                    while(true)
                                    {
                                       §§push(i);
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          addr130:
                                          §§push(§§pop() + 1);
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr130);
                           §§push((data[i] as UserLevelScoreVO).levelScore);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr116);
               }
               §§goto(addr98);
            }
            §§push(data[i] is InviteVO);
            if(!(_loc4_ && i))
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  addr187:
                  §§goto(addr188);
                  §§push(Boolean(§§pop()));
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr194);
               }
            }
            §§goto(addr187);
         }
         return §§pop();
      }
      
      public function §in §(comparedToScore:Number) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && returnUser)
         {
         }
         if(!_loc5_)
         {
         }
         while(true)
         {
            loop1:
            while(!_loc4_)
            {
               loop2:
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     while(!data)
                     {
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(_loc5_)
                           {
                              return §§pop();
                           }
                           break loop2;
                        }
                        if(_loc5_)
                        {
                           continue loop2;
                        }
                     }
                     addr67:
                     break loop2;
                  }
                  continue loop1;
               }
               var returnUser:Object = §§pop();
               if(_loc4_ && comparedToScore)
               {
               }
               §§push(0);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var i:* = §§pop();
               loop5:
               while(true)
               {
                  §§push(i);
                  loop6:
                  while(true)
                  {
                     if(§§pop() >= data.length)
                     {
                        if(_loc5_)
                        {
                           addr308:
                        }
                        §§goto(addr309);
                     }
                     loop7:
                     while(true)
                     {
                        §§push((data[i] as UserLevelScoreVO).userId == this.§^Q§);
                        loop8:
                        while(true)
                        {
                           §§push(!§§pop());
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop11:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          addr213:
                                          loop14:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc5_ || comparedToScore))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(this.§^Q§));
                                                                  addr156:
                                                                  addr247:
                                                                  while(!(_loc4_ && i))
                                                                  {
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop7;
                                                                  }
                                                                  addr141:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr308);
                                                         addr220:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         addr179:
                                                         if(§§pop())
                                                         {
                                                            continue loop14;
                                                         }
                                                         loop24:
                                                         while(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc4_ && i))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        returnUser = data[i];
                                                                        if(_loc5_ || comparedToScore)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                                  addr309:
                                                                  return returnUser;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push((data[i] as UserLevelScoreVO).levelScore);
                                                                  if(_loc5_ || comparedToScore)
                                                                  {
                                                                     §§push(§§pop() > comparedToScore);
                                                                     if(_loc5_ || returnUser)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr121:
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               addr195:
                                                               §§goto(addr156);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§push(i);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(int(§§pop()));
                                                            if(_loc4_)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         i = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       addr212:
                                    }
                                    §§goto(addr247);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr308);
                  }
               }
            }
         }
      }
      
      public function §6!i§() : UserLevelScoreVO
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(_loc4_)
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
                        §§push(!data);
                        addr82:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr83:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr88:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr50:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc4_ || i))
                                          {
                                             continue loop0;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(false)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       addr106:
                                       §§push(this.§`!8§(this.§^Q§));
                                       if(_loc4_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var rank:* = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr205:
                                          if(rank != 1)
                                          {
                                             addr163:
                                             §§push(rank);
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(-1);
                                                   if(_loc4_ || i)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         addr178:
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr186:
                                                            if(_loc4_ || this)
                                                            {
                                                               addr149:
                                                               §§push(int(data.length + 1));
                                                               if(_loc4_)
                                                               {
                                                                  rank = §§pop();
                                                                  addr159:
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr149);
                                                                                 }
                                                                                 addr206:
                                                                                 §§push(0);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr210:
                                                                                    var i:int = §§pop();
                                                                                    addr217:
                                                                                    §§push(i);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || rank)
                                                                                       {
                                                                                          if(§§pop() >= data.length)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!(_loc3_ && i))
                                                                                                {
                                                                                                   addr242:
                                                                                                   if(_loc4_ || i)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if((data[i] as UserLevelScoreVO).rank != rank - 1)
                                                                                                         {
                                                                                                            addr253:
                                                                                                            §§push(i);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr259:
                                                                                                               i = §§pop() + 1;
                                                                                                               addr260:
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr217);
                                                                                                               }
                                                                                                               addr258:
                                                                                                            }
                                                                                                            §§goto(addr258);
                                                                                                         }
                                                                                                         return data[i];
                                                                                                         addr301:
                                                                                                         addr305:
                                                                                                      }
                                                                                                      return null;
                                                                                                   }
                                                                                                   §§goto(addr260);
                                                                                                }
                                                                                                if(_loc4_ || rank)
                                                                                                {
                                                                                                   §§goto(addr253);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr242);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr260);
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                    addr209:
                                                                                 }
                                                                                 §§goto(addr210);
                                                                              }
                                                                              §§goto(addr205);
                                                                           }
                                                                           §§goto(addr178);
                                                                        }
                                                                        §§goto(addr186);
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                                  return null;
                                                                  addr203:
                                                                  addr202:
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr209);
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                 }
                                 addr49:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUrlLoaderComplete(e:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_ || onUrlLoaderComplete$0)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc4_)
               {
               }
               if(_loc5_)
               {
                  break;
               }
               if(true)
               {
                  try
                  {
                     super.onUrlLoaderComplete(e);
                     if(_loc5_)
                     {
                     }
                  }
                  catch(err:Error)
                  {
                     if(_loc5_ && onUrlLoaderComplete$0)
                     {
                     }
                     throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§1!E§.§`z§);
                  }
                  return;
               }
            }
         }
      }
      
      public function §6,§(score:int, stars:int, eagle:int, out_usersBeaten:Array) : int
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc11_)
         {
         }
         var opponent:UserLevelScoreVO = null;
         if(_loc10_)
         {
         }
         loop0:
         while(true)
         {
            addr67:
            while(true)
            {
               continue loop0;
            }
         }
      }
   }
}
