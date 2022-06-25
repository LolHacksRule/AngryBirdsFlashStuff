package §5!]§
{
   import §"!i§.FriendListItemVO;
   import §"!i§.InviteVO;
   import §"!i§.UserLevelScoreVO;
   import §"!i§.UserTotalScoreVO;
   import §<u§.Log;
   import §=!i§.§>Z§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends §`4§
   {
      
      public static var sUserId:String;
      
      public static var isShowingLevelScores:Boolean = false;
      
      public static var sPools:Dictionary;
      
      {
         var sUserId:Boolean = true;
         var isShowingLevelScores:Boolean = false;
         if(sUserId || sUserId)
         {
            while(true)
            {
               addr65:
               if(sUserId || FriendItemRenderer)
               {
                  sPools = new Dictionary();
                  addr72:
                  if(!(sUserId || isShowingLevelScores))
                  {
                     while(sUserId)
                     {
                        §§goto(addr65);
                        §§goto(addr72);
                     }
                     while(sUserId || isShowingLevelScores)
                     {
                        §§goto(addr63);
                     }
                     addr63:
                     while(true)
                     {
                        isShowingLevelScores = false;
                        §§goto(addr77);
                     }
                     addr77:
                     addr87:
                  }
                  return;
               }
            }
         }
         §§goto(addr87);
      }
      
      private var §2M§:Loader;
      
      private var §7F§:BasePlate;
      
      public function FriendItemRenderer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         do
         {
            super();
            while(true)
            {
               while(!(_loc2_ && this))
               {
                  this.init();
                  while(!_loc2_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc2_ && this);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               addEventListener(MouseEvent.CLICK,this.§`^§);
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            if(_loc1_ || this)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §3,§(type:Class) : BasePlate
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               addr86:
               while(true)
               {
               }
            }
            addr88:
         }
         loop2:
         while(true)
         {
            if(!sPools[type])
            {
               loop3:
               while(true)
               {
                  if(_loc4_)
                  {
                     loop4:
                     while(true)
                     {
                        addr49:
                        addr89:
                        while(true)
                        {
                           sPools[type] = [];
                           for(; !_loc3_; if(_loc4_ || pool)
                           {
                              continue loop4;
                           })
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                           }
                           continue loop3;
                        }
                        var pool:Array = sPools[type];
                        if(_loc4_)
                        {
                           if(pool.length == 0)
                           {
                              return new type();
                           }
                        }
                        return pool.pop();
                        if(_loc3_ && pool)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop2;
                        }
                        if(false)
                        {
                           §§goto(addr49);
                        }
                        §§goto(addr89);
                     }
                  }
                  else
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr89);
         }
      }
      
      private function §!F§(plate:BasePlate) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && type)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr39);
         }
         var type:Class = Object(this.§7F§).constructor;
         if(!_loc4_)
         {
            loop4:
            while(true)
            {
               if(!sPools[type])
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        sPools[type] = [];
                        addr121:
                        while(_loc3_ || this)
                        {
                           while(!_loc4_)
                           {
                              if(!(_loc4_ && plate))
                              {
                                 return;
                                 addr86:
                              }
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               while(true)
               {
                  sPools[type].push(plate);
                  while(_loc3_)
                  {
                     continue loop4;
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §<G§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         var targetType:Class = null;
         if(_loc4_)
         {
            while(true)
            {
               addr32:
               while(!_loc5_)
               {
               }
            }
         }
         loop2:
         while(true)
         {
            var _loc3_:* = Object(this.friendListItemVO).constructor;
            if(_loc4_ || currentType)
            {
               if(!(_loc5_ && currentType))
               {
                  if(UserLevelScoreVO === _loc3_)
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ || this)
                        {
                           addr176:
                           switch(§§pop())
                           {
                              case 0:
                                 if(true)
                                 {
                                    targetType = §`!b§;
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                       }
                                       break;
                                    }
                                    break loop2;
                                 }
                                 §§goto(addr32);
                                 break;
                              case 1:
                                 if(_loc4_)
                                 {
                                    targetType = §1H§;
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    addr65:
                                    targetType = §&L§;
                                    if(_loc5_)
                                    {
                                    }
                                    break loop2;
                                 }
                                 return;
                                 addr217:
                              case 2:
                                 §§goto(addr65);
                           }
                           if(!(_loc5_ && currentType))
                           {
                              Log.log("WARNING! Unknown score item found!");
                           }
                           §§goto(addr217);
                        }
                     }
                     else
                     {
                        addr124:
                        §§push(1);
                        if(_loc4_ || this)
                        {
                        }
                     }
                     §§goto(addr176);
                  }
                  else
                  {
                     if(InviteVO === _loc3_)
                     {
                        if(_loc4_ || this)
                        {
                           §§goto(addr124);
                        }
                     }
                     else if(UserTotalScoreVO === _loc3_)
                     {
                        if(!(_loc5_ && this))
                        {
                           addr145:
                           §§push(2);
                           if(_loc5_ && _loc3_)
                           {
                           }
                        }
                     }
                     else if(true)
                     {
                        §§goto(addr176);
                        §§push(3);
                     }
                     §§goto(addr176);
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr176);
               }
               §§goto(addr124);
            }
            §§goto(addr145);
         }
         §§push(!targetType);
         if(_loc4_ || this)
         {
            if(§§pop())
            {
               if(_loc4_ || this)
               {
                  §§goto(addr176);
               }
               §§goto(addr217);
            }
            else
            {
               §§push(Boolean(this.§7F§));
            }
         }
         var currentType:Class = !!§§pop() ? Object(this.§7F§).constructor : null;
         if(_loc4_ || _loc3_)
         {
            loop3:
            while(true)
            {
               if(targetType != currentType)
               {
                  loop4:
                  while(true)
                  {
                     addr361:
                     loop14:
                     while(true)
                     {
                        §§push(this.§7F§);
                        loop13:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop11:
                              while(true)
                              {
                                 this.§7F§ = addChild(this.§3,§(targetType)) as BasePlate;
                                 loop12:
                                 for(; !_loc5_; continue loop11)
                                 {
                                    addr295:
                                    if(_loc5_ && this)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_ || targetType)
                                          {
                                             break loop11;
                                          }
                                          break;
                                          §§goto(addr295);
                                       }
                                       continue loop3;
                                       addr334:
                                    }
                                    if(!(_loc4_ || this))
                                    {
                                       continue loop14;
                                    }
                                    addr281:
                                    while(true)
                                    {
                                       §§push(this.§7F§);
                                       if(!_loc5_)
                                       {
                                          §§pop().data = this.friendListItemVO;
                                          for(; !_loc5_; if(!_loc5_)
                                          {
                                             return;
                                          })
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop12;
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             addr347:
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop13;
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr282);
                              }
                              addr282:
                           }
                           §§goto(addr347);
                        }
                     }
                  }
               }
               §§goto(addr257);
            }
         }
         §§goto(addr361);
      }
      
      private function §`^§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || e)
         {
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
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr92:
                              §§push(§§pop() is InviteVO);
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              loop6:
                              while(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    addr115:
                                    addr48:
                                    while(true)
                                    {
                                       §4!c§.scrollerSprite.dispatchEvent(new §>Z§(§>Z§.INVITE_FRIENDS_REQUESTED,data as FriendListItemVO));
                                       continue loop7;
                                    }
                                    if(_loc2_)
                                    {
                                       break loop6;
                                    }
                                    continue loop1;
                                 }
                              }
                              return;
                              addr112:
                           }
                        }
                        else
                        {
                           §§goto(addr112);
                        }
                        §§goto(addr126);
                     }
                     addr128:
                     while(true)
                     {
                        §§push(this.friendListItemVO);
                        if(_loc3_)
                        {
                           continue loop2;
                        }
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return 61;
      }
      
      override public function set data(value:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  super.data = value;
                  while(true)
                  {
                     addr68:
                     while(!_loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            addr87:
         }
         loop4:
         while(true)
         {
            this.update();
            while(!_loc3_)
            {
               if(!_loc2_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break loop4;
               }
               §§goto(addr87);
            }
            §§goto(addr68);
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         loop0:
         while(true)
         {
            if(data == null)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§<G§();
            }
            while(_loc2_ || this)
            {
               if(_loc2_ || _loc2_)
               {
                  break loop0;
               }
            }
         }
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return data as FriendListItemVO;
      }
   }
}
