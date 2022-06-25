package §8!G§
{
   import §!!§.§>4§;
   import §!!9§.Texture;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §+&§.§`o§;
   import §,6§.§^!>§;
   import §1!T§.§6!H§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import com.rovio.assets.§9!N§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §2!7§ extends § R§
   {
      
      protected static const §<!<§:uint = 7602176;
      
      protected static var §^N§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §2!7§))
         {
            §<!<§ = 7602176;
         }
      }
      
      protected var §&!k§:§;!U§;
      
      protected var §&!Z§:§;!U§;
      
      protected var §4!d§:Boolean = false;
      
      public function §2!7§(param1:§-!7§, param2:§>4§, param3:§9E§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §=0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ X§(false);
         }
      }
      
      public function §2n§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(Boolean(this.§&!k§));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(Boolean(this.§&!Z§));
                  }
                  while(!_loc4_);
                  
                  addr53:
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     this.§ X§(true);
                     return;
                     addr45:
                  }
                  §§goto(addr45);
               }
               else
               {
                  var _loc1_:§^!>§ = §+!X§.animationManager.getAnimation("SUPER_SLINGSHOT");
                  var _loc2_:Texture = _loc1_.getFrame(0).texture;
                  var _loc3_:Texture = _loc1_.getFrame(1).texture;
                  if(_loc4_ || _loc1_)
                  {
                     this.§&!k§ = new §;!U§(_loc2_);
                     while(true)
                     {
                        this.§&!Z§ = new §;!U§(_loc3_);
                        while(_loc4_ || _loc3_)
                        {
                           this.§ X§(true);
                           while(!_loc5_)
                           {
                              this.§<6§(§3D§.§<!f§);
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
      
      public function §<6§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`o§ = null;
         for each(_loc2_ in §9q§)
         {
            if(_loc6_)
            {
               _loc2_.§-[§ = param1;
            }
         }
      }
      
      override protected function getSlingshotAnimation() : §^!>§
      {
         return §+!X§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function § X§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4!d§);
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
                     §=m§();
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
                              this.§8!§();
                              addr203:
                              §§goto(addr215);
                           }
                           addr201:
                        }
                        while(true)
                        {
                           §§push(§§findproperty(§&;§));
                           if(!_loc3_)
                           {
                              if(param1)
                              {
                                 addr151:
                                 §§push(§3D§.§6i§);
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
                                 §§push(§3D§.§@!?§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr168);
                                 }
                              }
                              §§pop().§&;§ = §§pop();
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
            while(this.§4!d§)
            {
               while(_loc2_ || _loc3_)
               {
                  §§push(this.§&!k§);
                  loop2:
                  while(true)
                  {
                     §§push(§;!@§ / §-!7§.§8!r§);
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
            if(!this.§4!d§)
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
               §6!H§.playSound("Powerup_Speed");
            }
         }
         §§goto(addr55);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§`o§ = null;
         _loc2_ = §9q§[§>$§];
         §§push(§,S§ / §&;§);
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
                        §§push(Number(§ R§.BIRD_LAUNCH_FORCE_GREEN));
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
                                    §§push(_loc2_.§-[§);
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
                                       §§push(_loc2_.§-[§ * _loc3_);
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
                     §§push(Number(§ R§.BIRD_LAUNCH_FORCE));
                  }
                  §§goto(addr178);
               }
               addr164:
            }
            §§goto(addr124);
         }
         §§goto(addr164);
      }
      
      public function §?[§(param1:Number) : §`o§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`o§ = null;
         _loc2_ = §9q§[§>$§];
         if(_loc4_ || _loc2_)
         {
            if(_loc2_.§1'§ < 1)
            {
               loop0:
               while(true)
               {
                  _loc2_.§1'§ = 1;
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
      
      protected function §8!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!§^N§)
            {
               if(!_loc4_)
               {
                  addr34:
                  _loc2_ = new §9!N§.§0!k§("MovieClip_SlingHolder")();
                  if(!_loc4_)
                  {
                     setTint(_loc2_,§<!<§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(!_loc4_)
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_ || _loc3_)
                     {
                     }
                     addr79:
                     §-!Z§ = new §9E§.Sprite();
                     var _loc1_:§;!U§ = new §;!U§(§^N§);
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
                                 §-!Z§.addChild(_loc1_);
                                 continue loop0;
                                 loop6:
                                 while(_loc5_ || _loc2_)
                                 {
                                    § !t§ = new §9E§.Sprite();
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §9+§ = new §1!w§(2,2,§<!<§);
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
                                             §2G§.addChild(§,T§);
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
                  §^N§ = §+!X§.textureManager.getTextureFromBitmapData(_loc3_);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr34);
      }
   }
}
