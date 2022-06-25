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
         var sAvatarRenderer:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && § !Q§)
         {
         }
      }
      
      private var §]!Q§:DisplayObjectContainer;
      
      public var §[5§:String;
      
      private var §7!7§:Boolean;
      
      private var § S§:int;
      
      public function § !Q§(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         if(!(_loc5_ && avatarString))
         {
            while(true)
            {
               while(_loc6_ || ignoreBackground)
               {
                  loop2:
                  while(true)
                  {
                     do
                     {
                        super();
                        continue loop2;
                     }
                     while(!(_loc6_ || ignoreBackground));
                     
                     §§push(imageSize);
                     if(_loc6_ || this)
                     {
                        var _loc4_:* = §§pop();
                        if(!(_loc5_ && ignoreBackground))
                        {
                           if(!_loc5_)
                           {
                              §§push(§>Y§.NORMAL);
                              if(!(_loc5_ && this))
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr229:
                                          §§push(1);
                                          if(!_loc6_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr226:
                                       if(§>Y§.SQUARE === _loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr229);
                                          }
                                          else
                                          {
                                             addr235:
                                             §§push(2);
                                             if(_loc6_ || imageSize)
                                             {
                                             }
                                          }
                                       }
                                       else if(false)
                                       {
                                          §§goto(addr235);
                                       }
                                       else
                                       {
                                          §§push(2);
                                       }
                                       §§goto(addr235);
                                    }
                                    loop12:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§ S§ = 100;
                                          addr310:
                                          if(avatarString.length > 0)
                                          {
                                             addr322:
                                             if(_loc6_ || ignoreBackground)
                                             {
                                                addr321:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                this.§[5§ = avatarString;
                                                loop8:
                                                while(true)
                                                {
                                                   addr296:
                                                   addr303:
                                                   while(_loc5_ && this)
                                                   {
                                                      continue loop11;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§2!-§(avatarString);
                                                      addr293:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ || avatarString))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && imageSize))
                                                            {
                                                               addr277:
                                                               break loop12;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                   }
                                                }
                                             }
                                             addr322:
                                          }
                                          break;
                                          addr108:
                                          addr103:
                                          addr113:
                                       case 1:
                                          if(!(_loc5_ && avatarString))
                                          {
                                             if(!(_loc5_ && avatarString))
                                             {
                                                this.§ S§ = 50;
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr108);
                                                   }
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr103);
                                          }
                                          §§goto(addr322);
                                       default:
                                          if(!(_loc5_ && avatarString))
                                          {
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   this.§ S§ = int(imageSize);
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc5_ && avatarString))
                                                      {
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr277);
                                             }
                                             else
                                             {
                                                §§goto(addr113);
                                             }
                                          }
                                          §§goto(addr303);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr226);
                           }
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr310);
                  }
                  while(_loc6_ || avatarString)
                  {
                     this.§7!7§ = ignoreBackground;
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      public function §%P§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§ S§;
      }
      
      private function §2!-§(avatarString:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(this.§]!Q§ == null)
               {
                  if(!(_loc2_ && avatarString))
                  {
                     if(_loc3_ || _loc3_)
                     {
                        continue loop0;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
               addr114:
               loop3:
               while(true)
               {
                  if(this.§]!Q§.numChildren <= 0)
                  {
                     loop4:
                     while(!(_loc2_ && _loc3_))
                     {
                        loop5:
                        do
                        {
                           sAvatarRenderer.render(avatarString,this.§&!M§,this.§%P§(),this.§7!7§);
                           while(_loc3_ || _loc2_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop5;
                              }
                           }
                           loop7:
                           while(true)
                           {
                              break loop4;
                              addr118:
                              while(true)
                              {
                                 this.§]!Q§.removeChildAt(0);
                                 continue loop7;
                              }
                           }
                           continue loop3;
                        }
                        while(_loc2_ && _loc3_);
                        
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        if(!(_loc2_ && avatarString))
                        {
                           continue loop3;
                        }
                     }
                  }
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §&!M§(bitmapData:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc3_ && bitmap)
         {
         }
         loop0:
         while(true)
         {
            addr40:
            addr52:
            while(true)
            {
               continue loop0;
            }
            var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
            if(!_loc3_)
            {
               while(true)
               {
                  this.§]!Q§.addChild(bitmap);
                  while(_loc4_)
                  {
                     while(_loc4_ || bitmapData)
                     {
                        bitmap.x = -10;
                        loop6:
                        for(; !_loc3_; if(!(_loc3_ && this))
                        {
                           return;
                        })
                        {
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 bitmap.y = -10;
                                 loop9:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       addChild(this.§]!Q§);
                                       while(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop8;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop9;
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
            §§goto(addr130);
         }
      }
   }
}
