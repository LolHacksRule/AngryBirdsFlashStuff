package §5!'§
{
   import §5,§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0<§ extends ProfilePicture
   {
       
      
      private var §%Q§:MovieClip;
      
      private var §2!`§:Boolean;
      
      public function §0<§(userId:String, avatarString:String, newSilhouette:MovieClip, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(_loc6_)
         {
            while(true)
            {
            }
            addr125:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     continue loop3;
                     addr60:
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        addr69:
                        if(_loc6_ || newSilhouette)
                        {
                           return;
                        }
                        loop8:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop2;
                              }
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§goto(addr60);
                              addr46:
                           }
                           else
                           {
                              while(true)
                              {
                                 super(userId,avatarString,useHttps,imageSize);
                                 continue loop8;
                              }
                              addr72:
                           }
                        }
                        continue loop3;
                     }
                     §§goto(addr125);
                  }
               }
            }
            if(!(_loc6_ || userId))
            {
               continue;
            }
            this.§%Q§ = newSilhouette;
            §§goto(addr77);
         }
      }
      
      public function set §88§(silhouetteMovieClip:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§%Q§ = silhouetteMovieClip;
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        while(!(_loc2_ || _loc3_))
                        {
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get §88§() : MovieClip
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§%Q§;
      }
      
      public function get §=!]§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§2!`§;
      }
      
      override protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(!(_loc7_ && useHttps))
         {
            if(_loc6_)
            {
               if(_loc6_ || userId)
               {
                  loop0:
                  while(true)
                  {
                     addr41:
                     loop1:
                     while(_loc6_ || useHttps)
                     {
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        loop2:
                        while(true)
                        {
                           addr301:
                           loop14:
                           while(true)
                           {
                              §@!T§ = FriendItemRenderer.sUserId == userId;
                              addr291:
                              while(!(_loc6_ || useHttps))
                              {
                                 while(true)
                                 {
                                    §^+§ = userId;
                                    continue loop2;
                                 }
                              }
                              loop11:
                              while(true)
                              {
                                 §1u§(userId,avatarString,useHttps);
                                 addr279:
                                 while(true)
                                 {
                                    addr261:
                                    loop8:
                                    while(true)
                                    {
                                       if(§@!T§)
                                       {
                                          while(true)
                                          {
                                             if(_loc7_ && userId)
                                             {
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                addr258:
                                                while(true)
                                                {
                                                   sInstances.push(this);
                                                   addr234:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || useHttps)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop14;
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   break loop1;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          addr250:
                                       }
                                       §§goto(addr152);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        addEventListener(Event.ADDED_TO_STAGE,§?!0§);
                        loop4:
                        while(_loc6_ || useHttps)
                        {
                           while(true)
                           {
                              if(_loc6_ || avatarString)
                              {
                                 if(_loc6_)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       break;
                                    }
                                    addEventListener(Event.REMOVED_FROM_STAGE,§3#§);
                                    while(!_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       if(_loc6_)
                                       {
                                          if(!(_loc7_ && userId))
                                          {
                                             if(_loc7_ && useHttps)
                                             {
                                                §§goto(addr279);
                                             }
                                             addr152:
                                             return;
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr258);
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr234);
                     }
                  }
               }
               §§goto(addr301);
            }
            §§goto(addr279);
         }
         §§goto(addr258);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!_loc6_)
         {
         }
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
                     while(true)
                     {
                        loop5:
                        while(_loc6_ || userId)
                        {
                           §0I§ = true;
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §5!^§ = new § !Q§(avatarString,§ S§,true);
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       this.§%Q§.visible = false;
                                       loop10:
                                       while(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             if(_loc6_ || useHttps)
                                             {
                                                continue loop7;
                                             }
                                             continue loop10;
                                          }
                                          continue loop2;
                                       }
                                       continue loop5;
                                       loop15:
                                       for(; !(_loc7_ && useHttps); while(true)
                                       {
                                          if(_loc7_ && useHttps)
                                          {
                                             continue loop15;
                                          }
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(dontAddChild);
                                          if(!(_loc7_ && useHttps))
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc7_ && useHttps))
                                                {
                                                   §§goto(addr76);
                                                   §§push(Boolean(§§pop()));
                                                }
                                                §§goto(addr76);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr76);
                                       },§§goto(addr141))
                                       {
                                          §§push(Boolean(§5!^§));
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                loop19:
                                                while(§§pop())
                                                {
                                                   while(_loc6_)
                                                   {
                                                      continue loop1;
                                                      addr42:
                                                      if(_loc6_ || useHttps)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  addr55:
                                                                  if(_loc7_)
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr42);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addChild(§5!^§);
                                                                              continue loop22;
                                                                           }
                                                                           addr95:
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     break loop19;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         while(_loc6_)
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §5!^§.visible = true;
                                                               addr141:
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ && useHttps))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         continue loop6;
                                                         addr158:
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                return;
                                                addr83:
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop15;
                                             }
                                             addr76:
                                             if(!(_loc6_ || useHttps))
                                             {
                                                continue;
                                             }
                                             §§goto(addr83);
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
         }
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || useHttps)
         {
         }
         if(_loc4_ && useHttps)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               addr143:
               while(true)
               {
                  continue loop1;
               }
            }
            if(_loc4_ && userId)
            {
               continue;
            }
            §§goto(addr34);
         }
      }
   }
}
