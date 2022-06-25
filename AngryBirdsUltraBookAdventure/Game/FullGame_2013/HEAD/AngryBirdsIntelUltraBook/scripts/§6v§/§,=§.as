package §6v§
{
   import §5!]§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §,=§ extends ProfilePicture
   {
       
      
      private var §0!7§:MovieClip;
      
      private var §=!U§:Boolean;
      
      public function §,=§(userId:String, avatarString:String, newSilhouette:MovieClip, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!(_loc6_ && newSilhouette))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     for(; !(_loc6_ && newSilhouette); while(_loc7_ || userId)
                     {
                        §§goto(addr74);
                     })
                     {
                        while(true)
                        {
                           while(_loc7_)
                           {
                              this.§0!7§ = newSilhouette;
                              continue loop3;
                              if(_loc7_ || userId)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop1;
                           addr81:
                           if(_loc7_ || newSilhouette)
                           {
                              super(userId,avatarString,useHttps,imageSize);
                              loop8:
                              while(true)
                              {
                                 if(_loc6_ && newSilhouette)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    while(!(_loc6_ && this))
                                    {
                                       §§goto(addr81);
                                       continue loop8;
                                    }
                                    continue loop3;
                                    addr74:
                                 }
                                 §§goto(addr44);
                              }
                              return;
                              addr63:
                              addr71:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function set § !4§(silhouetteMovieClip:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            do
            {
               while(true)
               {
                  this.§0!7§ = silhouetteMovieClip;
                  while(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || silhouetteMovieClip));
            
         }
      }
      
      public function get § !4§() : MovieClip
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§0!7§;
      }
      
      public function get §?!S§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§=!U§;
      }
      
      override protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(!(_loc6_ && useHttps))
         {
            if(!(_loc6_ && useHttps))
            {
               if(_loc7_ || this)
               {
                  if(_loc7_)
                  {
                     loop0:
                     while(true)
                     {
                        while(_loc7_ || useHttps)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop0;
                           }
                           §§push(§§findproperty(§'I§));
                           if(!_loc6_)
                           {
                              §§push(imageSize);
                              if(!(_loc6_ && avatarString))
                              {
                                 §§push(§§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || avatarString)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§pop();
                                             addr101:
                                             §§push(§5!D§.SQUARE);
                                             if(_loc7_ || useHttps)
                                             {
                                                addr144:
                                                §§push(§§pop());
                                                if(!(_loc6_ && userId))
                                                {
                                                   addr119:
                                                   §§push(§§pop());
                                                }
                                                §§pop().§'I§ = §§pop();
                                                if(!(_loc6_ && useHttps))
                                                {
                                                   while(true)
                                                   {
                                                      §`I§ = userId;
                                                      loop3:
                                                      while(true)
                                                      {
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §^o§ = FriendItemRenderer.sUserId == userId;
                                                            while(true)
                                                            {
                                                               addr280:
                                                               while(true)
                                                               {
                                                                  §8i§(userId,avatarString,useHttps);
                                                                  addr277:
                                                                  while(true)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               addr241:
                                                               if(!(_loc7_ || useHttps))
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  addr249:
                                                                  while(true)
                                                                  {
                                                                     sInstances.push(this);
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr248);
                                             }
                                          }
                                       }
                                       §§goto(addr119);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc6_ && useHttps))
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          addr141:
                                          imageSize = §§pop();
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr101);
                        }
                     }
                  }
               }
               while(§^o§)
               {
                  if(!_loc6_)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr241);
                     }
                     §§goto(addr280);
                  }
                  §§goto(addr249);
               }
               §§goto(addr153);
            }
            §§goto(addr218);
         }
         §§goto(addr249);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || userId)
         {
         }
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  continue loop0;
                  loop12:
                  for(; !(_loc7_ && userId); while(_loc6_ || this)
                  {
                     addChild(§^w§);
                     §§goto(addr66);
                  })
                  {
                     loop13:
                     while(true)
                     {
                        if(!(_loc7_ && avatarString))
                        {
                           §^w§.visible = true;
                           loop14:
                           for(; _loc6_; while(!(_loc7_ && avatarString))
                           {
                              §§push(dontAddChild);
                              if(_loc6_ || avatarString)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc6_ || avatarString)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr96);
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr97);
                           })
                           {
                              loop15:
                              while(true)
                              {
                                 §§push(Boolean(§^w§));
                                 addr137:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop14;
                                       }
                                       addr142:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          addr97:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr28);
                                             }
                                             if(!(_loc6_ || userId))
                                             {
                                                continue loop12;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop15;
                                             }
                                             addr107:
                                             if(!(_loc7_ && avatarString))
                                             {
                                                continue loop12;
                                             }
                                             addr241:
                                             while(true)
                                             {
                                                addr226:
                                                while(true)
                                                {
                                                   §^w§ = new §,!f§(avatarString,§'I§,true);
                                                   break loop14;
                                                }
                                                §§goto(addr107);
                                             }
                                          }
                                       }
                                       addr96:
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              addr204:
                              loop9:
                              while(!(_loc7_ && userId))
                              {
                                 if(_loc6_)
                                 {
                                    this.§0!7§.visible = false;
                                    while(true)
                                    {
                                       break loop13;
                                       addr50:
                                       if(!(_loc6_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§goto(addr28);
                                       }
                                       else
                                       {
                                          §§goto(addr226);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr254:
                                       while(true)
                                       {
                                          break loop9;
                                       }
                                    }
                                    addr257:
                                 }
                              }
                              while(_loc6_ || useHttps)
                              {
                                 §@[§ = true;
                                 §§goto(addr241);
                                 §§goto(addr204);
                              }
                              §§goto(addr254);
                           }
                        }
                        break;
                        addr66:
                        while(_loc6_ || userId)
                        {
                           if(_loc6_ || userId)
                           {
                              if(_loc7_)
                              {
                                 continue loop12;
                              }
                              if(!(_loc7_ && useHttps))
                              {
                                 §§goto(addr50);
                              }
                              else
                              {
                                 §§goto(addr143);
                              }
                           }
                           continue;
                           return;
                        }
                     }
                     while(true)
                     {
                        if(_loc6_)
                        {
                           addr188:
                           if(_loc7_ && userId)
                           {
                              break;
                           }
                           this.§=!U§ = true;
                           continue loop12;
                        }
                        §§goto(addr204);
                        §§goto(addr164);
                     }
                     addr164:
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && this))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(_loc5_ || useHttps)
                     {
                        this.§=!U§ = false;
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              this.§0!7§.visible = true;
                              continue loop4;
                              addr76:
                              if(!(_loc4_ && useHttps))
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
   }
}
