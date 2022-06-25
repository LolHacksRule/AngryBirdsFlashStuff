package §6v§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §;!G§ extends ProfilePicture
   {
      
      private static const VERSUS_DIMENSION:int = 50;
      
      {
         var VERSUS_DIMENSION:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || VERSUS_DIMENSION)
         {
            do
            {
               VERSUS_DIMENSION = 50;
            }
            while(VERSUS_DIMENSION && _loc2_);
            
         }
      }
      
      private var §"u§:MovieClip;
      
      public function §;!G§(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || userId)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!_loc6_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§"u§ = new MovieClip();
                           loop5:
                           while(true)
                           {
                              while(!_loc6_)
                              {
                                 addChild(this.§"u§);
                                 while(true)
                                 {
                                    addr48:
                                    if(_loc5_ || avatarString)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 loop9:
                                 while(_loc5_ || userId)
                                 {
                                    continue loop3;
                                    if(!(_loc6_ && this))
                                    {
                                       addr41:
                                       if(_loc5_ || this)
                                       {
                                          §§goto(addr48);
                                       }
                                       while(true)
                                       {
                                          super(userId,avatarString,useHttps,imageSize);
                                          continue loop9;
                                          §§goto(addr41);
                                       }
                                       return;
                                       addr81:
                                       addr116:
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     if(_loc6_ && useHttps)
                     {
                        continue;
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(_loc6_ && userId)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               addr177:
               addr94:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(!_loc6_)
                        {
                           super.createAvatar(avatarString,userId,useHttps,overrideImageSize,true);
                           while(true)
                           {
                              loop7:
                              for(; !_loc6_; if(_loc7_ || avatarString)
                              {
                                 if(!_loc6_)
                                 {
                                    this.§7c§(§[U§);
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr120);
                                    }
                                    continue loop0;
                                    addr108:
                                 }
                                 continue loop4;
                              })
                              {
                                 addChild(§^w§);
                                 loop8:
                                 while(true)
                                 {
                                    addr120:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop5;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
               if(!(_loc6_ && this))
               {
                  this.§58§(§^w§,VERSUS_DIMENSION);
                  loop12:
                  while(_loc7_ || avatarString)
                  {
                     while(true)
                     {
                        if(!(_loc6_ && avatarString))
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           this.§<!e§(§[U§ as §5!D§);
                           while(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        continue loop12;
                     }
                     §§goto(addr177);
                  }
                  while(true)
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr94);
                        }
                        else
                        {
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr108);
                     §§goto(addr70);
                  }
                  addr70:
                  addr90:
               }
            }
            if(_loc6_ && useHttps)
            {
               continue;
            }
            §§goto(addr90);
         }
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(_loc4_ || this)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        super.createFacebookProfile(userId,useHttps,true);
                        addr126:
                        while(!_loc5_)
                        {
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §7c§(picture:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            if(this.§"u§.numChildren <= 0)
            {
               if(_loc3_ && _loc3_)
               {
               }
               loop1:
               while(true)
               {
                  this.§"u§.scrollRect = new Rectangle(0,0,VERSUS_DIMENSION,VERSUS_DIMENSION);
                  loop2:
                  while(true)
                  {
                     if(_loc3_ && this)
                     {
                        continue loop1;
                     }
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        this.§"u§.addChild(picture);
                        while(true)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              this.§"u§.removeChildAt(0);
                              break;
                           }
                           addr146:
                           if(!_loc3_)
                           {
                              continue loop3;
                           }
                        }
                        addr141:
                        break loop2;
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr146);
         }
      }
      
      private function §<!e§(picture:§5!D§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(picture.width > 0);
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 picture.addEventListener(Event.COMPLETE,this.§4w§);
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                                 this.§58§(picture,VERSUS_DIMENSION);
                                 §§goto(addr96);
                                 addr151:
                              }
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              addr166:
                              while(true)
                              {
                                 §§push(picture.height > 0);
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop1;
                           addr124:
                        }
                     }
                     while(true)
                     {
                        §§pop();
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr124);
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr29);
            }
         }
         §§goto(addr166);
      }
      
      private function §4w§(e:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && targetPicture)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
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
            §§goto(addr40);
         }
         var targetPicture:§5!D§ = e.currentTarget as §5!D§;
         if(_loc4_ || _loc3_)
         {
            loop4:
            while(true)
            {
               if(targetPicture)
               {
                  while(true)
                  {
                     addr132:
                     while(true)
                     {
                        targetPicture.removeEventListener(Event.COMPLETE,this.§4w§);
                        addr126:
                        while(true)
                        {
                           addr116:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr131:
               }
               loop6:
               while(true)
               {
                  this.§58§(targetPicture,VERSUS_DIMENSION);
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           continue loop4;
                        }
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop6;
                        }
                        if(_loc4_ || targetPicture)
                        {
                           if(_loc4_)
                           {
                              break loop6;
                           }
                           break;
                        }
                        §§goto(addr126);
                     }
                     else
                     {
                        §§goto(addr131);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr132);
      }
      
      private function §58§(picture:Sprite, dimension:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && this)
         {
         }
         var scale:Number = NaN;
         if(!(_loc7_ && dimension))
         {
            while(true)
            {
               while(!_loc7_)
               {
                  loop4:
                  for(; _loc6_ || scale; loop6:
                  while(_loc6_ || scale)
                  {
                     addr50:
                     if(!(_loc7_ && dimension))
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     else
                     {
                        while(true)
                        {
                           break loop6;
                           §§goto(addr50);
                        }
                        addr70:
                     }
                  })
                  {
                     do
                     {
                        continue loop4;
                     }
                     while(false);
                     
                     var realWidth:int = picture.width;
                     if(!_loc6_)
                     {
                     }
                     var realHeight:int = picture.height;
                     if(_loc6_ || scale)
                     {
                        addr488:
                        addr492:
                        if(picture is §,!f§)
                        {
                           addr481:
                           dimension *= 1.4;
                           picture.x = -5;
                           addr475:
                           addr478:
                           addr489:
                           addr490:
                           addr482:
                           addr480:
                           if(_loc6_)
                           {
                              picture.y = -5;
                              addr465:
                              if(!(_loc7_ && picture))
                              {
                                 addr428:
                                 §§push(dimension);
                                 if(!_loc7_)
                                 {
                                    addr427:
                                    §§push(§§pop() / realHeight);
                                 }
                                 if(_loc6_ || dimension)
                                 {
                                    addr436:
                                    scale = §§pop();
                                    addr437:
                                    if(_loc6_)
                                    {
                                       picture.scaleX = scale;
                                       picture.scaleY = scale;
                                       addr408:
                                       addr416:
                                       if(_loc6_ || this)
                                       {
                                          addr373:
                                          §§push(picture is §5!D§);
                                          if(_loc6_ || dimension)
                                          {
                                             if(§§pop())
                                             {
                                                addr386:
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr369:
                                                         realWidth = (picture as §5!D§).§3f§;
                                                         addr393:
                                                         addr368:
                                                         if(_loc6_)
                                                         {
                                                            addr359:
                                                            if(_loc6_)
                                                            {
                                                               §§push((picture as §5!D§).§6$§);
                                                               if(!(_loc7_ && picture))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr355:
                                                                     realHeight = §§pop();
                                                                     addr356:
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(realWidth);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(§§pop() < realHeight)
                                                                                 {
                                                                                    addr329:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr308:
                                                                                       §§push(dimension);
                                                                                       if(!(_loc7_ && scale))
                                                                                       {
                                                                                          addr318:
                                                                                          scale = §§pop() / realWidth;
                                                                                          picture.scaleX = scale;
                                                                                          addr295:
                                                                                          if(_loc6_ || scale)
                                                                                          {
                                                                                             picture.scaleY = scale;
                                                                                             addr279:
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr475);
                                                                                                      }
                                                                                                      §§goto(addr97);
                                                                                                   }
                                                                                                   §§goto(addr408);
                                                                                                }
                                                                                                §§goto(addr393);
                                                                                             }
                                                                                             §§goto(addr359);
                                                                                             addr290:
                                                                                          }
                                                                                          §§goto(addr465);
                                                                                          addr305:
                                                                                          addr319:
                                                                                          addr317:
                                                                                          addr316:
                                                                                       }
                                                                                       §§goto(addr436);
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                    addr328:
                                                                                 }
                                                                                 §§push(dimension);
                                                                                 if(!(_loc7_ && scale))
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_ || scale)
                                                                                       {
                                                                                          §§push(realHeight);
                                                                                          if(!(_loc7_ && dimension))
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr245:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && picture))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr259:
                                                                                                               scale = §§pop();
                                                                                                               addr260:
                                                                                                               if(_loc6_ || picture)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && scale))
                                                                                                                  {
                                                                                                                     addr184:
                                                                                                                     if(_loc6_ || dimension)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || picture)
                                                                                                                           {
                                                                                                                              picture.scaleX = scale;
                                                                                                                              picture.scaleY = scale;
                                                                                                                              addr181:
                                                                                                                              addr176:
                                                                                                                              if(_loc6_ || scale)
                                                                                                                              {
                                                                                                                                 addr157:
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       picture.x = -(picture.width - dimension) / 2;
                                                                                                                                       addr137:
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || picture)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && dimension))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_ && scale)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr408);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr97);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr295);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr157);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr137);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr305);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr260);
                                                                                                                                                }
                                                                                                                                                §§goto(addr184);
                                                                                                                                             }
                                                                                                                                             §§goto(addr181);
                                                                                                                                          }
                                                                                                                                          §§goto(addr176);
                                                                                                                                       }
                                                                                                                                       §§goto(addr181);
                                                                                                                                    }
                                                                                                                                    §§goto(addr290);
                                                                                                                                 }
                                                                                                                                 §§goto(addr279);
                                                                                                                              }
                                                                                                                              §§goto(addr319);
                                                                                                                           }
                                                                                                                           §§goto(addr437);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr356);
                                                                                                                  }
                                                                                                                  §§goto(addr328);
                                                                                                               }
                                                                                                               §§goto(addr329);
                                                                                                            }
                                                                                                            §§goto(addr478);
                                                                                                         }
                                                                                                         §§goto(addr428);
                                                                                                      }
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                          §§goto(addr316);
                                                                                       }
                                                                                       §§goto(addr481);
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 §§goto(addr245);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        §§goto(addr465);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         §§goto(addr481);
                                                      }
                                                      §§goto(addr489);
                                                   }
                                                   §§goto(addr490);
                                                }
                                                §§goto(addr436);
                                             }
                                             addr97:
                                             return;
                                          }
                                          §§goto(addr488);
                                          addr403:
                                       }
                                       addr411:
                                       §§goto(addr411);
                                    }
                                    §§goto(addr482);
                                 }
                                 §§goto(addr480);
                              }
                              addr462:
                              §§goto(addr462);
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr373);
                     }
                     §§goto(addr403);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr70);
         }
      }
   }
}
