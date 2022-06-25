package §6v§
{
   import §#_§.CustomAvatarCache;
   import §5!]§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ProfilePicture extends MovieClip
   {
      
      public static var sInstances:Array;
      
      private static var sUserAvatarString:String;
      
      public static const AVATAR_ENABLED:Boolean = false;
      
      private static var sCachedProfilePictures:Object;
      
      {
         var sInstances:Boolean = false;
         var sUserAvatarString:Boolean = true;
         if(!(sInstances && sInstances))
         {
            loop0:
            while(true)
            {
               sInstances = [];
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(!sInstances)
                     {
                        continue loop0;
                        while(sUserAvatarString || sInstances)
                        {
                           do
                           {
                              sCachedProfilePictures = {};
                           }
                           while(sInstances);
                           
                           if(sUserAvatarString || ProfilePicture)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            AVATAR_ENABLED = false;
            §§goto(addr77);
         }
         §§goto(addr59);
      }
      
      protected var §^w§:Sprite;
      
      protected var §[U§:Sprite;
      
      protected var §^o§:Boolean;
      
      protected var §>!U§:Sprite;
      
      protected var §`I§:String;
      
      protected var §'I§:String;
      
      protected var §+!?§:Boolean = false;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && useHttps)
         {
         }
         if(_loc5_)
         {
            while(true)
            {
               while(!(_loc6_ && this))
               {
                  loop2:
                  while(_loc5_ || avatarString)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 this.initProfile(userId,avatarString,useHttps,imageSize);
                                 loop7:
                                 while(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             return;
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public static function § !"§(newAvatarString:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         var profilePicture:ProfilePicture = null;
         if(_loc7_ || newAvatarString)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc7_)
                  {
                  }
                  if(_loc6_ && newAvatarString)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  var i:* = §§pop();
                  if(!_loc7_)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     sUserAvatarString = newAvatarString;
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(newAvatarString != null)
                           {
                              loop8:
                              while(_loc7_)
                              {
                                 while(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(true)
                                             {
                                                var _loc4_:int = 0;
                                                var _loc5_:* = sInstances;
                                                addr179:
                                                for each(profilePicture in _loc5_)
                                                {
                                                   if(!(_loc6_ && profilePicture))
                                                   {
                                                      profilePicture.update(FriendItemRenderer.sUserId,newAvatarString);
                                                      addr127:
                                                      trace("instances:",i++,sInstances.length);
                                                      addr167:
                                                      addr178:
                                                      if(_loc7_ || i)
                                                      {
                                                         if(_loc7_ || newAvatarString)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr125:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr127);
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr127);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      addr176:
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr125);
                                                }
                                             }
                                             continue loop7;
                                             if(_loc7_ || i)
                                             {
                                                break loop7;
                                             }
                                             break loop7;
                                          }
                                          continue loop5;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop6;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || useHttps)
         {
         }
         if(_loc7_)
         {
            if(_loc7_)
            {
               if(_loc7_)
               {
                  if(_loc7_ || avatarString)
                  {
                     loop0:
                     while(_loc7_ || this)
                     {
                        if(!(_loc6_ && userId))
                        {
                           if(false)
                           {
                              continue;
                           }
                           §§push(this);
                           if(!(_loc6_ && this))
                           {
                              §§push(imageSize);
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && useHttps))
                                          {
                                             §§pop();
                                             addr96:
                                             §§push(§5!D§.SQUARE);
                                             if(_loc7_ || userId)
                                             {
                                                addr106:
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                }
                                                addr129:
                                                §§pop().§'I§ = §§pop();
                                                if(_loc7_)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      this.§`I§ = userId;
                                                      loop2:
                                                      while(true)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            this.§^o§ = FriendItemRenderer.sUserId == userId;
                                                            loop4:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§>!U§ = new Sprite();
                                                                  loop6:
                                                                  for(; _loc7_ || this; while(true)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     continue loop6;
                                                                  })
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§>!U§.graphics.beginFill(0,0);
                                                                        while(_loc7_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr315:
                                                                              while(true)
                                                                              {
                                                                                 this.§>!U§.graphics.drawRect(0,0,50,50);
                                                                                 addr312:
                                                                                 addr298:
                                                                                 while(true)
                                                                                 {
                                                                                    addr301:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§>!U§.graphics.endFill();
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                           }
                                                                           addr166:
                                                                           if(!(_loc7_ || useHttps))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr183:
                                                                           if(_loc7_ || userId)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || userId)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr242:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr248:
                                                                                                   while(_loc7_)
                                                                                                   {
                                                                                                      if(!this.§^o§)
                                                                                                      {
                                                                                                         §§goto(addr133);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§8i§(userId,avatarString,useHttps);
                                                                                                §§goto(addr258);
                                                                                             }
                                                                                             addr258:
                                                                                             addr263:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr242:
                                                                                       }
                                                                                       while(_loc7_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             sInstances.push(this);
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc6_ && useHttps))
                                                                                          {
                                                                                             continue loop2;
                                                                                             addr237:
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addEventListener(Event.REMOVED_FROM_STAGE,this.§[q§);
                                                                                    addr162:
                                                                                    addr209:
                                                                                    while(!_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr166);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break loop0;
                                                                                          §§goto(addr312);
                                                                                          addr270:
                                                                                       }
                                                                                       §§goto(addr183);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr186);
                                                                                    }
                                                                                 }
                                                                                 addr186:
                                                                                 addr199:
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr248);
                                                                                 }
                                                                                 addr133:
                                                                              }
                                                                              continue loop2;
                                                                              return;
                                                                           }
                                                                           §§goto(addr162);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(!(_loc7_ || avatarString))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                }
                                                §§goto(addr260);
                                             }
                                          }
                                          §§goto(addr129);
                                       }
                                       §§push(§§pop());
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc6_ && avatarString))
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ || useHttps)
                                       {
                                          imageSize = §§pop();
                                          §§push(_loc5_);
                                       }
                                    }
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr242);
                     }
                     while(true)
                     {
                        addChild(this.§>!U§);
                        §§goto(addr270);
                     }
                  }
                  §§goto(addr242);
               }
               §§goto(addr326);
            }
            §§goto(addr199);
         }
         §§goto(addr245);
      }
      
      private function §;!_§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(this.§@[§)
               {
                  if(_loc3_)
                  {
                  }
                  loop2:
                  while(true)
                  {
                     this.§^w§.visible = false;
                     addr86:
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              this.§[U§.visible = true;
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                                 addr73:
                                 if(_loc2_)
                                 {
                                    break loop1;
                                 }
                              }
                              continue loop3;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr86);
      }
      
      private function §'@§(e:MouseEvent) : void
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
               loop1:
               while(this.§@[§)
               {
                  loop2:
                  while(!_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§^w§.visible = true;
                        loop4:
                        while(true)
                        {
                           loop5:
                           for(; !_loc2_; while(!_loc2_)
                           {
                              continue loop3;
                              if(_loc3_)
                              {
                                 continue loop4;
                              }
                           })
                           {
                              while(true)
                              {
                                 this.§[U§.visible = false;
                                 continue loop5;
                              }
                           }
                           continue loop0;
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop2;
                           }
                        }
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr76);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function get userID() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§`I§;
      }
      
      public function get §@[§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.§+!?§;
      }
      
      public function set §@[§(value:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            if(_loc4_)
            {
               loop0:
               while(true)
               {
                  this.§+!?§ = value;
                  if(_loc4_ || value)
                  {
                     while(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(this.§@[§)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 this.mouseEnabled = this.mouseChildren = true;
                                 if(_loc3_ && _loc3_)
                                 {
                                    addr120:
                                    break;
                                 }
                              }
                              §§goto(addr120);
                           }
                           break;
                        }
                        this.mouseEnabled = this.mouseChildren = false;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr120);
                        }
                        break;
                        §§goto(addr120);
                     }
                  }
                  return;
               }
               addr75:
            }
            §§goto(addr120);
         }
         §§goto(addr75);
      }
      
      protected function §1Z§(e:Event) : void
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
               loop1:
               while(sUserAvatarString != null)
               {
                  if(_loc2_)
                  {
                     addr80:
                     while(true)
                     {
                        this.§8i§(this.§`I§,sUserAvatarString);
                        while(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                     addr80:
                  }
                  §§goto(addr80);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      protected function §[q§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(!_loc3_)
            {
            }
         }
      }
      
      public function get §]n§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§^w§;
      }
      
      public function get §0b§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§^o§;
      }
      
      protected function §8i§(userId:String, avatarString:String, useHttps:Boolean = false, addAvatarToDisplayList:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(_loc5_ || avatarString)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(_loc5_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(this.§^w§));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop3;
                              }
                              loop13:
                              while(true)
                              {
                                 §§push(AVATAR_ENABLED);
                                 loop14:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§push(avatarString);
                                             loop17:
                                             while(true)
                                             {
                                                §§push(null);
                                                addr364:
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr370:
                                                                     addr424:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(avatarString);
                                                                        while(true)
                                                                        {
                                                                           §§push("");
                                                                           addr353:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              addr354:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                     }
                                                                     loop7:
                                                                     while(_loc5_)
                                                                     {
                                                                        §§push(Boolean(this.§^w§.parent));
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr410:
                                                                              addr188:
                                                                              while(true)
                                                                              {
                                                                                 this.§^w§.parent.removeChild(this.§^w§);
                                                                                 addr390:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              if(_loc6_ && useHttps)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              loop56:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    this.createAvatar(avatarString,userId,useHttps);
                                                                                    loop51:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          if(!(_loc5_ || useHttps))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          loop54:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(this.§>!U§));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!(_loc6_ && avatarString))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         break loop51;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop51;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      continue loop51;
                                                                                                   }
                                                                                                   loop59:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         loop44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr236:
                                                                                                               if(!(_loc6_ && useHttps))
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           addr253:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ || useHttps))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                             addr273:
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ && avatarString)
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(AVATAR_ENABLED);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc5_ || userId))
                                                                                                                                                      {
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop59;
                                                                                                                                                      }
                                                                                                                                                      addr226:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr185:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      this.createFacebookProfile(userId,useHttps);
                                                                                                                                                      addr359:
                                                                                                                                                      loop49:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || avatarString)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop54;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop56;
                                                                                                                                                                  addr84:
                                                                                                                                                                  if(_loc5_ || userId)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        addr93:
                                                                                                                                                                        if(!(_loc6_ && useHttps))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop49;
                                                                                                                                                                        }
                                                                                                                                                                        addr82:
                                                                                                                                                                        while(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr84);
                                                                                                                                                                           §§goto(addr93);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop51;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop7;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr381);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(CustomAvatarCache.§9!B§(userId));
                                                                                                                                                                  loop32:
                                                                                                                                                                  for(; _loc5_; if(_loc5_ || useHttps)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop17;
                                                                                                                                                                  })
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     loop33:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        avatarString = §§pop();
                                                                                                                                                                        loop34:
                                                                                                                                                                        while(_loc5_ || avatarString)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr281:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(avatarString);
                                                                                                                                                                                 while(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(avatarString);
                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                    if(_loc6_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(null);
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr226);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                              addr48:
                                                                                                                                                                              if(_loc6_ && useHttps)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc6_ && useHttps)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop34;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc5_ || useHttps)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop51;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr390);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr370);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr410);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr352);
                                                                                                                                                               }
                                                                                                                                                               addr360:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr381);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr360);
                                                                                                                                                      }
                                                                                                                                                      addr359:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr188);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr359);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop51;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    addr321:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop20;
                                                                                                                                 addr261:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr185);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(_loc5_ || useHttps)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr225);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                              addr313:
                                                                                                                           }
                                                                                                                           §§goto(addr321);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr312:
                                                                                                                        }
                                                                                                                        §§goto(addr313);
                                                                                                                     }
                                                                                                                     §§goto(addr253);
                                                                                                                  }
                                                                                                                  §§goto(addr354);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr311:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr359);
                                                                                                            }
                                                                                                            §§goto(addr281);
                                                                                                            §§goto(addr236);
                                                                                                         }
                                                                                                         addr358:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                             §§goto(addr185);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr358);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push("");
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr353);
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   continue loop14;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr281);
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
         §§goto(addr280);
      }
      
      protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || userId)
         {
         }
         if(_loc7_)
         {
            while(true)
            {
               loop3:
               for(; _loc7_ || userId; if(!(_loc7_ || avatarString))
               {
                  continue;
               },if(false)
               {
                  §§goto(addr53);
               },§§push(this.§'I§),if(_loc7_)
               {
                  §§push(§§pop());
               },var avatarImageSize:* = §§pop(),if(_loc7_)
               {
                  if(overrideImageSize > 0)
                  {
                     addr380:
                     §§push("");
                     if(_loc7_ || this)
                     {
                        §§push(§§pop() + overrideImageSize);
                     }
                     avatarImageSize = §§pop();
                     addr392:
                  }
                  this.§^w§ = new §,!f§(avatarString,avatarImageSize);
                  addr394:
                  addr364:
                  addr372:
                  if(!dontAddChild)
                  {
                     addChild(this.§[U§);
                     addr338:
                     addr350:
                     addr351:
                     if(_loc7_ || avatarString)
                     {
                        addr323:
                        this.§[U§.visible = false;
                        addr315:
                        addr328:
                        if(_loc7_ || useHttps)
                        {
                           this.§>!U§.addEventListener(MouseEvent.MOUSE_OVER,this.§;!_§);
                           addr310:
                           if(_loc7_)
                           {
                              addr288:
                              if(!(_loc8_ && avatarString))
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       this.§>!U§.addEventListener(MouseEvent.MOUSE_OUT,this.§'@§);
                                       addr278:
                                       if(_loc7_ || avatarString)
                                       {
                                          addr251:
                                          if(!(_loc8_ && avatarString))
                                          {
                                             if(_loc7_)
                                             {
                                                if(!(_loc8_ && avatarString))
                                                {
                                                   addr230:
                                                   §§push(Boolean(this.§^w§));
                                                   §§push(Boolean(this.§^w§));
                                                   if(_loc7_ || useHttps)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr240:
                                                      §§pop();
                                                      addr241:
                                                      if(_loc7_ || useHttps)
                                                      {
                                                         §§push(dontAddChild);
                                                         if(_loc7_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!(_loc8_ && userId))
                                                            {
                                                               if(_loc7_ || useHttps)
                                                               {
                                                                  if(_loc7_ || userId)
                                                                  {
                                                                     if(_loc7_ || userId)
                                                                     {
                                                                        addr202:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc7_ || avatarString)
                                                                        {
                                                                           addr209:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr216:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc7_ || useHttps)
                                                                                       {
                                                                                          addChild(this.§^w§);
                                                                                          addr153:
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr380);
                                                                                                      }
                                                                                                      addr134:
                                                                                                      return;
                                                                                                      addr146:
                                                                                                   }
                                                                                                   §§goto(addr216);
                                                                                                }
                                                                                                §§goto(addr153);
                                                                                             }
                                                                                             §§goto(addr394);
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 §§goto(addr251);
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           §§goto(addr134);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                  }
                                                                  §§goto(addr394);
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr350);
                                          }
                                          §§goto(addr328);
                                       }
                                       §§goto(addr288);
                                    }
                                    §§goto(addr364);
                                 }
                                 §§goto(addr351);
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr372);
                        }
                        addr331:
                        §§goto(addr331);
                     }
                     §§goto(addr392);
                  }
                  §§goto(addr323);
               },§§goto(addr146))
               {
                  loop4:
                  while(true)
                  {
                     addr96:
                     addr122:
                     while(_loc7_ || avatarString)
                     {
                        continue loop4;
                     }
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           continue loop3;
                           loop8:
                           while(_loc7_ || avatarString)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§[U§ = this.§`o§(userId,this.§'I§,useHttps);
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       if(!(_loc8_ && useHttps))
                                       {
                                          addr37:
                                          if(!(_loc8_ && avatarString))
                                          {
                                             continue loop9;
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    continue loop8;
                                 }
                                 addr81:
                                 while(_loc7_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && this)
         {
         }
         if(!_loc5_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     this.§@[§ = false;
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(_loc5_)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           this.§^w§ = this.§`o§(userId,this.§'I§,useHttps);
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(Boolean(this.§^w§));
                                 addr136:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop6;
                                          addr110:
                                          if(_loc4_ && useHttps)
                                          {
                                             continue;
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             loop12:
                                             while(!(_loc4_ && dontAddChild))
                                             {
                                                addChild(this.§^w§);
                                                while(!_loc4_)
                                                {
                                                   continue loop3;
                                                   if(!(_loc4_ && userId))
                                                   {
                                                      if(!(_loc4_ && useHttps))
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop12;
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          return;
                                          addr117:
                                       }
                                       addr141:
                                    }
                                    else
                                    {
                                       §§goto(addr117);
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc4_ && useHttps)
               {
                  continue;
               }
               §§goto(addr79);
            }
         }
      }
      
      private function §`o§(userId:String, imageSize:String, useHttps:Boolean = false) : §5!D§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && userId)
         {
         }
         var facebookPicture:§5!D§ = null;
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
                     while(_loc5_)
                     {
                        continue loop0;
                        addr97:
                        if(!(_loc5_ || userId))
                        {
                           continue;
                        }
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 if(sCachedProfilePictures[userId + imageSize].length <= 0)
                                 {
                                    facebookPicture = new §5!D§(userId,useHttps,imageSize);
                                    if(!(_loc6_ && useHttps))
                                    {
                                       break;
                                    }
                                    break;
                                 }
                                 if(!(_loc6_ && userId))
                                 {
                                    if(!(_loc6_ && userId))
                                    {
                                       addr56:
                                       if(!(_loc5_ || useHttps))
                                       {
                                          continue;
                                       }
                                       addr63:
                                       if(!(_loc6_ && imageSize))
                                       {
                                          if(true)
                                          {
                                             facebookPicture = sCachedProfilePictures[userId + imageSize].pop();
                                             break;
                                          }
                                          continue loop9;
                                       }
                                       addr120:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr97);
                                          }
                                          addr114:
                                          while(true)
                                          {
                                          }
                                          §§goto(addr63);
                                       }
                                       while(true)
                                       {
                                          if(sCachedProfilePictures[userId + imageSize])
                                          {
                                             continue loop11;
                                          }
                                          §§goto(addr114);
                                       }
                                       addr93:
                                    }
                                    while(!_loc6_)
                                    {
                                       sCachedProfilePictures[userId + imageSize] = [];
                                       §§goto(addr93);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr56);
                              }
                              return facebookPicture;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr120);
         }
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               while(_loc3_)
               {
                  while(_loc3_)
                  {
                     this.§8i§(userId,newAvatarString,false);
                     while(_loc4_)
                     {
                     }
                     if(_loc3_)
                     {
                        return;
                        addr58:
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            loop0:
            while(true)
            {
               §§push(Boolean(this.§^w§));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§^w§ is §5!D§);
                           addr384:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr298:
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    addr309:
                                    while(_loc1_ || _loc1_)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(this.§^w§.parent == this)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                addr286:
                                                while(true)
                                                {
                                                   removeChild(this.§^w§);
                                                   addr278:
                                                   while(true)
                                                   {
                                                      continue loop21;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§^w§ = null;
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr388);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr343);
                                       §§goto(addr309);
                                    }
                                    addr240:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§goto(addr222);
                                       }
                                       §§goto(addr210);
                                    }
                                 }
                              }
                              §§goto(addr218);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr386);
                     §§goto(addr384);
                  }
               }
            }
         }
         §§goto(addr237);
      }
   }
}
