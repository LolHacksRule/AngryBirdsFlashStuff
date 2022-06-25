package §#r§
{
   import §'N§.Log;
   import §2S§.§<!U§;
   import §<!=§.FriendListItemVO;
   import §<!=§.InviteVO;
   import §<!=§.UserLevelScoreVO;
   import §<!=§.UserTotalScoreVO;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends §1M§
   {
      
      public static var sUserId:String;
      
      public static var isShowingLevelScores:Boolean = false;
      
      public static var sPools:Dictionary;
      
      {
         var sUserId:Boolean = false;
         var isShowingLevelScores:Boolean = true;
         if(sUserId && FriendItemRenderer)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               isShowingLevelScores = false;
               while(true)
               {
                  while(isShowingLevelScores)
                  {
                     if(isShowingLevelScores)
                     {
                        if(!sUserId)
                        {
                           sPools = new Dictionary();
                           if(isShowingLevelScores || sUserId)
                           {
                              return;
                           }
                           continue;
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
      
      private var §4$§:Loader;
      
      private var §]Z§:BasePlate;
      
      public function FriendItemRenderer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               super();
               addr64:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr71:
            }
         }
         while(true)
         {
            while(_loc2_ || this)
            {
               this.init();
               while(!_loc2_)
               {
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr71);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         while(true)
         {
            addEventListener(MouseEvent.CLICK,this.§6!h§);
            while(!_loc2_)
            {
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      private function §3=§(type:Class) : BasePlate
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
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(sPools[type])
                     {
                        break;
                        addr82:
                     }
                     if(_loc3_ || _loc3_)
                     {
                     }
                     while(_loc3_)
                     {
                     }
                     continue loop0;
                     loop6:
                     while(!(_loc4_ && this))
                     {
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           if(true)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§goto(addr82);
                        }
                        while(true)
                        {
                           sPools[type] = [];
                           continue loop6;
                        }
                     }
                  }
                  var pool:Array = sPools[type];
                  if(_loc3_ || _loc3_)
                  {
                  }
                  addr148:
                  if(pool.length == 0)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr148);
                        }
                     }
                     return new type();
                  }
                  return pool.pop();
               }
            }
         }
         while(true)
         {
            §§goto(addr43);
         }
      }
      
      private function §0!U§(plate:BasePlate) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  continue loop0;
               }
            }
            addr51:
         }
         while(true)
         {
            if(!(_loc4_ || type))
            {
               continue;
            }
            if(_loc4_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr51);
            }
            §§goto(addr47);
         }
         var type:Class = Object(this.§]Z§).constructor;
         if(!(_loc3_ && this))
         {
            loop3:
            while(true)
            {
               if(!sPools[type])
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(!_loc3_)
                     {
                        sPools[type] = [];
                        while(_loc4_)
                        {
                           while(true)
                           {
                              addr123:
                              while(true)
                              {
                              }
                           }
                           while(!(_loc3_ && _loc3_))
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_ || type)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr123);
                                 }
                                 return;
                                 addr94:
                              }
                           }
                        }
                        continue loop4;
                     }
                     continue loop3;
                  }
               }
               while(true)
               {
                  sPools[type].push(plate);
                  §§goto(addr103);
                  §§goto(addr123);
               }
               §§goto(addr94);
            }
         }
         §§goto(addr132);
      }
      
      private function §0N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || targetType)
         {
         }
         var targetType:Class = null;
         if(_loc5_ || this)
         {
            while(true)
            {
               loop1:
               while(_loc5_ || currentType)
               {
                  loop2:
                  while(true)
                  {
                     var _loc3_:* = Object(this.friendListItemVO).constructor;
                     if(!_loc4_)
                     {
                        if(_loc5_ || currentType)
                        {
                           if(UserLevelScoreVO === _loc3_)
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(!_loc5_)
                                 {
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 §§goto(addr150);
                              }
                           }
                           else if(InviteVO === _loc3_)
                           {
                              if(!(_loc4_ && targetType))
                              {
                                 addr150:
                                 §§push(1);
                                 if(_loc5_ || _loc3_)
                                 {
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 addr176:
                                 §§push(2);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr179);
                                 }
                              }
                           }
                           else
                           {
                              if(UserTotalScoreVO === _loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr176);
                                 }
                                 else
                                 {
                                    addr182:
                                    §§push(3);
                                    if(_loc4_ && this)
                                    {
                                    }
                                 }
                              }
                              else if(false)
                              {
                                 §§goto(addr182);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              §§goto(addr182);
                           }
                           addr192:
                           switch(§§pop())
                           {
                              case 0:
                                 if(true)
                                 {
                                    targetType = §8!4§;
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr195:
                                          §§push(!targetType);
                                          if(!(_loc4_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ || currentType)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      Log.log("WARNING! Unknown score item found!");
                                                      if(_loc4_ && this)
                                                      {
                                                         break loop2;
                                                      }
                                                      break;
                                                      addr244:
                                                   }
                                                   break loop2;
                                                }
                                                break;
                                             }
                                             §§push(Boolean(this.§]Z§));
                                          }
                                          if(§§pop())
                                          {
                                             break loop2;
                                          }
                                          addr259:
                                          var currentType:Class = null;
                                          if(!(_loc4_ && targetType))
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(targetType != currentType)
                                                {
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§]Z§);
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  this.§0!U§(removeChild(this.§]Z§) as BasePlate);
                                                                  addr343:
                                                                  while(true)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§]Z§ = addChild(this.§3=§(targetType)) as BasePlate;
                                                               while(!_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr282);
                                                                  }
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr282:
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§]Z§);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().data = this.friendListItemVO;
                                                      for(; _loc5_; if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break loop12;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop9;
                                                      })
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      continue;
                                                   }
                                                   continue loop6;
                                                }
                                                return;
                                             }
                                          }
                                          §§goto(addr343);
                                       }
                                       break;
                                    }
                                    break loop2;
                                 }
                                 continue loop1;
                              case 1:
                                 if(_loc5_ || this)
                                 {
                                    targetType = §^<§;
                                    if(_loc5_ || targetType)
                                    {
                                       if(_loc4_)
                                       {
                                          addr96:
                                          targetType = §"!;§;
                                          if(_loc5_ || _loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr244);
                              case 2:
                                 §§goto(addr96);
                              default:
                                 §§goto(addr195);
                           }
                           return;
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr259);
                  §§push(Object(this.§]Z§).constructor);
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §6!h§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.friendListItemVO);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop3:
                           while(§§pop())
                           {
                              loop4:
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §=Y§.scrollerSprite.dispatchEvent(new §<!U§(§<!U§.INVITE_FRIENDS_REQUESTED,data as FriendListItemVO));
                                       while(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   break loop3;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                   addr130:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              §§push(§§pop() is InviteVO);
                              continue loop1;
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue;
                              }
                              §§goto(addr130);
                           }
                           return;
                        }
                     }
                     §§goto(addr130);
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return 61;
      }
      
      override public function set data(value:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super.data = value;
                  while(true)
                  {
                     loop3:
                     while(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           while(true)
                           {
                              this.update();
                              while(_loc2_ && this)
                              {
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            do
            {
               if(data == null)
               {
                  continue;
               }
               this.§0N§();
               while(_loc1_)
               {
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
            }
            while(_loc1_);
            
            §§goto(addr49);
         }
         addr49:
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return data as FriendListItemVO;
      }
   }
}
