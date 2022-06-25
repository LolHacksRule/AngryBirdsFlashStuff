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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               addr114:
               while(true)
               {
                  addr111:
                  while(true)
                  {
                     addr41:
                     if(!_loc6_)
                     {
                        return;
                        addr53:
                     }
                  }
               }
               loop7:
               while(true)
               {
                  if(!_loc7_)
                  {
                     continue loop0;
                  }
                  super(userId,avatarString,useHttps,imageSize);
                  loop8:
                  while(!(_loc6_ && newSilhouette))
                  {
                     if(_loc6_ && avatarString)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop7;
                     }
                     if(_loc7_)
                     {
                        §§goto(addr41);
                     }
                     while(true)
                     {
                        while(true)
                        {
                           addr95:
                           while(!(_loc6_ && newSilhouette))
                           {
                              this.§%Q§ = newSilhouette;
                              break loop8;
                           }
                        }
                     }
                     §§goto(addr53);
                  }
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        continue loop7;
                     }
                     §§goto(addr95);
                     §§goto(addr61);
                  }
                  addr61:
                  §§goto(addr114);
               }
               §§goto(addr111);
            }
         }
         §§goto(addr108);
      }
      
      public function set §88§(silhouetteMovieClip:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
            }
            addr76:
         }
         while(true)
         {
            this.§%Q§ = silhouetteMovieClip;
            for(; !(_loc2_ && _loc2_); if(!_loc2_)
            {
               return;
            })
            {
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr76);
            }
         }
      }
      
      public function get §88§() : MovieClip
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§%Q§;
      }
      
      public function get §=!]§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.§2!`§;
      }
      
      override protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!_loc6_)
         {
            if(_loc7_ || useHttps)
            {
               if(_loc7_ || this)
               {
                  if(_loc7_ || userId)
                  {
                     while(!(_loc6_ && this))
                     {
                        if(!_loc6_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           §§push(§§findproperty(§ S§));
                           if(!(_loc6_ && avatarString))
                           {
                              §§push(imageSize);
                              if(_loc7_ || useHttps)
                              {
                                 §§push(§§pop());
                                 if(!(_loc6_ && useHttps))
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || useHttps)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && useHttps))
                                          {
                                             §§pop();
                                             addr111:
                                             §§push(§>Y§.SQUARE);
                                             if(!(_loc6_ && avatarString))
                                             {
                                                addr154:
                                                §§push(§§pop());
                                                if(_loc7_)
                                                {
                                                   addr124:
                                                   §§push(§§pop());
                                                }
                                                §§pop().§ S§ = §§pop();
                                                if(!(_loc6_ && useHttps))
                                                {
                                                   while(true)
                                                   {
                                                      §^+§ = userId;
                                                   }
                                                   addr304:
                                                }
                                                while(true)
                                                {
                                                   addr297:
                                                   while(true)
                                                   {
                                                      §@!T§ = FriendItemRenderer.sUserId == userId;
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §1u§(userId,avatarString,useHttps);
                                                            addr282:
                                                            while(true)
                                                            {
                                                               §§goto(addr274);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr124);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ || userId)
                                       {
                                          addr151:
                                          imageSize = §§pop();
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr111);
                        }
                        addr274:
                        §§goto(addr163);
                     }
                     while(true)
                     {
                        addEventListener(Event.REMOVED_FROM_STAGE,§3#§);
                        loop10:
                        while(_loc7_ || avatarString)
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 continue loop10;
                              }
                              if(!_loc6_)
                              {
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc7_ || avatarString))
                                       {
                                          §§goto(addr304);
                                       }
                                       else
                                       {
                                          addr184:
                                       }
                                       addr163:
                                       loop1:
                                       while(§@!T§)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   while(!(_loc6_ && useHttps))
                                                   {
                                                      sInstances.push(this);
                                                      while(!(_loc6_ && avatarString))
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addEventListener(Event.ADDED_TO_STAGE,§?!0§);
                                                               loop6:
                                                               for(; !_loc6_; while(true)
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop6;
                                                               })
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop16;
                                             }
                                             continue loop17;
                                          }
                                          continue loop17;
                                       }
                                       return;
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr184);
            }
            §§goto(addr225);
         }
         §§goto(addr297);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && avatarString)
         {
         }
         if(!(_loc6_ && this))
         {
            while(true)
            {
            }
            addr263:
         }
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
                     while(!_loc6_)
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
                                    continue loop7;
                                    loop14:
                                    while(!(_loc6_ && avatarString))
                                    {
                                       if(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop8;
                                          }
                                          continue loop2;
                                          addr161:
                                       }
                                       continue loop6;
                                       addr63:
                                       if(_loc6_ && useHttps)
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          addr34:
                                          return;
                                       }
                                       addr200:
                                       while(_loc7_)
                                       {
                                          loop13:
                                          while(_loc7_)
                                          {
                                             §5!^§.visible = true;
                                             continue loop14;
                                             while(true)
                                             {
                                                if(!(_loc6_ && userId))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop13;
                                             }
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          this.§2!`§ = true;
                                          §§goto(addr195);
                                       }
                                       addr195:
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
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
         if(!_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr143:
                     while(_loc5_ || userId)
                     {
                        this.§2!`§ = false;
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc4_ && dontAddChild)
               {
                  continue;
               }
               loop7:
               for(; §5!^§; while(_loc5_ || userId)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        §5!^§.visible = false;
                        §§goto(addr72);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr140);
               })
               {
                  while(true)
                  {
                     continue loop7;
                     addr72:
                     while(!(_loc4_ && this))
                     {
                        if(!(_loc5_ || userId))
                        {
                           continue;
                        }
                        if(_loc4_ && useHttps)
                        {
                           continue loop7;
                        }
                        §§goto(addr49);
                     }
                  }
               }
               §§goto(addr29);
            }
         }
         §§goto(addr85);
      }
   }
}
