package §+R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §6!A§ extends ProfilePicture
   {
      
      private static const VERSUS_DIMENSION:int = 50;
      
      {
         var VERSUS_DIMENSION:Boolean = true;
         var _loc2_:Boolean = false;
         if(VERSUS_DIMENSION || _loc2_)
         {
            do
            {
               VERSUS_DIMENSION = 50;
            }
            while(!(VERSUS_DIMENSION || §6!A§));
            
         }
      }
      
      private var §6'§:MovieClip;
      
      public function §6!A§(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || userId)
         {
         }
         if(_loc5_ || userId)
         {
            while(true)
            {
            }
            addr145:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               loop3:
               while(true)
               {
                  while(_loc5_)
                  {
                     this.§6'§ = new MovieClip();
                     continue loop3;
                     if(!(_loc6_ && avatarString))
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
               if(_loc6_ && useHttps)
               {
                  continue;
               }
               loop6:
               while(_loc5_)
               {
                  if(!_loc6_)
                  {
                     addChild(this.§6'§);
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           super(userId,avatarString,useHttps,imageSize);
                           while(true)
                           {
                              if(!(_loc6_ && userId))
                              {
                                 continue loop7;
                              }
                              continue loop8;
                              addr82:
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              §§goto(addr41);
                           }
                           continue loop6;
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr145);
                  }
               }
               §§goto(addr115);
            }
         }
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(_loc7_ || this)
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
                     while(true)
                     {
                        continue loop2;
                        loop8:
                        while(!(_loc6_ && avatarString))
                        {
                           loop9:
                           while(true)
                           {
                              this.§ T§(§&!4§);
                              loop10:
                              while(true)
                              {
                                 if(_loc7_ || userId)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       loop11:
                                       while(_loc7_)
                                       {
                                          this.§super§(§1!%§,VERSUS_DIMENSION);
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                addr101:
                                                if(_loc6_ && avatarString)
                                                {
                                                   break;
                                                }
                                                loop13:
                                                while(_loc7_)
                                                {
                                                   this.§[!_§(§&!4§ as §3!1§);
                                                   while(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && useHttps))
                                                      {
                                                         if(!(_loc6_ && useHttps))
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop13;
                                                         continue loop13;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop11;
                                             }
                                             continue loop9;
                                          }
                                          while(true)
                                          {
                                             addChild(§1!%§);
                                             continue loop8;
                                             §§goto(addr101);
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 while(_loc7_)
                                 {
                                    §§goto(addr151);
                                    continue loop10;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || userId)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     addr122:
                     while(!(_loc5_ && this))
                     {
                        continue loop0;
                     }
                  }
                  loop6:
                  for(; _loc4_ || this; if(!(_loc4_ || this))
                  {
                     continue;
                  },§§goto(addr72))
                  {
                     while(_loc4_ || useHttps)
                     {
                        if(!_loc5_)
                        {
                           this.§[!_§(§1!%§ as §3!1§);
                           loop8:
                           while(_loc4_)
                           {
                              continue loop6;
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop8;
                                 }
                                 addr36:
                                 if(_loc4_ || dontAddChild)
                                 {
                                    break;
                                 }
                                 addr101:
                                 while(true)
                                 {
                                    this.§ T§(§1!%§);
                                    continue loop6;
                                    §§goto(addr36);
                                 }
                              }
                              return;
                           }
                           continue;
                        }
                        §§goto(addr122);
                     }
                     while(true)
                     {
                        §§goto(addr101);
                        §§goto(addr75);
                     }
                     addr75:
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function § T§(picture:Sprite) : void
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
            if(this.§6'§.numChildren <= 0)
            {
               if(_loc2_)
               {
               }
               loop1:
               while(_loc3_ || _loc3_)
               {
                  this.§6'§.scrollRect = new Rectangle(0,0,VERSUS_DIMENSION,VERSUS_DIMENSION);
                  while(!_loc2_)
                  {
                     continue loop1;
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           this.§6'§.addChild(picture);
                           continue;
                        }
                        continue loop1;
                     }
                     if(_loc3_ || picture)
                     {
                        return;
                     }
                  }
                  break;
               }
               continue;
            }
            this.§6'§.removeChildAt(0);
            §§goto(addr127);
         }
      }
      
      private function §[!_§(picture:§3!1§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               do
               {
                  §§push(picture.width > 0);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || this)
                     {
                        addr145:
                        §§push(§§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              addr156:
                              loop6:
                              while(true)
                              {
                                 §§push(picture.height > 0);
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 addr110:
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       picture.addEventListener(Event.COMPLETE,this.§^j§);
                                       while(_loc3_)
                                       {
                                          if(!(_loc3_ || picture))
                                          {
                                             this.§super§(picture,VERSUS_DIMENSION);
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          addr111:
                                          if(_loc3_)
                                          {
                                             break loop4;
                                          }
                                          continue loop6;
                                          if(_loc3_ || this)
                                          {
                                             §§goto(addr29);
                                          }
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr114);
                              }
                           }
                           addr155:
                        }
                        while(true)
                        {
                           §§goto(addr110);
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr145);
               }
               while(!_loc3_);
               
               addr29:
               return;
            }
         }
         §§goto(addr156);
      }
      
      private function §^j§(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || this)
         {
         }
         loop0:
         while(true)
         {
            addr44:
            addr56:
            while(true)
            {
               continue loop0;
            }
            var targetPicture:§3!1§ = e.currentTarget as §3!1§;
            if(_loc4_)
            {
            }
            loop3:
            do
            {
               if(targetPicture)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        targetPicture.removeEventListener(Event.COMPLETE,this.§^j§);
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(!(_loc4_ && targetPicture))
                           {
                              while(true)
                              {
                                 this.§super§(targetPicture,VERSUS_DIMENSION);
                                 while(!(_loc3_ || targetPicture))
                                 {
                                 }
                                 if(!_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                              continue loop3;
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
            while(!_loc3_);
            
            return;
         }
      }
      
      private function §super§(picture:Sprite, dimension:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && dimension)
         {
         }
         var scale:* = NaN;
         if(_loc6_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc6_)
                  {
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           while(_loc6_ || this)
                           {
                           }
                           continue loop2;
                        }
                        if(!(_loc6_ || picture))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           addr78:
                           var realWidth:* = int(picture.width);
                           if(_loc7_)
                           {
                           }
                           var realHeight:* = int(picture.height);
                           if(_loc6_ || this)
                           {
                           }
                           loop7:
                           while(true)
                           {
                              §§push(picture is §9!S§);
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
                                          §§push(dimension);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() * 1.4);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   dimension = §§pop();
                                                   loop14:
                                                   while(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         picture.x = -5;
                                                         loop16:
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               picture.y = -5;
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(dimension);
                                                                     while(true)
                                                                     {
                                                                        §§push(realHeight);
                                                                        addr451:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           addr452:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr453:
                                                                              while(true)
                                                                              {
                                                                                 scale = §§pop();
                                                                                 addr454:
                                                                                 while(true)
                                                                                 {
                                                                                    addr447:
                                                                                    while(true)
                                                                                    {
                                                                                       picture.scaleX = scale;
                                                                                       addr444:
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          addr439:
                                                                                          while(true)
                                                                                          {
                                                                                             picture.scaleY = scale;
                                                                                             addr436:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr281:
                                                                        if(!(_loc6_ || picture))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr289:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc7_ && scale))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           scale = §§pop();
                                                                           loop40:
                                                                           for(; _loc6_ || scale; while(true)
                                                                           {
                                                                              if(!(_loc6_ || scale))
                                                                              {
                                                                                 continue loop40;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc7_ && picture))
                                                                                 {
                                                                                    §§goto(addr194);
                                                                                 }
                                                                                 §§goto(addr419);
                                                                              }
                                                                              §§goto(addr365);
                                                                              §§goto(addr144);
                                                                           },continue loop17)
                                                                           {
                                                                              addr306:
                                                                              if(_loc6_ || scale)
                                                                              {
                                                                                 loop41:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr220:
                                                                                       if(!(_loc6_ || dimension))
                                                                                       {
                                                                                          break;
                                                                                          addr213:
                                                                                       }
                                                                                       picture.scaleX = scale;
                                                                                       while(!_loc7_)
                                                                                       {
                                                                                          continue loop40;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    addr338:
                                                                                    addr335:
                                                                                    addr318:
                                                                                    picture.scaleX = scale;
                                                                                    addr330:
                                                                                    picture.scaleY = scale;
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr439);
                                                                                       }
                                                                                       §§goto(addr97);
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                    addr132:
                                                                                    if(_loc7_ && picture)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr139:
                                                                                    if(!(_loc6_ || this))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr132);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop45:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr144:
                                                                                                   if(!(_loc6_ || picture))
                                                                                                   {
                                                                                                      continue loop40;
                                                                                                   }
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr382:
                                                                                                               addr365:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(realWidth);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(§§pop() < realHeight)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(dimension);
                                                                                                                        if(_loc6_ || scale)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ || dimension))
                                                                                                                              {
                                                                                                                                 continue loop12;
                                                                                                                              }
                                                                                                                              §§push(realHeight);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    addr265:
                                                                                                                                    if(_loc6_ || picture)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || dimension)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr281);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr453);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr342:
                                                                                                                                          §§push(realWidth);
                                                                                                                                          if(_loc6_ || scale)
                                                                                                                                          {
                                                                                                                                             addr351:
                                                                                                                                             §§push(Number(§§pop() / §§pop()));
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             scale = §§pop();
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr338);
                                                                                                                                             }
                                                                                                                                             §§goto(addr436);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr451);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr453);
                                                                                                                                    }
                                                                                                                                    §§goto(addr351);
                                                                                                                                 }
                                                                                                                                 §§goto(addr289);
                                                                                                                              }
                                                                                                                              §§goto(addr342);
                                                                                                                           }
                                                                                                                           §§goto(addr452);
                                                                                                                        }
                                                                                                                        §§goto(addr265);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        realWidth = §§pop();
                                                                                                                        addr409:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           break loop41;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr408:
                                                                                                                  }
                                                                                                                  addr394:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     realHeight = §§pop();
                                                                                                                     continue loop38;
                                                                                                                  }
                                                                                                                  §§goto(addr306);
                                                                                                               }
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr367:
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     break loop40;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr419:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push((picture as §3!1§).§&!i§);
                                                                                                                        addr407:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr367);
                                                                                                                  }
                                                                                                                  addr418:
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr354);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr213);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(!_loc7_)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop45;
                                                                                                      }
                                                                                                      §§goto(addr447);
                                                                                                   }
                                                                                                   §§goto(addr335);
                                                                                                   addr171:
                                                                                                }
                                                                                                §§goto(addr447);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                       addr130:
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!(_loc6_ || scale))
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr454);
                                                                                    }
                                                                                    §§goto(addr97);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§push((picture as §3!1§).§0o§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr394);
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr342);
                                                                           §§push(dimension);
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     picture.scaleY = scale;
                                                                     §§goto(addr171);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(picture is §3!1§);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr418);
                                    }
                                    addr97:
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc6_ || dimension)
            {
               §§goto(addr44);
            }
            §§goto(addr55);
         }
         §§goto(addr78);
      }
   }
}
