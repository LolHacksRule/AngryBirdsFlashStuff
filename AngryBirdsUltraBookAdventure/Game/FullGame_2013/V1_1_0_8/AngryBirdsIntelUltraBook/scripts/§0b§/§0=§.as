package §0b§
{
   import §"!i§.§"!'§;
   import §40§.§1!g§;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §40§.§<!P§;
   import §=`§.§%!L§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import com.rovio.assets.§,!j§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §0=§ extends §1!g§
   {
      
      protected static const §;!e§:uint = 7602176;
      
      protected static var §^G§:Texture;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;!e§ = 7602176;
         }
      }
      
      protected var §=!U§:§"<§;
      
      protected var §,T§:§"<§;
      
      public function §0=§(param1:§5G§, param2:§"!'§, param3:§`g§.Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §&!V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§-+§(false);
         }
      }
      
      public function §4!@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §§push(Boolean(this.§=!U§));
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr85:
                     while(true)
                     {
                        §§push(Boolean(this.§,T§));
                        if(_loc5_ || _loc2_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr84:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     var _loc1_:§%!L§ = §#!U§.animationManager.getAnimation("SUPER_SLINGSHOT");
                     var _loc2_:Texture = _loc1_.getFrame(0).texture;
                     var _loc3_:Texture = _loc1_.getFrame(1).texture;
                  }
                  if(_loc4_ && _loc2_)
                  {
                     break;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§-+§(true);
                     break;
                  }
                  continue;
                  if(_loc5_)
                  {
                     this.§=!U§ = new §"<§(_loc2_);
                     loop2:
                     do
                     {
                        this.§,T§ = new §"<§(_loc3_);
                        while(true)
                        {
                           this.§-+§(true);
                           while(!_loc4_)
                           {
                              this.§0!K§(§2!y§.§9!K§);
                              if(!(_loc4_ && _loc1_))
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(_loc4_ && _loc1_);
                     
                  }
                  return;
               }
               return;
               addr61:
            }
            §§goto(addr84);
         }
         §§goto(addr61);
      }
      
      public function §0!K§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!P§ = null;
         for each(_loc2_ in § Y§)
         {
            if(_loc6_)
            {
               _loc2_.§+_§ = param1;
            }
         }
      }
      
      override protected function getSlingshotAnimation() : §%!L§
      {
         return §#!U§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §-+§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§ w§ != param1)
            {
               loop0:
               while(true)
               {
                  if(!param1)
                  {
                     §[w§();
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§§findproperty(§-m§));
                           if(_loc2_ || param1)
                           {
                              if(param1)
                              {
                                 addr151:
                                 §§push(§2!y§.§=]§);
                                 if(_loc2_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc2_ || this)
                                    {
                                    }
                                    addr184:
                                    §§pop().§-m§ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          addr212:
                                          continue;
                                       }
                                       addr204:
                                       while(_loc2_)
                                       {
                                          this.§1A§();
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§2!y§.§5L§);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr151);
                        }
                     }
                  }
                  §§goto(addr204);
               }
            }
            §§goto(addr212);
         }
         §§goto(addr213);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.updateAnimations(param1);
            for(; § w§; if(_loc2_ && _loc3_)
            {
               continue;
            })
            {
               if(!(_loc2_ && _loc2_))
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  §§push(this.§=!U§);
                  if(!_loc2_)
                  {
                     §§push(§!!3§ / §5G§.§6+§);
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           §§push(30);
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc2_)
                                 {
                                    addr156:
                                    §§push(10);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr164:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc2_ && param1))
                                       {
                                          §§pop().y = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(this.§,T§);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§#!!§ / §5G§.§6+§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(38);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr127:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§push(4);
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop3;
                                                      }
                                                      addr127:
                                                   }
                                                   while(true)
                                                   {
                                                      addr57:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§pop().y = §§pop();
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   addr126:
                                                }
                                                §§goto(addr127);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(8);
                                             addr207:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc3_ || param1)
                                                {
                                                   §§push(8);
                                                }
                                                addr217:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr206:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr217);
                                    }
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr156);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr202:
                  }
                  §§goto(addr206);
               }
            }
            return;
         }
         §§goto(addr202);
         §§push(this.§=!U§);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!§ w§)
            {
               super.playBirdShotSound();
               if(_loc1_)
               {
                  if(!_loc1_)
                  {
                     addr50:
                     §-!Q§.§#3§("Powerup_Speed");
                     addr53:
                  }
                  return;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr50);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§<!P§ = null;
         _loc2_ = § Y§[§1]§];
         §§push(§0!g§ / §-m§);
         if(!(_loc5_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && this))
         {
            if(_loc2_ != null)
            {
               loop12:
               while(true)
               {
                  if(_loc2_.name.toUpperCase() != "BIRD_GREEN")
                  {
                     §§push(Number(§1!g§.BIRD_LAUNCH_FORCE));
                     loop6:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop7:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop8:
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
                                    if(§§pop())
                                    {
                                       addr161:
                                       §§pop();
                                       §§push(_loc2_.§+_§);
                                       while(true)
                                       {
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§pop() > 0);
                                          if(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc4_ || this))
                                             {
                                                continue loop4;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                          §§goto(addr162);
                                       }
                                       addr162:
                                       addr87:
                                    }
                                    while(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop12;
                                             }
                                             §§push(_loc2_.§+_§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr123:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr124:
                                                   do
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   while(!_loc4_);
                                                   
                                                   return §§pop();
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§1!g§.BIRD_LAUNCH_FORCE_GREEN));
                                             }
                                             addr171:
                                          }
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                          addr174:
                                       }
                                       else
                                       {
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr47);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr171);
               }
               addr166:
            }
            addr47:
            while(true)
            {
               §§push(_loc1_);
               if(_loc4_)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc1_)
                        {
                           §§push(_loc3_);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              break;
                           }
                           §§goto(addr123);
                        }
                        else
                        {
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr124);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr166);
      }
      
      public function §5!k§(param1:Number) : §<!P§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!P§ = null;
         _loc2_ = § Y§[§1]§];
         if(!(_loc4_ && param1))
         {
            if(_loc2_.§'T§ < 1)
            {
               while(true)
               {
                  _loc2_.§'T§ = 1;
                  addr105:
                  while(true)
                  {
                  }
               }
               addr102:
            }
            while(true)
            {
               _loc2_.scale = param1;
               addr93:
               while(_loc3_)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_.sprite);
                     loop4:
                     while(true)
                     {
                        §§push(_loc2_.scale);
                        addr87:
                        while(true)
                        {
                           §§pop().scaleX = §§pop();
                           continue loop4;
                        }
                     }
                     addr85:
                  }
                  else
                  {
                     §§goto(addr102);
                  }
               }
               §§goto(addr105);
            }
         }
         while(true)
         {
            §§push(_loc2_.sprite);
            if(!(_loc4_ && param1))
            {
               §§push(_loc2_.scale);
               if(_loc3_ || this)
               {
                  §§pop().scaleY = §§pop();
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr93);
               }
               §§goto(addr87);
            }
            §§goto(addr85);
         }
         return _loc2_;
      }
      
      protected function §1A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc1_))
         {
            if(!§^G§)
            {
               if(_loc5_ || _loc2_)
               {
                  addr39:
                  _loc2_ = new §,!j§.§!!N§("MovieClip_SlingHolder")();
                  if(!_loc4_)
                  {
                     setTint(_loc2_,§;!e§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_)
                     {
                        §^G§ = §#!U§.textureManager.getTextureFromBitmapData(_loc3_);
                        addr84:
                        §8r§ = new §`g§.Sprite();
                     }
                  }
                  §§goto(addr84);
               }
               var _loc1_:§"<§ = new §"<§(§^G§);
               if(_loc5_)
               {
                  _loc1_.rotation = Math.PI;
                  loop0:
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        while(true)
                        {
                           §8r§.addChild(_loc1_);
                           loop3:
                           while(_loc5_ || this)
                           {
                              while(true)
                              {
                                 §<g§ = new §`g§.Sprite();
                                 loop5:
                                 while(true)
                                 {
                                    §4!O§ = new § O§(2,2,§;!e§);
                                    addr174:
                                    while(true)
                                    {
                                       §<g§.addChild(§4!O§);
                                       addr163:
                                       while(!_loc4_)
                                       {
                                          §=d§ = new §`g§.Sprite();
                                          while(_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        addr123:
                        if(!(_loc4_ && this))
                        {
                           return;
                        }
                     }
                  }
               }
               §§goto(addr202);
            }
            §§goto(addr84);
         }
         §§goto(addr39);
      }
   }
}
