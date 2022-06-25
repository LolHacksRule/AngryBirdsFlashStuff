package §_-dJ§
{
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-J§;
   import §_-Ga§.§_-bm§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-TG§.§_-L8§;
   import §_-TG§.§_-pR§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import com.rovio.assets.§_-Fc§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §_-SS§ extends §_-E0§
   {
      
      protected static const §_-8g§:uint = 7602176;
      
      protected static var §_-x3§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-SS§)
         {
            §_-8g§ = 7602176;
         }
      }
      
      protected var §_-BZ§:§_-09b§;
      
      protected var §_-MR§:§_-09b§;
      
      protected var §_-Gd§:Boolean = false;
      
      public function §_-SS§(param1:§_-00u§, param2:§_-bm§, param3:§_-uY§.Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §_-ie§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-P8§(false);
         }
      }
      
      public function §_-05R§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(Boolean(this.§_-BZ§));
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr80:
                     loop3:
                     while(true)
                     {
                        addr38:
                        addr81:
                        while(true)
                        {
                           §§push(Boolean(this.§_-MR§));
                           if(_loc4_ && this)
                           {
                              continue loop2;
                           }
                           if(_loc4_ && _loc2_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        addr81:
                        var _loc1_:§_-J§ = §_-6A§.animationManager.getAnimation("SUPER_SLINGSHOT");
                        var _loc2_:Texture = _loc1_.getFrame(0).texture;
                        var _loc3_:Texture = _loc1_.getFrame(1).texture;
                        if(!_loc4_)
                        {
                           this.§_-BZ§ = new §_-09b§(_loc2_);
                           loop5:
                           while(true)
                           {
                              this.§_-MR§ = new §_-09b§(_loc3_);
                              while(true)
                              {
                                 this.§_-P8§(true);
                                 loop7:
                                 while(!(_loc4_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       this.§_-qT§(§_-L8§.§_-3C§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                    return;
                                 }
                              }
                           }
                           addr101:
                        }
                        §§goto(addr147);
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        this.§_-P8§(true);
                        return;
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     §§goto(addr81);
                  }
               }
               §§goto(addr147);
            }
         }
         else if(false)
         {
            §§goto(addr38);
         }
         §§goto(addr81);
      }
      
      public function §_-qT§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-pR§ = null;
         for each(_loc2_ in §_-j9§)
         {
            if(_loc6_)
            {
               _loc2_.§_-PV§ = param1;
            }
         }
      }
      
      override protected function getSlingshotAnimation() : §_-J§
      {
         return §_-6A§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §_-P8§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-Gd§);
            while(true)
            {
               if(§§pop() != param1)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        §_-yR§();
                        loop2:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§_-Fn§));
                              if(!_loc2_)
                              {
                                 if(param1)
                                 {
                                    addr145:
                                    §§push(§_-L8§.§_-04j§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc2_ && this)
                                       {
                                          addr168:
                                          §§pop().§_-Fn§ = Number(§§pop());
                                          while(true)
                                          {
                                             if(!(_loc3_ || param1))
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                §§goto(addr211);
                                             }
                                             §§goto(addr216);
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§_-L8§.§_-Cr§);
                                    if(_loc3_)
                                    {
                                       §§goto(addr168);
                                    }
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr145);
                              addr211:
                           }
                           return;
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                        addr217:
                     }
                     while(true)
                     {
                        this.§_-L4§();
                        §§goto(addr204);
                     }
                  }
                  continue;
               }
               §§goto(addr216);
            }
         }
         §§goto(addr217);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.updateAnimations(param1);
            loop0:
            for(; this.§_-Gd§; if(_loc3_ || _loc3_)
            {
               break;
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§_-BZ§);
                  loop2:
                  while(true)
                  {
                     §§push(§_-c§ / §_-00u§.§_-lY§);
                     if(!_loc2_)
                     {
                        §§push(8);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              §§push(8);
                           }
                           loop4:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§_-BZ§);
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop2;
                                 }
                                 §§push(§_-l1§ / §_-00u§.§_-lY§);
                                 if(!_loc2_)
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop4;
                                    }
                                    §§push(30);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc2_)
                                       {
                                          addr161:
                                          §§push(10);
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().y = §§pop();
                                       loop6:
                                       for(; !_loc2_; while(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr125);
                                       })
                                       {
                                          §§push(this.§_-MR§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§_-c§ / §_-00u§.§_-lY§);
                                             if(!(_loc2_ && param1))
                                             {
                                                §§push(38);
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§push(4);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr64:
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc3_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr117:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   addr53:
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr63:
                                                      §§goto(addr64);
                                                      §§push(6);
                                                   }
                                                   §§goto(addr72);
                                                }
                                             }
                                             §§goto(addr117);
                                             addr125:
                                             while(true)
                                             {
                                                §§push(this.§_-MR§);
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§_-l1§ / §_-00u§.§_-lY§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(37);
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr53);
                                                   }
                                                   §§goto(addr64);
                                                }
                                                §§goto(addr63);
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr161);
                              }
                           }
                           addr203:
                        }
                        while(true)
                        {
                        }
                     }
                     §§goto(addr203);
                  }
               }
            }
            return;
         }
         §§goto(addr125);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§_-Gd§)
            {
               super.playBirdShotSound();
               if(!(_loc1_ && _loc1_))
               {
                  if(!_loc2_)
                  {
                     addr57:
                     §_-pX§.playSound("Powerup_Speed");
                     addr60:
                  }
                  else
                  {
                     addr53:
                  }
                  return;
               }
               §§goto(addr60);
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§_-pR§ = null;
         _loc2_ = §_-j9§[§_-eE§];
         §§push(§_-7P§ / §_-Fn§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  if(_loc2_.name.toUpperCase() != "BIRD_GREEN")
                  {
                     §§push(Number(§_-E0§.BIRD_LAUNCH_FORCE));
                     loop1:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop2:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_ == null);
                              loop4:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   continue loop0;
                                                }
                                                while(_loc5_ || _loc1_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc2_.§_-PV§);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§_-E0§.BIRD_LAUNCH_FORCE_GREEN));
                                                         if(!_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr180:
                                                   }
                                                }
                                                continue loop3;
                                                addr152:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr54:
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               break loop9;
                                                            }
                                                            addr141:
                                                            addr72:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr95:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > 0);
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr152);
                                                         }
                                                         §§goto(addr54);
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr72);
                                                }
                                                return §§pop();
                                                addr43:
                                             }
                                             §§goto(addr95);
                                          }
                                          §§goto(addr43);
                                       }
                                       addr142:
                                       return §§pop();
                                       addr113:
                                    }
                                    §§goto(addr151);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr180);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr131);
      }
      
      public function §_-E6§(param1:Number) : §_-pR§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-pR§ = null;
         _loc2_ = §_-j9§[§_-eE§];
         if(_loc4_ || this)
         {
            if(_loc2_.§_-IX§ < 1)
            {
               loop0:
               while(true)
               {
                  _loc2_.§_-IX§ = 1;
                  addr116:
                  addr101:
                  while(true)
                  {
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc3_ && this)
                     {
                        continue loop0;
                     }
                     §§push(_loc2_.sprite);
                     loop3:
                     while(true)
                     {
                        §§push(_loc2_.scale);
                        addr71:
                        while(true)
                        {
                           §§pop().scaleX = §§pop();
                           addr72:
                           while(!(_loc3_ && this))
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr116);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_.scale = param1;
               §§goto(addr101);
               §§goto(addr116);
            }
         }
         §§goto(addr116);
      }
      
      protected function §_-L4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!§_-x3§)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc2_ = new §_-Fc§.§_-YE§("MovieClip_SlingHolder")();
                  if(!_loc5_)
                  {
                     setTint(_loc2_,§_-8g§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc4_ || _loc3_)
                     {
                     }
                     addr88:
                     §_-O-§ = new §_-uY§.Sprite();
                     addr92:
                     var _loc1_:§_-09b§ = new §_-09b§(§_-x3§);
                     if(_loc4_ || this)
                     {
                        _loc1_.rotation = Math.PI;
                        loop0:
                        while(true)
                        {
                           _loc1_.x = _loc1_.width / 2;
                           while(true)
                           {
                              _loc1_.y = _loc1_.height / 2;
                              while(!_loc5_)
                              {
                                 §_-O-§.addChild(_loc1_);
                                 while(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §_-0A8§ = new §_-uY§.Sprite();
                                       loop4:
                                       while(!_loc5_)
                                       {
                                          §_-08a§ = new §_-2p§(2,2,§_-8g§);
                                          while(true)
                                          {
                                             §_-0A8§.addChild(§_-08a§);
                                             loop6:
                                             while(_loc4_ || _loc1_)
                                             {
                                                while(true)
                                                {
                                                   §_-0B6§ = new §_-uY§.Sprite();
                                                   while(true)
                                                   {
                                                      §_-03K§ = new §_-2p§(2,2,§_-8g§);
                                                      while(!(_loc5_ && _loc2_))
                                                      {
                                                         §_-0B6§.addChild(§_-03K§);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§goto(addr139);
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr173);
                  }
                  §_-x3§ = §_-6A§.textureManager.getTextureFromBitmapData(_loc3_);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr88);
      }
   }
}
