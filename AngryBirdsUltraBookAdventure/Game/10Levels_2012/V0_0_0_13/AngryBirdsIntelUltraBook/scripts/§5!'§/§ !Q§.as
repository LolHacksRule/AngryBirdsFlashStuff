package §5!'§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class § !Q§ extends Sprite
   {
      
      public static var sAvatarRenderer:§^E§;
      
      {
         var sAvatarRenderer:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || sAvatarRenderer)
         {
         }
      }
      
      private var §]!Q§:DisplayObjectContainer;
      
      public var §[5§:String;
      
      private var §7!7§:Boolean;
      
      private var § S§:int;
      
      public function § !Q§(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || imageSize)
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
                     while(!_loc6_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§7!7§ = ignoreBackground;
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr122);
         }
         §§push(imageSize);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               if(_loc5_)
               {
                  §§push(§>Y§.NORMAL);
                  if(!(_loc6_ && avatarString))
                  {
                     §§push(_loc4_);
                     if(_loc5_ || ignoreBackground)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc5_)
                           {
                              addr196:
                              §§push(0);
                              if(_loc5_ || avatarString)
                              {
                              }
                           }
                           else
                           {
                              addr224:
                              §§push(2);
                              if(_loc5_ || imageSize)
                              {
                                 addr232:
                              }
                           }
                           §§goto(addr234);
                        }
                        else
                        {
                           addr210:
                           if(§>Y§.SQUARE !== _loc4_)
                           {
                              if(false)
                              {
                                 §§goto(addr224);
                              }
                              else
                              {
                                 §§push(2);
                              }
                              addr234:
                              switch(§§pop())
                              {
                                 case 0:
                                    if(_loc5_ || avatarString)
                                    {
                                       this.§ S§ = 100;
                                       if(_loc5_ || ignoreBackground)
                                       {
                                          if(_loc5_)
                                          {
                                             addr291:
                                             if(avatarString.length > 0)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   addr296:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§[5§ = avatarString;
                                                      addr289:
                                                      loop8:
                                                      while(true)
                                                      {
                                                         addr282:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§2!-§(avatarString);
                                                               addr272:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || avatarString)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                addr295:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || avatarString)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr272);
                                          }
                                          addr279:
                                          break;
                                          addr279:
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr295);
                                 case 1:
                                    if(_loc5_ || imageSize)
                                    {
                                       this.§ S§ = 50;
                                       if(!_loc6_)
                                       {
                                          if(_loc5_ || ignoreBackground)
                                          {
                                             §§goto(addr291);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr279);
                                 default:
                                    if(!(_loc6_ && ignoreBackground))
                                    {
                                       while(true)
                                       {
                                          this.§ S§ = int(imageSize);
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr279);
                                          }
                                          break;
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr291);
                              }
                              return;
                           }
                           if(_loc5_)
                           {
                              §§push(1);
                              if(!(_loc5_ || imageSize))
                              {
                                 §§goto(addr232);
                              }
                           }
                           else
                           {
                              §§goto(addr224);
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr224);
                     }
                  }
                  §§goto(addr210);
               }
            }
            §§goto(addr196);
         }
         §§goto(addr291);
      }
      
      public function §%P§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return this.§ S§;
      }
      
      private function §2!-§(avatarString:String) : void
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
               while(this.§]!Q§ == null)
               {
                  if(!_loc3_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  do
                  {
                     this.§]!Q§ = new Sprite();
                  }
                  while(!(_loc2_ || this));
                  
                  break;
               }
               loop2:
               while(true)
               {
                  if(this.§]!Q§.numChildren <= 0)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           sAvatarRenderer.render(avatarString,this.§&!M§,this.§%P§(),this.§7!7§);
                           while(!_loc3_)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 this.§]!Q§.removeChildAt(0);
                                 break;
                              }
                              addr122:
                              if(!_loc3_)
                              {
                                 if(_loc2_ || avatarString)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc3_ && avatarString))
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr135);
      }
      
      public function §&!M§(bitmapData:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && bitmap))
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  continue loop0;
               }
            }
            addr46:
         }
         while(true)
         {
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr46);
            }
            §§goto(addr42);
         }
         var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         if(!(_loc3_ && bitmapData))
         {
            while(true)
            {
               this.§]!Q§.addChild(bitmap);
               loop7:
               for(; _loc4_ || bitmap; if(_loc3_ && bitmap)
               {
                  continue;
               },§§goto(addr110))
               {
                  bitmap.y = -10;
                  loop8:
                  while(!(_loc3_ && _loc3_))
                  {
                     addr122:
                     if(!(_loc3_ && _loc3_))
                     {
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop7;
                           }
                           continue loop8;
                           addr110:
                           addChild(this.§]!Q§);
                           while(_loc3_)
                           {
                           }
                           if(!(_loc3_ && bitmap))
                           {
                              addr89:
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    bitmap.x = -10;
                                    break loop8;
                                    §§goto(addr89);
                                 }
                                 addr157:
                              }
                              return;
                           }
                        }
                        continue loop7;
                     }
                     addr164:
                     while(true)
                     {
                        §§goto(addr157);
                        §§goto(addr122);
                     }
                  }
                  while(true)
                  {
                     continue loop7;
                     §§goto(addr115);
                  }
                  addr115:
               }
            }
         }
         §§goto(addr164);
      }
   }
}
