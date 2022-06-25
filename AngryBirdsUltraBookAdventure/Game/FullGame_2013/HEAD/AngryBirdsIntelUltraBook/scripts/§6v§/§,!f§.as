package §6v§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §,!f§ extends Sprite
   {
      
      public static var sAvatarRenderer:§ ![§;
      
      {
         var sAvatarRenderer:Boolean = true;
         var _loc2_:Boolean = false;
         if(!sAvatarRenderer)
         {
         }
      }
      
      private var §=!G§:DisplayObjectContainer;
      
      public var §-!%§:String;
      
      private var §7!U§:Boolean;
      
      private var §'I§:int;
      
      public function §,!f§(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         if(!(_loc5_ && imageSize))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop5:
                     while(_loc6_ || this)
                     {
                        continue loop0;
                        this.§7!U§ = ignoreBackground;
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        addr135:
                        if(_loc6_ || imageSize)
                        {
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                        }
                        else
                        {
                           loop4:
                           while(true)
                           {
                              if(_loc6_ || ignoreBackground)
                              {
                                 continue loop5;
                              }
                              addr185:
                              while(true)
                              {
                                 super();
                                 continue loop4;
                              }
                           }
                        }
                        §§push(imageSize);
                        if(_loc6_)
                        {
                           var _loc4_:* = §§pop();
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 §§push(§5!D§.NORMAL);
                                 if(_loc6_ || this)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc5_ && avatarString))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || imageSize)
                                          {
                                             addr232:
                                             §§push(0);
                                             if(!(_loc6_ || this))
                                             {
                                                addr268:
                                             }
                                          }
                                          else
                                          {
                                             addr249:
                                             §§push(1);
                                             if(_loc5_ && imageSize)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr246:
                                          addr245:
                                          if(§5!D§.SQUARE === _loc4_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr249);
                                             }
                                             §§goto(addr270);
                                          }
                                          if(true)
                                          {
                                             addr270:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   if(!_loc5_)
                                                   {
                                                      this.§'I§ = 100;
                                                      if(!(_loc5_ && avatarString))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr327:
                                                            if(avatarString.length > 0)
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  addr332:
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     this.§-!%§ = avatarString;
                                                                     addr325:
                                                                     while(true)
                                                                     {
                                                                        addr320:
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           this.§]!^§(avatarString);
                                                                           addr306:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc5_ && ignoreBackground)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         break;
                                                         addr317:
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr332);
                                                case 1:
                                                   this.§'I§ = 50;
                                                   if(_loc6_ || ignoreBackground)
                                                   {
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr332);
                                                   addr99:
                                                   addr94:
                                                default:
                                                   if(!(_loc5_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§'I§ = int(imageSize);
                                                         if(!(_loc5_ && imageSize))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || avatarString)
                                                               {
                                                                  if(!(_loc5_ && avatarString))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr99);
                                                                  }
                                                               }
                                                               §§goto(addr94);
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr320);
                                             }
                                             return;
                                             §§push(2);
                                          }
                                          §§goto(addr270);
                                          §§push(2);
                                          if(_loc6_ || ignoreBackground)
                                          {
                                             §§goto(addr268);
                                          }
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr245);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr327);
                     }
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      public function §&F§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§'I§;
      }
      
      private function §]!^§(avatarString:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && avatarString)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
            }
            addr164:
         }
         loop1:
         for(; this.§=!G§ == null; if(!(_loc2_ && _loc3_))
         {
            break;
         })
         {
            if(_loc2_)
            {
            }
            while(!_loc2_)
            {
               this.§=!G§ = new Sprite();
               if(_loc3_ || _loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr164);
         }
         loop3:
         while(true)
         {
            if(this.§=!G§.numChildren <= 0)
            {
               loop4:
               while(true)
               {
                  if(!(_loc2_ && avatarString))
                  {
                     do
                     {
                        sAvatarRenderer.render(avatarString,this.§<F§,this.§&F§(),this.§7!U§);
                        while(_loc2_ && avatarString)
                        {
                        }
                     }
                     while(!(_loc3_ || this));
                     
                     if(!(_loc2_ && this))
                     {
                        if(_loc3_ || _loc2_)
                        {
                           break loop3;
                        }
                        addr104:
                        while(_loc2_)
                        {
                           break loop4;
                        }
                        continue loop3;
                     }
                     continue;
                  }
               }
               while(true)
               {
                  §§goto(addr104);
               }
               addr113:
            }
            this.§=!G§.removeChildAt(0);
            §§goto(addr113);
         }
      }
      
      public function §<F§(bitmapData:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  continue loop0;
               }
            }
            addr45:
         }
         while(true)
         {
            if(!(_loc3_ || _loc3_))
            {
               continue;
            }
            if(_loc3_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr45);
            }
            §§goto(addr41);
         }
         var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         if(!(_loc4_ && bitmapData))
         {
            while(true)
            {
               this.§=!G§.addChild(bitmap);
               addr151:
               while(_loc3_)
               {
               }
            }
         }
         while(true)
         {
            while(true)
            {
               bitmap.x = -10;
               loop7:
               while(_loc3_)
               {
                  while(!_loc4_)
                  {
                     bitmap.y = -10;
                     loop9:
                     while(!(_loc4_ && bitmapData))
                     {
                        while(_loc3_)
                        {
                           addChild(this.§=!G§);
                           continue loop9;
                           while(_loc3_ || bitmap)
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr81);
                           }
                           if(!(_loc4_ && bitmap))
                           {
                              return;
                           }
                        }
                        continue loop7;
                     }
                  }
                  §§goto(addr151);
               }
            }
         }
      }
   }
}
