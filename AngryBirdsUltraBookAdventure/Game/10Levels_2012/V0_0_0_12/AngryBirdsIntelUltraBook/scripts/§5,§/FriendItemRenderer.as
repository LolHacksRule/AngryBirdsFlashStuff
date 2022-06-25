package §5,§
{
   import §+p§.§&!>§;
   import §6b§.Log;
   import §@!`§.FriendListItemVO;
   import §@!`§.InviteVO;
   import §@!`§.UserLevelScoreVO;
   import §@!`§.UserTotalScoreVO;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends §'J§
   {
      
      public static var sUserId:String;
      
      public static var isShowingLevelScores:Boolean = false;
      
      public static var sPools:Dictionary;
      
      {
         var sUserId:Boolean = false;
         var isShowingLevelScores:Boolean = true;
         if(!sUserId)
         {
            while(true)
            {
               while(isShowingLevelScores || sUserId)
               {
                  isShowingLevelScores = false;
                  loop2:
                  while(isShowingLevelScores || isShowingLevelScores)
                  {
                     while(true)
                     {
                        do
                        {
                           sPools = new Dictionary();
                        }
                        while(sUserId && sUserId);
                        
                        if(isShowingLevelScores || FriendItemRenderer)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      private var §^v§:Loader;
      
      private var §!,§:BasePlate;
      
      public function FriendItemRenderer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super();
            }
            addr76:
         }
         loop1:
         while(true)
         {
            while(!_loc2_)
            {
               this.init();
               while(_loc2_)
               {
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr76);
            }
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         do
         {
            addEventListener(MouseEvent.CLICK,this.§6!`§);
            while(!_loc1_)
            {
            }
         }
         while(_loc2_);
         
      }
      
      private function §36§(type:Class) : BasePlate
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     if(sPools[type])
                     {
                        break;
                     }
                     while(true)
                     {
                        addr77:
                        while(true)
                        {
                           addr38:
                           while(true)
                           {
                              sPools[type] = [];
                              continue loop2;
                           }
                        }
                     }
                  }
                  addr88:
                  var pool:Array = sPools[type];
                  if(!_loc3_)
                  {
                  }
                  if(pool.length == 0)
                  {
                     return new type();
                  }
                  return pool.pop();
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(false)
                              {
                                 §§goto(addr38);
                              }
                              §§goto(addr88);
                           }
                           addr36:
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr44);
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §"&§(plate:BasePlate) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && plate))
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         var type:Class = Object(this.§!,§).constructor;
         if(!(_loc3_ && _loc3_))
         {
            do
            {
               if(!sPools[type])
               {
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        sPools[type] = [];
                        addr149:
                        while(true)
                        {
                           addr135:
                           addr142:
                           while(!(_loc4_ || plate))
                           {
                              continue loop6;
                           }
                        }
                     }
                  }
                  addr157:
               }
               while(true)
               {
                  sPools[type].push(plate);
                  while(!(_loc4_ || _loc3_))
                  {
                  }
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr135);
                  §§goto(addr142);
               }
            }
            while(!(_loc4_ || type));
            
            return;
         }
         §§goto(addr149);
      }
      
      private function §-K§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || targetType)
         {
         }
         var targetType:Class = null;
         if(_loc4_ && _loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc5_)
               {
                  continue loop0;
               }
               var _loc3_:* = Object(this.friendListItemVO).constructor;
               if(_loc5_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(UserLevelScoreVO === _loc3_)
                     {
                        if(!_loc4_)
                        {
                           addr129:
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr185:
                           }
                        }
                        else
                        {
                           addr182:
                           §§push(3);
                           if(_loc5_)
                           {
                              §§goto(addr185);
                           }
                        }
                        addr187:
                        switch(§§pop())
                        {
                           case 0:
                              if(true)
                              {
                                 targetType = § !P§;
                                 if(!(_loc4_ && this))
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       addr190:
                                       §§push(!targetType);
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   Log.log("WARNING! Unknown score item found!");
                                                   addr214:
                                                   if(!(_loc4_ && currentType))
                                                   {
                                                      return;
                                                   }
                                                   break loop1;
                                                   addr229:
                                                }
                                                break loop1;
                                             }
                                             break;
                                          }
                                          addr231:
                                          §§push(Boolean(this.§!,§));
                                       }
                                       if(§§pop())
                                       {
                                          break loop1;
                                       }
                                       addr244:
                                       var currentType:Class = null;
                                       if(_loc5_ || targetType)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             if(targetType != currentType)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§!,§);
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               this.§"&§(removeChild(this.§!,§) as BasePlate);
                                                               addr337:
                                                               while(true)
                                                               {
                                                                  addr325:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr346:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§!,§ = addChild(this.§36§(targetType)) as BasePlate;
                                                            while(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr272);
                                                                     }
                                                                  }
                                                                  addr322:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr346);
                                                               }
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr272:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§!,§);
                                                if(_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                §§pop().data = this.friendListItemVO;
                                                while(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && currentType))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                §§goto(addr325);
                                                continue loop14;
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr322);
                                    }
                                    break;
                                 }
                                 break loop1;
                              }
                              continue;
                           case 1:
                              if(_loc5_ || this)
                              {
                                 targetType = §9!<§;
                                 if(_loc5_)
                                 {
                                    if(_loc4_ && targetType)
                                    {
                                       addr96:
                                       targetType = §'!G§;
                                       if(!_loc5_)
                                       {
                                       }
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr229);
                           case 2:
                              §§goto(addr96);
                           default:
                              §§goto(addr190);
                        }
                        if(false)
                        {
                           §§goto(addr214);
                        }
                        else
                        {
                           §§goto(addr231);
                        }
                     }
                     else
                     {
                        if(InviteVO === _loc3_)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(1);
                              if(_loc4_ && targetType)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr182);
                           }
                        }
                        else if(UserTotalScoreVO === _loc3_)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(2);
                              if(!_loc5_)
                              {
                                 §§goto(addr185);
                              }
                           }
                           else
                           {
                              §§goto(addr182);
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
                        §§goto(addr187);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr129);
               }
               §§goto(addr182);
            }
            §§goto(addr244);
         }
      }
      
      private function §6!`§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(!(_loc3_ && this))
               {
                  §§push(this.friendListItemVO);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr135:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §>!;§.scrollerSprite.dispatchEvent(new §&!>§(§&!>§.INVITE_FRIENDS_REQUESTED,data as FriendListItemVO));
                                    while(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             break loop5;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           return;
                           addr128:
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return 61;
      }
      
      override public function set data(value:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            do
            {
               super.data = value;
               do
               {
                  continue loop0;
               }
               while(_loc3_);
               
            }
            while(!_loc2_);
            
            return;
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
         do
         {
            if(data == null)
            {
               if(_loc2_)
               {
                  §§goto(addr34);
               }
            }
            else
            {
               this.§-K§();
            }
            while(!_loc2_)
            {
            }
         }
         while(!_loc2_);
         
         addr34:
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return data as FriendListItemVO;
      }
   }
}
