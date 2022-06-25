package §+R§
{
   import §#r§.FriendItemRenderer;
   import §'!%§.CustomAvatarCache;
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
         var sInstances:Boolean = true;
         var sUserAvatarString:Boolean = false;
         if(sInstances)
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
                     loop3:
                     while(true)
                     {
                        AVATAR_ENABLED = false;
                        while(sInstances)
                        {
                           while(sInstances)
                           {
                              if(sInstances)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                              sCachedProfilePictures = {};
                              if(!sUserAvatarString)
                              {
                                 if(!sUserAvatarString)
                                 {
                                    return;
                                    addr41:
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      protected var §1!%§:Sprite;
      
      protected var §&!4§:Sprite;
      
      protected var §;!-§:Boolean;
      
      protected var §#'§:Sprite;
      
      protected var §^Q§:String;
      
      protected var §+4§:String;
      
      protected var §#!?§:Boolean = false;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(_loc5_)
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
                        loop4:
                        for(; _loc5_ || userId; if(!(_loc5_ || this))
                        {
                           continue;
                        },§§goto(addr100))
                        {
                           super();
                           while(true)
                           {
                              loop6:
                              while(!(_loc6_ && useHttps))
                              {
                                 continue loop4;
                                 while(true)
                                 {
                                    this.initProfile(userId,avatarString,useHttps,imageSize);
                                    while(!(_loc5_ || this))
                                    {
                                    }
                                    if(!(_loc6_ && avatarString))
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
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
               if(!(_loc5_ || this))
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr100);
      }
      
      public static function §<!h§(newAvatarString:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || i)
         {
         }
         var profilePicture:ProfilePicture = null;
         if(_loc7_ || i)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(!_loc6_)
               {
                  if(_loc7_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            §§push(0);
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            if(!_loc6_)
            {
               loop3:
               while(true)
               {
                  sUserAvatarString = newAvatarString;
                  while(true)
                  {
                     loop5:
                     for(; _loc7_ || newAvatarString; while(!(_loc6_ && i))
                     {
                        continue loop3;
                        if(!(_loc6_ && newAvatarString))
                        {
                           if(false)
                           {
                              addr69:
                              §§goto(addr206);
                           }
                           else
                           {
                              loop9:
                              for each(profilePicture in sInstances)
                              {
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                       profilePicture.update(FriendItemRenderer.sUserId,newAvatarString);
                                    }
                                    addr193:
                                 }
                                 while(true)
                                 {
                                    loop12:
                                    for(; _loc7_ || newAvatarString; while(_loc7_ || ProfilePicture)
                                    {
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr138);
                                    })
                                    {
                                       if(_loc7_)
                                       {
                                          do
                                          {
                                             trace("instances:",i++,sInstances.length);
                                             continue loop12;
                                          }
                                          while(false);
                                          
                                          continue loop9;
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                              }
                              if(_loc7_ || ProfilePicture)
                              {
                              }
                           }
                           addr206:
                           while(newAvatarString != null)
                           {
                              if(!_loc7_)
                              {
                              }
                              continue loop5;
                           }
                        }
                        continue;
                        return;
                     })
                     {
                        while(true)
                        {
                           §§goto(addr69);
                        }
                     }
                  }
                  if(!(_loc7_ || newAvatarString))
                  {
                     continue;
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr110);
         }
      }
      
      protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!(_loc6_ && userId))
         {
            if(!(_loc6_ && avatarString))
            {
               if(_loc7_ || userId)
               {
                  if(_loc7_)
                  {
                     while(_loc7_ || avatarString)
                     {
                        if(_loc7_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           §§push(this);
                           if(!_loc6_)
                           {
                              §§push(imageSize);
                              if(!(_loc6_ && useHttps))
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && this))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc7_ || userId)
                                          {
                                             addr100:
                                             §§pop();
                                             §§push(§3!1§.SQUARE);
                                             if(_loc7_ || useHttps)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_ && this)
                                                {
                                                }
                                                addr129:
                                                §§pop().§+4§ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§^Q§ = userId;
                                                      addr407:
                                                      while(true)
                                                      {
                                                         addr402:
                                                         while(true)
                                                         {
                                                            this.§;!-§ = FriendItemRenderer.sUserId == userId;
                                                            addr399:
                                                            while(true)
                                                            {
                                                               addr390:
                                                               while(true)
                                                               {
                                                                  this.§#'§ = new Sprite();
                                                                  addr387:
                                                                  while(true)
                                                                  {
                                                                     addr381:
                                                                     while(true)
                                                                     {
                                                                        this.§#'§.graphics.beginFill(0,0);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr409:
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   addr359:
                                                   while(true)
                                                   {
                                                      this.§#'§.graphics.drawRect(0,0,50,50);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            this.§#'§.graphics.endFill();
                                                            loop4:
                                                            while(true)
                                                            {
                                                               loop5:
                                                               while(_loc7_ || useHttps)
                                                               {
                                                                  addChild(this.§#'§);
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     addr314:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           this.§"M§(userId,avatarString,useHttps);
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     continue loop22;
                                                                     addr199:
                                                                     if(!(_loc7_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr182:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ || userId))
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && useHttps))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       while(_loc7_ || userId)
                                                                                       {
                                                                                          sInstances.push(this);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ && userId)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(!this.§;!-§)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc7_ || userId)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr314);
                                                                                       }
                                                                                       addr275:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr285:
                                                                                       addr275:
                                                                                    }
                                                                                    continue loop4;
                                                                                    return;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          if(_loc7_ || userId)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§goto(addr399);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr199);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                               }
                                                               §§goto(addr407);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§push(§§pop());
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          addr126:
                                          imageSize = §§pop();
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr359);
                     }
                     while(true)
                     {
                        addEventListener(Event.REMOVED_FROM_STAGE,this.§%C§);
                        while(!(_loc7_ || avatarString))
                        {
                        }
                        if(_loc7_)
                        {
                           if(!(_loc7_ || userId))
                           {
                              §§goto(addr359);
                           }
                           else
                           {
                              addr155:
                           }
                           §§goto(addr285);
                        }
                        §§goto(addr168);
                     }
                  }
               }
               §§goto(addr274);
            }
            §§goto(addr381);
         }
         §§goto(addr155);
      }
      
      private function §;z§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc3_)
                  {
                     if(this.§%!3§)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           continue;
                        }
                        addr103:
                        loop2:
                        while(true)
                        {
                           this.§1!%§.visible = false;
                           do
                           {
                              loop4:
                              do
                              {
                                 this.§&!4§.visible = true;
                                 while(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(!_loc3_);
                              
                           }
                           while(_loc2_);
                           
                           break loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr103);
      }
      
      private function §0a§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(this.§%!3§)
            {
               if(!_loc2_)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
               loop2:
               while(true)
               {
                  this.§1!%§.visible = true;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
            return;
         }
      }
      
      public function get userID() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§^Q§;
      }
      
      public function get §%!3§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§#!?§;
      }
      
      public function set §%!3§(value:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || value)
         {
            loop0:
            while(!(_loc4_ && value))
            {
               this.§#!?§ = value;
               if(_loc3_ || value)
               {
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           if(this.§%!3§)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_ || this)
                                 {
                                    if(false)
                                    {
                                       continue loop2;
                                    }
                                    this.mouseEnabled = this.mouseChildren = true;
                                    if(_loc4_ && this)
                                    {
                                       addr124:
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              break loop0;
                           }
                           this.mouseEnabled = this.mouseChildren = false;
                           if(!_loc3_)
                           {
                           }
                           break loop0;
                           §§goto(addr124);
                        }
                     }
                     continue loop0;
                  }
                  addr72:
               }
               break;
            }
            return;
         }
         §§goto(addr72);
      }
      
      protected function §2!a§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc2_ || e)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(sUserAvatarString == null)
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                     }
                     while(_loc2_)
                     {
                        this.§"M§(this.§^Q§,sUserAvatarString);
                        while(!_loc2_)
                        {
                        }
                        if(_loc2_)
                        {
                           addr53:
                           break loop1;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function §%C§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(_loc3_)
            {
            }
         }
      }
      
      public function get §4?§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.§1!%§;
      }
      
      public function get §?!`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§;!-§;
      }
      
      protected function §"M§(userId:String, avatarString:String, useHttps:Boolean = false, addAvatarToDisplayList:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc5_ || this)
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
                           §§push(Boolean(this.§1!%§));
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
                                       §§push(Boolean(this.§1!%§.parent));
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   this.§1!%§.parent.removeChild(this.§1!%§);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         loop32:
                                                         while(_loc5_ || userId)
                                                         {
                                                            loop33:
                                                            while(_loc5_ || avatarString)
                                                            {
                                                               continue loop0;
                                                               loop52:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                                  if(_loc6_ && userId)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop53:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ || useHttps))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     this.createAvatar(avatarString,userId,useHttps);
                                                                     loop54:
                                                                     while(true)
                                                                     {
                                                                        loop48:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(this.§#'§));
                                                                           if(_loc5_)
                                                                           {
                                                                              addr77:
                                                                              if(!(_loc6_ && useHttps))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr86:
                                                                                    if(!(_loc6_ && useHttps))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr28:
                                                                                          return;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc6_ && this)
                                                                                             {
                                                                                                continue loop54;
                                                                                             }
                                                                                             addr103:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && avatarString))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  setChildIndex(this.§#'§,this.numChildren - 1);
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            continue loop52;
                                                                                                         }
                                                                                                         continue loop53;
                                                                                                      }
                                                                                                      addr129:
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               continue loop48;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr405:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop33;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   continue loop33;
                                                                                                }
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(avatarString);
                                                                                                   if(!(_loc6_ && avatarString))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         if(!(_loc6_ && avatarString))
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc5_ || userId)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc5_ || useHttps)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  loop57:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr285:
                                                                                                                        loop42:
                                                                                                                        while(_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr290:
                                                                                                                              loop43:
                                                                                                                              while(!(_loc6_ && avatarString))
                                                                                                                              {
                                                                                                                                 §§push(AVATAR_ENABLED);
                                                                                                                                 loop44:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && useHttps))
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || avatarString)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr316:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop52;
                                                                                                                                                   }
                                                                                                                                                   addr150:
                                                                                                                                                   this.createFacebookProfile(userId,useHttps);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr129);
                                                                                                                                                   }
                                                                                                                                                   continue loop6;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop57;
                                                                                                                                                }
                                                                                                                                                while(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   continue loop41;
                                                                                                                                                   §§goto(addr86);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   addr369:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      break loop44;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             loop21:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                addr398:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         addr400:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(avatarString);
                                                                                                                                                            addr364:
                                                                                                                                                            addr393:
                                                                                                                                                            while(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§push("");
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr368);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(null);
                                                                                                                                                               addr394:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  addr395:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     addr396:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop21;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr399:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr369);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr316:
                                                                                                                                             addr181:
                                                                                                                                          }
                                                                                                                                          §§goto(addr396);
                                                                                                                                       }
                                                                                                                                       §§goto(addr399);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    §§goto(addr77);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          break loop43;
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    addr298:
                                                                                                                                    addr298:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(avatarString);
                                                                                                                                       addr300:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push("");
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                break loop42;
                                                                                                                                             }
                                                                                                                                             addr304:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr367);
                                                                                                                                    }
                                                                                                                                    §§goto(addr164);
                                                                                                                                 }
                                                                                                                                 addr164:
                                                                                                                                 continue loop2;
                                                                                                                                 §§goto(addr103);
                                                                                                                              }
                                                                                                                              while(_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                                 §§goto(addr290);
                                                                                                                              }
                                                                                                                              addr290:
                                                                                                                              continue loop10;
                                                                                                                              addr381:
                                                                                                                           }
                                                                                                                           §§goto(addr304);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr316);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr395);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr405);
                                                                                                                           }
                                                                                                                           §§goto(addr298);
                                                                                                                        }
                                                                                                                        addr285:
                                                                                                                        addr404:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr285);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr394);
                                                                                                      }
                                                                                                      §§goto(addr364);
                                                                                                   }
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   avatarString = §§pop();
                                                                                                   continue loop32;
                                                                                                }
                                                                                                addr353:
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          §§goto(addr150);
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr28);
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       continue loop54;
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                              §§goto(addr164);
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr393);
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
                                 §§goto(addr404);
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
            §§goto(addr381);
         }
      }
      
      protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         if(!(_loc7_ && useHttps))
         {
            while(true)
            {
            }
            addr105:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               continue loop1;
               loop5:
               while(!(_loc7_ && avatarString))
               {
                  loop6:
                  while(true)
                  {
                     this.§%!3§ = true;
                     while(true)
                     {
                        if(_loc8_)
                        {
                           addr60:
                           if(!(_loc8_ || useHttps))
                           {
                              break;
                           }
                           loop8:
                           while(_loc8_)
                           {
                              while(true)
                              {
                                 this.§&!4§ = this.§0!;§(userId,this.§+4§,useHttps);
                                 while(_loc7_)
                                 {
                                 }
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 continue loop8;
                              }
                              continue loop6;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     addr83:
                     while(!_loc7_)
                     {
                        continue loop5;
                        §§goto(addr60);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || useHttps)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr194:
                  addr43:
                  while(true)
                  {
                     addr191:
                     while(true)
                     {
                        this.§%!3§ = false;
                        continue loop0;
                     }
                  }
                  if(_loc4_ || userId)
                  {
                     addr28:
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §0!;§(userId:String, imageSize:String, useHttps:Boolean = false) : §3!1§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || useHttps)
         {
         }
         var facebookPicture:§3!1§ = null;
         if(_loc5_ && this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  loop3:
                  while(!(_loc5_ && useHttps))
                  {
                     loop4:
                     while(true)
                     {
                        if(sCachedProfilePictures[userId + imageSize])
                        {
                           loop10:
                           while(true)
                           {
                              if(sCachedProfilePictures[userId + imageSize].length <= 0)
                              {
                                 facebookPicture = new §3!1§(userId,useHttps,imageSize);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              if(_loc5_)
                              {
                              }
                              if(!_loc6_)
                              {
                                 loop9:
                                 while(_loc6_ || userId)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop10;
                                    }
                                    addr120:
                                    while(true)
                                    {
                                       sCachedProfilePictures[userId + imageSize] = [];
                                       break loop9;
                                    }
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc5_ && this)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 addr65:
                              }
                              else
                              {
                                 addr93:
                              }
                              if(_loc5_)
                              {
                                 continue loop4;
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           return facebookPicture;
                        }
                        addr173:
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || userId)
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
                     this.§"M§(userId,newAvatarString,false);
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           if(_loc3_ || newAvatarString)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§1!%§));
            loop1:
            while(true)
            {
               §§push(§§pop());
               if(_loc1_)
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
                        §§push(this.§1!%§ is §3!1§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr378:
                           while(_loc1_)
                           {
                           }
                           continue loop2;
                           addr284:
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(§§pop())
                           {
                              loop19:
                              while(_loc1_)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    if(this.§1!%§.parent == this)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             removeChild(this.§1!%§);
                                             loop23:
                                             while(true)
                                             {
                                                addr262:
                                                loop24:
                                                while(true)
                                                {
                                                   addr109:
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      loop43:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr73:
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  addr82:
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     this.§#'§.removeEventListener(MouseEvent.MOUSE_OUT,this.§0a§);
                                                                     while(_loc1_ || _loc1_)
                                                                     {
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           continue loop43;
                                                                        }
                                                                     }
                                                                     continue loop23;
                                                                     addr61:
                                                                  }
                                                                  loop27:
                                                                  for(; !_loc2_; §§goto(addr82))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(this.§&!4§));
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr233:
                                                                                 while(true)
                                                                                 {
                                                                                    if(this.§&!4§.parent != this)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§&!4§ = null;
                                                                                          break loop43;
                                                                                       }
                                                                                       addr170:
                                                                                    }
                                                                                    addr221:
                                                                                    loop32:
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       loop33:
                                                                                       while(!_loc2_)
                                                                                       {
                                                                                          removeChild(this.§&!4§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop33;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop22;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc1_ || _loc1_)
                                                                                             {
                                                                                                §§goto(addr170);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop32;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          sCachedProfilePictures[this.§^Q§ + this.§+4§] = [];
                                                                                          addr340:
                                                                                          while(true)
                                                                                          {
                                                                                             break loop32;
                                                                                             addr250:
                                                                                             if(_loc2_ && _loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             addr383:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!sCachedProfilePictures[this.§^Q§ + this.§+4§]);
                                                                                                continue loop1;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       addr306:
                                                                                       while(true)
                                                                                       {
                                                                                          sCachedProfilePictures[this.§^Q§ + this.§+4§].push(this.§1!%§);
                                                                                          addr319:
                                                                                          addr382:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr383);
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr232:
                                                                           }
                                                                           loop39:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(this.§#'§));
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop29;
                                                                              }
                                                                              addr125:
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr28:
                                                                                    return;
                                                                                 }
                                                                                 loop40:
                                                                                 while(_loc1_ || this)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc1_ || _loc2_))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       loop41:
                                                                                       for(; !(_loc2_ && _loc1_); while(true)
                                                                                       {
                                                                                          if(_loc2_ && _loc2_)
                                                                                          {
                                                                                             continue loop41;
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop40;
                                                                                          }
                                                                                          §§goto(addr109);
                                                                                       },continue loop24)
                                                                                       {
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             this.§#'§.removeEventListener(MouseEvent.MOUSE_OVER,this.§;z§);
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr179);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop39;
                                                                                    §§goto(addr135);
                                                                                 }
                                                                                 addr135:
                                                                              }
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§goto(addr284);
                                                                                 §§goto(addr125);
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      while(_loc1_)
                                                      {
                                                         §§goto(addr169);
                                                         §§goto(addr73);
                                                      }
                                                      continue loop21;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr370);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§1!%§ = null;
                                       §§goto(addr243);
                                       §§goto(addr262);
                                    }
                                 }
                              }
                              while(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §§goto(addr282);
                                 }
                              }
                              §§goto(addr319);
                           }
                           §§goto(addr227);
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§goto(addr278);
                  }
                  §§goto(addr382);
               }
            }
         }
      }
   }
}
