package §@N§
{
   import §"R§.§ !Q§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§7!,§;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §-w§.§1!;§;
   import §0!N§.§=+§;
   import §^!+§.Texture;
   import com.rovio.assets.§%!G§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §7P§ extends §>!A§
   {
      
      protected static const §81§:uint = 7602176;
      
      protected static var §2!5§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §7P§))
         {
            §81§ = 7602176;
         }
      }
      
      protected var §1y§:§?!U§;
      
      protected var §]a§:§?!U§;
      
      protected var §%-§:Boolean = false;
      
      public function §7P§(param1:§^g§, param2:§=+§, param3:§'!9§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §^m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[Y§(false);
         }
      }
      
      public function §]v§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(Boolean(this.§1y§));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(Boolean(this.§]a§));
                  }
                  while(!_loc4_);
                  
                  addr53:
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     this.§[Y§(true);
                     return;
                     addr45:
                  }
                  §§goto(addr45);
               }
               else
               {
                  var _loc1_:§1!;§ = §?l§.animationManager.getAnimation("SUPER_SLINGSHOT");
                  var _loc2_:Texture = _loc1_.getFrame(0).texture;
                  var _loc3_:Texture = _loc1_.getFrame(1).texture;
                  if(_loc4_ || _loc1_)
                  {
                     this.§1y§ = new §?!U§(_loc2_);
                     while(true)
                     {
                        this.§]a§ = new §?!U§(_loc3_);
                        while(_loc4_ || _loc3_)
                        {
                           this.§[Y§(true);
                           while(!_loc5_)
                           {
                              this.§79§(§0;§.§super§);
                              if(_loc4_)
                              {
                                 return;
                                 addr112:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr45);
      }
      
      public function §79§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!,§ = null;
         for each(_loc2_ in §?$§)
         {
            if(_loc6_)
            {
               _loc2_.§5!6§ = param1;
            }
         }
      }
      
      override protected function getSlingshotAnimation() : §1!;§
      {
         return §?l§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §[Y§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%-§);
            while(true)
            {
               if(§§pop() == param1)
               {
                  addr215:
                  while(!(_loc3_ && param1))
                  {
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §+! §();
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§3A§();
                              addr203:
                              §§goto(addr215);
                           }
                           addr201:
                        }
                        while(true)
                        {
                           §§push(§§findproperty(§5!G§));
                           if(!_loc3_)
                           {
                              if(param1)
                              {
                                 addr151:
                                 §§push(§0;§.§25§);
                                 if(!_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc3_)
                                    {
                                       addr168:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§0;§.§#!A§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr168);
                                 }
                              }
                              §§pop().§5!G§ = §§pop();
                              continue loop2;
                           }
                           §§goto(addr151);
                           §§goto(addr210);
                        }
                     }
                     continue;
                  }
                  §§goto(addr201);
               }
               continue;
               return;
            }
         }
         §§goto(addr170);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.updateAnimations(param1);
            while(this.§%-§)
            {
               while(_loc2_ || _loc3_)
               {
                  §§push(this.§1y§);
                  loop2:
                  while(true)
                  {
                     §§push(§,G§ / §^g§.§^!S§);
                     if(!_loc3_)
                     {
                        §§push(8);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc2_)
                           {
                              addr195:
                              §§push(8);
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              addr196:
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop2;
                           }
                           addr197:
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr195);
                  }
               }
            }
            return;
         }
         §§goto(addr198);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§%-§)
            {
               super.playBirdShotSound();
               if(!(_loc2_ || _loc1_))
               {
                  addr55:
               }
               return;
            }
            if(!_loc1_)
            {
               § !Q§.playSound("Powerup_Speed");
            }
         }
         §§goto(addr55);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§7!,§ = null;
         _loc2_ = §?$§[§;&§];
         §§push(§>!]§ / §5!G§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc2_ != null)
            {
               loop10:
               while(true)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc4_)
                     {
                        §§push(Number(§>!A§.BIRD_LAUNCH_FORCE_GREEN));
                        while(true)
                        {
                           addr178:
                           loop9:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr179:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 continue loop9;
                              }
                           }
                        }
                        addr174:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_ == null);
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(!§§pop());
                        }
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr153:
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    §§push(_loc2_.§5!6§);
                                 }
                                 §§push(§§pop() > 0);
                                 addr98:
                                 continue loop2;
                                 if(_loc4_ || _loc1_)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           else
                           {
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop10;
                                       }
                                       addr122:
                                       §§push(_loc2_.§5!6§ * _loc3_);
                                    }
                                    else
                                    {
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc4_ || this)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         while(_loc4_ || _loc1_)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§goto(addr98);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr174);
                                                            }
                                                         }
                                                         break loop6;
                                                         addr74:
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr68);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                   §§goto(addr122);
                                                }
                                                break;
                                             }
                                             addr68:
                                             return §§pop() * §§pop();
                                          }
                                          addr124:
                                          return §§pop();
                                          addr37:
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr37);
                              }
                              §§goto(addr178);
                              addr114:
                           }
                           §§goto(addr74);
                        }
                     }
                  }
                  else
                  {
                     §§push(Number(§>!A§.BIRD_LAUNCH_FORCE));
                  }
                  §§goto(addr178);
               }
               addr164:
            }
            §§goto(addr124);
         }
         §§goto(addr164);
      }
      
      public function §+!u§(param1:Number) : §7!,§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!,§ = null;
         _loc2_ = §?$§[§;&§];
         if(_loc4_ || _loc2_)
         {
            if(_loc2_.§%! § < 1)
            {
               loop0:
               while(true)
               {
                  _loc2_.§%! § = 1;
                  addr121:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(_loc3_ && this)
                     {
                        continue loop0;
                     }
                     addr108:
                     §§push(_loc2_.sprite);
                     if(!(_loc3_ && this))
                     {
                        §§push(_loc2_.scale);
                        if(!(_loc3_ && this))
                        {
                           §§pop().scaleY = §§pop();
                           if(_loc3_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 return _loc2_;
                              }
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc2_.sprite);
                              addr98:
                              while(true)
                              {
                                 §§push(_loc2_.scale);
                                 §§goto(addr108);
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop().scaleX = §§pop();
                           continue loop6;
                        }
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr121);
               }
            }
            while(true)
            {
               _loc2_.scale = param1;
               §§goto(addr121);
            }
         }
         §§goto(addr113);
      }
      
      protected function §3A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!§2!5§)
            {
               if(!_loc4_)
               {
                  addr34:
                  _loc2_ = new §%!G§.§^!B§("MovieClip_SlingHolder")();
                  if(!_loc4_)
                  {
                     setTint(_loc2_,§81§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(!_loc4_)
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_ || _loc3_)
                     {
                     }
                     addr79:
                     §'c§ = new §'!9§.Sprite();
                     var _loc1_:§?!U§ = new §?!U§(§2!5§);
                     if(_loc5_)
                     {
                        _loc1_.rotation = Math.PI;
                        loop0:
                        while(true)
                        {
                           _loc1_.x = _loc1_.width / 2;
                           loop1:
                           while(true)
                           {
                              _loc1_.y = _loc1_.height / 2;
                              while(true)
                              {
                                 §'c§.addChild(_loc1_);
                                 continue loop0;
                                 loop6:
                                 while(_loc5_ || _loc2_)
                                 {
                                    §&!5§ = new §'!9§.Sprite();
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §,i§ = new §%!g§(2,2,§81§);
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                addr136:
                                                if(!(_loc5_ || this))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             §0!d§.addChild(§8!u§);
                                             continue loop6;
                                             §§goto(addr136);
                                          }
                                          return;
                                          addr125:
                                          addr172:
                                       }
                                       break;
                                       if(_loc4_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr125);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr172);
                  }
                  §2!5§ = §?l§.textureManager.getTextureFromBitmapData(_loc3_);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr34);
      }
   }
}
