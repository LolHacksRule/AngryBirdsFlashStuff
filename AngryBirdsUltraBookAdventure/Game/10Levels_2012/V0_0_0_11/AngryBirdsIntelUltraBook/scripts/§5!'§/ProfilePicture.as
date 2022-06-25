package §5!'§
{
   import §5,§.FriendItemRenderer;
   import §9R§.CustomAvatarCache;
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
         if(!(sInstances && sUserAvatarString))
         {
            loop0:
            while(true)
            {
               sInstances = [];
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        AVATAR_ENABLED = false;
                        loop4:
                        while(!(sInstances && ProfilePicture))
                        {
                           loop5:
                           while(!sInstances)
                           {
                              if(sUserAvatarString)
                              {
                                 while(true)
                                 {
                                    sCachedProfilePictures = {};
                                    if(!(sInstances && sUserAvatarString))
                                    {
                                       if(sUserAvatarString)
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 return;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      protected var §5!^§:Sprite;
      
      protected var §&0§:Sprite;
      
      protected var §@!T§:Boolean;
      
      protected var §8e§:Sprite;
      
      protected var §^+§:String;
      
      protected var § S§:String;
      
      protected var §'x§:Boolean = false;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && userId))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     addr49:
                     if(_loc6_ || avatarString)
                     {
                        return;
                        addr66:
                     }
                  }
                  addr87:
                  if(!(_loc6_ || useHttps))
                  {
                     continue;
                  }
                  this.initProfile(userId,avatarString,useHttps,imageSize);
                  loop7:
                  while(!(_loc5_ && userId))
                  {
                     if(!(_loc6_ || userId))
                     {
                        continue;
                     }
                     addr42:
                     if(!(_loc5_ && avatarString))
                     {
                        §§goto(addr49);
                     }
                     else
                     {
                        while(_loc6_)
                        {
                           §§goto(addr87);
                           §§goto(addr42);
                        }
                        while(!(_loc5_ && this))
                        {
                           super();
                           break loop7;
                        }
                        continue loop0;
                        addr85:
                        addr111:
                     }
                  }
                  while(true)
                  {
                     §§goto(addr85);
                     §§goto(addr75);
                  }
                  addr75:
                  §§goto(addr66);
               }
            }
         }
         §§goto(addr108);
      }
      
      public static function §#k§(newAvatarString:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var profilePicture:ProfilePicture = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_)
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
            §§goto(addr32);
         }
         §§push(0);
         if(_loc6_ || i)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         if(!_loc7_)
         {
            while(true)
            {
               sUserAvatarString = newAvatarString;
               addr69:
               if(!(_loc6_ || newAvatarString))
               {
                  continue;
               }
               addr76:
               if(!_loc7_)
               {
                  if(false)
                  {
                     loop7:
                     while(newAvatarString != null)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              addr67:
                              while(!_loc7_)
                              {
                                 §§goto(addr69);
                                 §§goto(addr76);
                              }
                              addr67:
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr94:
                           }
                           while(true)
                           {
                              continue loop7;
                           }
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr190);
                  }
                  var _loc4_:int = 0;
                  var _loc5_:* = sInstances;
                  addr183:
                  for each(profilePicture in _loc5_)
                  {
                     if(!(_loc7_ && i))
                     {
                        profilePicture.update(FriendItemRenderer.sUserId,newAvatarString);
                        addr147:
                        addr182:
                        if(!(_loc7_ && ProfilePicture))
                        {
                           if(!(_loc7_ && ProfilePicture))
                           {
                              addr124:
                              trace("instances:",i++,sInstances.length);
                              if(!(_loc7_ && profilePicture))
                              {
                                 if(_loc6_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr124);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr124);
                                 addr144:
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr182);
                        }
                        addr180:
                        §§goto(addr180);
                     }
                     §§goto(addr144);
                  }
                  if(!_loc6_)
                  {
                  }
                  addr190:
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr94);
      }
      
      protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!(_loc7_ && avatarString))
         {
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  if(!(_loc7_ && userId))
                  {
                     loop0:
                     while(!(_loc7_ && useHttps))
                     {
                        if(_loc6_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           §§push(this);
                           if(!_loc7_)
                           {
                              §§push(imageSize);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             addr84:
                                             §§pop();
                                             addr85:
                                             §§push(§>Y§.SQUARE);
                                             if(!_loc6_)
                                             {
                                             }
                                             addr98:
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(!_loc7_)
                                             {
                                                addr108:
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   addr105:
                                                   imageSize = §§pop();
                                                   §§push(_loc5_);
                                                }
                                                §§pop().§ S§ = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      this.§^+§ = userId;
                                                      addr391:
                                                      while(true)
                                                      {
                                                         addr386:
                                                         loop8:
                                                         while(true)
                                                         {
                                                            this.§@!T§ = FriendItemRenderer.sUserId == userId;
                                                            addr383:
                                                            while(true)
                                                            {
                                                               addr374:
                                                               while(true)
                                                               {
                                                                  this.§8e§ = new Sprite();
                                                                  break loop0;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr393:
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc7_ && userId)
                                                      {
                                                         break loop0;
                                                      }
                                                      if(!this.§@!T§)
                                                      {
                                                         break;
                                                      }
                                                      loop14:
                                                      while(!(_loc7_ && userId))
                                                      {
                                                         while(true)
                                                         {
                                                            addr273:
                                                            addr280:
                                                            while(_loc7_ && userId)
                                                            {
                                                               §§goto(addr374);
                                                            }
                                                            sInstances.push(this);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && userId))
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!(_loc7_ && userId))
                                                                     {
                                                                        loop18:
                                                                        while(!_loc7_)
                                                                        {
                                                                           continue loop12;
                                                                           addr173:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ && this)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!(_loc7_ && userId))
                                                                              {
                                                                                 if(_loc6_ || userId)
                                                                                 {
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr313:
                                                                                       while(true)
                                                                                       {
                                                                                          addChild(this.§8e§);
                                                                                          addr310:
                                                                                          while(true)
                                                                                          {
                                                                                             addr301:
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                this.§1u§(userId,avatarString,useHttps);
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                       }
                                                                                       addr313:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 addr320:
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              addEventListener(Event.REMOVED_FROM_STAGE,this.§3#§);
                                                                              while(!_loc7_)
                                                                              {
                                                                                 if(_loc7_ && avatarString)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(_loc6_ || userId)
                                                                                 {
                                                                                    if(_loc7_ && avatarString)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr173);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§8e§.graphics.beginFill(0,0);
                                                                     }
                                                                     addr365:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop5:
                                                                     while(_loc6_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§8e§.graphics.drawRect(0,0,50,50);
                                                                           addr336:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§8e§.graphics.endFill();
                                                                                 §§goto(addr320);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                                addr298:
                                             }
                                             §§goto(addr105);
                                          }
                                          §§push(§§pop());
                                          if(_loc6_ || useHttps)
                                          {
                                             §§goto(addr98);
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr313);
                     }
                     while(true)
                     {
                        §§goto(addr365);
                     }
                  }
                  §§goto(addr298);
               }
               §§goto(addr163);
            }
            §§goto(addr343);
         }
         §§goto(addr272);
      }
      
      private function §--§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(this.§0I§)
               {
                  while(true)
                  {
                     continue loop0;
                  }
                  addr63:
                  if(_loc3_ && e)
                  {
                     continue;
                  }
                  addr80:
                  if(_loc2_)
                  {
                     if(!_loc2_)
                     {
                        loop5:
                        while(_loc2_)
                        {
                           this.§&0§.visible = true;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr63);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                                 addr91:
                              }
                              §§goto(addr80);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     if(!_loc3_)
                     {
                        addr55:
                        break;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr61);
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      private function §+!k§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         while(true)
         {
            while(_loc3_ || e)
            {
               if(this.§0I§)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        this.§5!^§.visible = true;
                        loop4:
                        while(true)
                        {
                           addr74:
                           while(!_loc2_)
                           {
                              this.§&0§.visible = false;
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               return;
            }
         }
      }
      
      public function get userID() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return this.§^+§;
      }
      
      public function get §0I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§'x§;
      }
      
      public function set §0I§(value:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && value)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§'x§ = value;
                  loop2:
                  for(; !(_loc3_ && this); loop4:
                  while(true)
                  {
                     if(!(_loc4_ || this))
                     {
                        continue loop2;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(!this.§0I§)
                     {
                        this.mouseEnabled = this.mouseChildren = false;
                        if(!_loc3_)
                        {
                           §§goto(addr130);
                        }
                        break;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        if(!(_loc3_ && value))
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 this.mouseEnabled = this.mouseChildren = true;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    break loop4;
                                 }
                                 addr130:
                                 break loop4;
                              }
                              §§goto(addr62);
                           }
                        }
                        break;
                     }
                     §§goto(addr130);
                  },return)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function §?!0§(e:Event) : void
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
               while(sUserAvatarString != null)
               {
                  loop2:
                  while(!_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§1u§(this.§^+§,sUserAvatarString);
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      protected function §3#§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc3_)
         {
         }
         while(!_loc3_)
         {
         }
      }
      
      public function get §]!?§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§5!^§;
      }
      
      public function get §^%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.§@!T§;
      }
      
      protected function §1u§(userId:String, avatarString:String, useHttps:Boolean = false, addAvatarToDisplayList:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && useHttps)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
            }
            addr478:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               for(; !_loc5_; if(!(_loc6_ || userId))
               {
                  continue;
               },§§goto(addr163))
               {
                  loop4:
                  while(true)
                  {
                     §§push(Boolean(this.§5!^§));
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(Boolean(this.§5!^§.parent));
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          addr455:
                                          while(true)
                                          {
                                             this.§5!^§.parent.removeChild(this.§5!^§);
                                             addr447:
                                             while(true)
                                             {
                                                addr419:
                                                while(!(_loc5_ && userId))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       addr454:
                                    }
                                    addr400:
                                    loop14:
                                    while(!(_loc5_ && avatarString))
                                    {
                                       if(§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             loop16:
                                             while(!(_loc5_ && avatarString))
                                             {
                                                §§push(avatarString);
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop20:
                                                         while(!_loc5_)
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
                                                                     while(!_loc5_)
                                                                     {
                                                                        §§pop();
                                                                        loop24:
                                                                        for(; !_loc5_; if(_loc6_ || this)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(this.§8e§));
                                                                              if(_loc6_ || userId)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          §§goto(addr104);
                                                                                       }
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 §§goto(addr104);
                                                                              }
                                                                              §§goto(addr184);
                                                                              addr163:
                                                                           }
                                                                           addr29:
                                                                        },continue,return)
                                                                        {
                                                                           §§push(avatarString);
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              §§push("");
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc6_ || useHttps)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    addr212:
                                                                                    if(_loc5_ && userId)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop55:
                                                                                    while(true)
                                                                                    {
                                                                                       loop56:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr234:
                                                                                             if(!(_loc5_ && useHttps))
                                                                                             {
                                                                                                if(!(_loc6_ || useHttps))
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop57:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc6_ || userId)
                                                                                                   {
                                                                                                      if(_loc6_ || avatarString)
                                                                                                      {
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr272:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop43:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     loop44:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(AVATAR_ENABLED);
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop57;
                                                                                                                           }
                                                                                                                           if(!(_loc6_ || useHttps))
                                                                                                                           {
                                                                                                                              continue loop56;
                                                                                                                           }
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        addr184:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 this.createFacebookProfile(userId,useHttps);
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop44;
                                                                                                                                       }
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && useHttps))
                                                                                                                                          {
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       while(_loc6_ || avatarString)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             while(_loc6_)
                                                                                                                                             {
                                                                                                                                                while(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(CustomAvatarCache.§#!@§(userId));
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                §§goto(addr419);
                                                                                                                                             }
                                                                                                                                             continue loop16;
                                                                                                                                             addr375:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(avatarString);
                                                                                                                                             while(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push("");
                                                                                                                                                   if(!(_loc5_ && userId))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      break loop44;
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                §§push(avatarString);
                                                                                                                                                continue loop25;
                                                                                                                                                if(!(_loc6_ || useHttps))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(null);
                                                                                                                                                if(_loc5_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop43;
                                                                                                                                                }
                                                                                                                                                §§goto(addr212);
                                                                                                                                             }
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr320);
                                                                                                                                       }
                                                                                                                                       addr320:
                                                                                                                                       §§goto(addr378);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr191:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.createAvatar(avatarString,userId,useHttps);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr190:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       §§goto(addr447);
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                    addr106:
                                                                                                                                    if(_loc6_ || avatarString)
                                                                                                                                    {
                                                                                                                                       setChildIndex(this.§8e§,this.numChildren - 1);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          addr104:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr106);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr116);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr69:
                                                                                                                                          continue loop46;
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr29);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              §§goto(addr190);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        break loop43;
                                                                                                                        §§goto(addr234);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr307:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr308);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr298:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr299:
                                                                                                                     while(_loc6_ || userId)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop55;
                                                                                                                        }
                                                                                                                        §§goto(addr307);
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr275:
                                                                                                            }
                                                                                                            §§goto(addr188);
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   §§goto(addr272);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr454);
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr455);
                                          }
                                       }
                                       §§goto(addr281);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr400);
                        }
                     }
                  }
               }
               §§goto(addr478);
            }
            if(!(_loc6_ || this))
            {
               continue;
            }
            §§goto(addr69);
         }
      }
      
      protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         if(!(_loc8_ && useHttps))
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
                        while(true)
                        {
                           while(true)
                           {
                              addr73:
                              while(!_loc8_)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                              addr34:
                              if(_loc8_ && userId)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§&0§ = this.§!#§(userId,this.§ S§,useHttps);
                                    while(_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          break loop10;
                                       }
                                       §§goto(addr34);
                                    }
                                    addr57:
                                    while(_loc7_)
                                    {
                                       continue loop10;
                                    }
                                    continue loop4;
                                 }
                                 while(_loc7_)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr57);
                                 }
                                 §§goto(addr73);
                                 addr64:
                              }
                              §§push(this.§ S§);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop());
                              }
                              var avatarImageSize:* = §§pop();
                              if(!(_loc8_ && this))
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(overrideImageSize > 0)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push("");
                                          if(_loc7_ || useHttps)
                                          {
                                             §§push(§§pop() + overrideImageSize);
                                          }
                                          avatarImageSize = §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             addr370:
                                             while(true)
                                             {
                                                addr228:
                                                if(!(_loc7_ || this))
                                                {
                                                   continue;
                                                }
                                                addChild(this.§5!^§);
                                                loop36:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr150:
                                                      if(_loc8_ && avatarString)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   loop34:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      addr206:
                                                      if(_loc7_ || avatarString)
                                                      {
                                                         loop35:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr221:
                                                               if(_loc7_ || avatarString)
                                                               {
                                                                  §§goto(addr228);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     break loop35;
                                                                     §§goto(addr221);
                                                                  }
                                                                  addr301:
                                                               }
                                                            }
                                                            break;
                                                            addr127:
                                                            if(!(_loc8_ && useHttps))
                                                            {
                                                               addr134:
                                                               if(_loc7_ || userId)
                                                               {
                                                                  §§goto(addr114);
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(dontAddChild);
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           addr335:
                                                                           addr177:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§&0§.visible = false;
                                                                                    addr310:
                                                                                    while(true)
                                                                                    {
                                                                                       addr304:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8e§.addEventListener(MouseEvent.MOUSE_OVER,this.§--§);
                                                                                          §§goto(addr301);
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                       break loop35;
                                                                                    }
                                                                                 }
                                                                                 addr305:
                                                                              }
                                                                              addr336:
                                                                              while(true)
                                                                              {
                                                                                 addr337:
                                                                                 addr365:
                                                                                 while(_loc7_ || userId)
                                                                                 {
                                                                                    addChild(this.§&0§);
                                                                                 }
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    continue loop18;
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           if(!(_loc8_ && avatarString))
                                                                           {
                                                                              addr195:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc7_ || userId))
                                                                              {
                                                                                 §§goto(addr335);
                                                                              }
                                                                              while(§§pop())
                                                                              {
                                                                                 continue loop34;
                                                                                 §§goto(addr195);
                                                                              }
                                                                           }
                                                                           continue;
                                                                           addr114:
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc7_ || avatarString)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§8e§.addEventListener(MouseEvent.MOUSE_OUT,this.§+!k§);
                                                                  addr273:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || userId)
                                                                     {
                                                                        break loop36;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               addr290:
                                                            }
                                                            break;
                                                            §§goto(addr214);
                                                         }
                                                         addr214:
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(Boolean(this.§5!^§));
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr202);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop14;
                                                         }
                                                         addr247:
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   break;
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr273);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§5!^§ = new § !Q§(avatarString,avatarImageSize);
                                       §§goto(addr365);
                                       §§goto(addr370);
                                    }
                                 }
                              }
                              §§goto(addr290);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0I§ = true;
            §§goto(addr64);
         }
      }
      
      protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || useHttps)
         {
         }
         if(_loc4_ || useHttps)
         {
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
                        this.§0I§ = false;
                        loop4:
                        while(true)
                        {
                           addr178:
                           while(true)
                           {
                              this.§5!^§ = this.§!#§(userId,this.§ S§,useHttps);
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(_loc4_)
                                 {
                                    §§push(Boolean(this.§5!^§));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ || dontAddChild)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(§§pop())
                                          {
                                             loop12:
                                             while(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   while(!_loc5_)
                                                   {
                                                      continue loop3;
                                                      if(!(_loc5_ && useHttps))
                                                      {
                                                         if(_loc4_ || useHttps)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop12;
                                                         continue loop12;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                          return;
                                          addr116:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop2;
                                       }
                                       addr109:
                                       if(!(_loc4_ || this))
                                       {
                                          continue;
                                       }
                                       §§goto(addr116);
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§goto(addr78);
               }
            }
         }
         while(true)
         {
            §§push(dontAddChild);
            if(_loc4_ || userId)
            {
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(!(_loc5_ && dontAddChild))
                  {
                     §§goto(addr109);
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr109);
               }
               §§goto(addr147);
            }
            §§goto(addr109);
         }
      }
      
      private function §!#§(userId:String, imageSize:String, useHttps:Boolean = false) : §>Y§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var facebookPicture:§>Y§ = null;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               addr138:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr102);
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || newAvatarString)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§1u§(userId,newAvatarString,false);
                     loop3:
                     while(!_loc3_)
                     {
                        continue loop1;
                        while(!(_loc4_ || newAvatarString))
                        {
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
               if(_loc3_ && newAvatarString)
               {
                  continue;
               }
               §§goto(addr86);
            }
         }
         §§goto(addr86);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               §§push(Boolean(this.§5!^§));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§5!^§ is §>Y§);
                           if(!_loc1_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                              addr361:
                           }
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(!sCachedProfilePictures[this.§^+§ + this.§ S§]);
                                       loop7:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop8:
                                             while(_loc2_ || _loc2_)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   sCachedProfilePictures[this.§^+§ + this.§ S§] = [];
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      loop24:
                                                      while(!(_loc1_ && _loc1_))
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue loop24;
                                                            }
                                                            addr217:
                                                            if(_loc2_ || this)
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(this.§&0§));
                                                                  addr201:
                                                                  while(!_loc1_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  loop16:
                                                                  while(_loc2_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop26;
                                                                     }
                                                                     loop17:
                                                                     while(!_loc1_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(this.§5!^§.parent != this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§5!^§ = null;
                                                                                 continue loop24;
                                                                              }
                                                                              addr225:
                                                                           }
                                                                           loop35:
                                                                           for(; !(_loc1_ && _loc1_); if(_loc1_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           },if(!_loc1_)
                                                                           {
                                                                              §§goto(addr77);
                                                                           },§§goto(addr141))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(this.§8e§));
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                    loop37:
                                                                                    for(; _loc2_ || _loc2_; if(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       this.§8e§.removeEventListener(MouseEvent.MOUSE_OUT,this.§+!k§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§goto(addr61);
                                                                                          }
                                                                                          §§goto(addr80);
                                                                                          addr77:
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                if(_loc1_ && _loc1_)
                                                                                                {
                                                                                                   break loop25;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                       }
                                                                                       continue loop35;
                                                                                    })
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             loop40:
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                this.§8e§.removeEventListener(MouseEvent.MOUSE_OVER,this.§--§);
                                                                                                while(true)
                                                                                                {
                                                                                                   addr80:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         continue loop37;
                                                                                                      }
                                                                                                      continue loop40;
                                                                                                   }
                                                                                                   continue loop37;
                                                                                                   addr61:
                                                                                                   if(!(_loc1_ && this))
                                                                                                   {
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr148:
                                                                                             loop32:
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                loop33:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§&0§ = null;
                                                                                                   addr141:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      addr211:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr212:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(this.§&0§.parent == this)
                                                                                                            {
                                                                                                               if(!(_loc1_ && this))
                                                                                                               {
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               break loop32;
                                                                                                            }
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                             }
                                                                                             while(_loc2_ || this)
                                                                                             {
                                                                                                addr189:
                                                                                                if(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   removeChild(this.§&0§);
                                                                                                   break loop37;
                                                                                                }
                                                                                                addr262:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr239:
                                                                                                   addr286:
                                                                                                   while(_loc2_ || this)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr271:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr239);
                                                                                                   }
                                                                                                   §§goto(addr189);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                          addr119:
                                                                                       }
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr148);
                                                                                       §§goto(addr110);
                                                                                    }
                                                                                    addr110:
                                                                                 }
                                                                                 §§goto(addr201);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr300:
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                        }
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           addr24:
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               break loop25;
                                                               §§goto(addr217);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            removeChild(this.§5!^§);
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             sCachedProfilePictures[this.§^+§ + this.§ S§].push(this.§5!^§);
                                             §§goto(addr300);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr271);
                           }
                        }
                     }
                  }
                  §§goto(addr361);
               }
            }
         }
         §§goto(addr119);
      }
   }
}
