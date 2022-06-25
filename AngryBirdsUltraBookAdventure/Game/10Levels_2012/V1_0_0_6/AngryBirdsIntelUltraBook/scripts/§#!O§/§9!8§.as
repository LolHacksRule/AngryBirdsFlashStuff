package §#!O§
{
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §2_§.§8![§;
   import §2_§.§>-§;
   import §3!G§.§ y§;
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §^!Y§.§4!f§;
   import com.rovio.assets.§`!t§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §9!8§ extends §8![§
   {
      
      protected static const §?§:uint = 7602176;
      
      protected static var §5!7§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?§ = 7602176;
         }
      }
      
      protected var §]!r§:§-§;
      
      protected var §%!4§:§-§;
      
      protected var §<!-§:Boolean = false;
      
      public function §9!8§(param1:§'u§, param2:§ y§, param3:§7!B§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §7!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[4§(false);
         }
      }
      
      public function §`i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(Boolean(this.§]!r§));
            if(_loc5_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr60:
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(this.§%!4§));
                        if(!_loc4_)
                        {
                           while(§§pop())
                           {
                              if(_loc5_)
                              {
                                 this.§[4§(true);
                                 return;
                              }
                              continue loop5;
                           }
                           var _loc1_:§4!f§ = §#!3§.animationManager.getAnimation("SUPER_SLINGSHOT");
                           var _loc2_:Texture = _loc1_.getFrame(0).texture;
                           var _loc3_:Texture = _loc1_.getFrame(1).texture;
                           if(_loc5_)
                           {
                              this.§]!r§ = new §-§(_loc2_);
                              while(true)
                              {
                                 this.§%!4§ = new §-§(_loc3_);
                              }
                              addr130:
                           }
                           loop2:
                           while(true)
                           {
                              this.§[4§(true);
                              while(_loc5_ || _loc1_)
                              {
                                 this.§+H§(§,L§.§ G§);
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr130);
                              }
                           }
                           return;
                           addr34:
                        }
                     }
                  }
                  addr49:
               }
               §§goto(addr34);
            }
            §§goto(addr49);
         }
         §§goto(addr60);
      }
      
      public function §+H§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>-§ = null;
         for each(_loc2_ in §]!^§)
         {
            if(!_loc6_)
            {
               _loc2_.§@N§ = param1;
            }
         }
      }
      
      override protected function getSlingshotAnimation() : §4!f§
      {
         return §#!3§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §[4§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§<!-§);
            while(true)
            {
               if(§§pop() != param1)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        §0!]§();
                        loop2:
                        do
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§findproperty(§!!P§));
                                    if(!(_loc2_ && param1))
                                    {
                                       if(param1)
                                       {
                                          addr160:
                                          §§push(§,L§.§0!7§);
                                          if(!_loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                addr177:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§,L§.§,!Z§);
                                          if(_loc3_)
                                          {
                                             §§goto(addr177);
                                          }
                                       }
                                       §§pop().§!!P§ = §§pop();
                                       while(_loc3_)
                                       {
                                          if(_loc2_ && _loc3_)
                                          {
                                             return;
                                          }
                                          addr221:
                                          this.§<!-§ = param1;
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       while(_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop1;
                                       addr214:
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              addr206:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§ H§();
                              }
                              addr212:
                           }
                           §§goto(addr214);
                        }
                        while(_loc2_ && this);
                        
                        addr112:
                        if(§2O§.numChildren <= 0)
                        {
                           addr117:
                           §§push(§2O§);
                           if(param1)
                           {
                              addr126:
                              §§pop().addChild(this.§]!r§);
                              §2O§.addChild(§6R§);
                              addr127:
                              if(_loc3_)
                              {
                                 §2O§.addChild(§=!D§);
                                 addr87:
                                 if(_loc3_ || this)
                                 {
                                    §2O§.addChild(§!!_§);
                                    §2O§.addChild(§5L§);
                                    addr75:
                                    if(_loc3_)
                                    {
                                       §§push(§2O§);
                                       if(param1)
                                       {
                                          addr67:
                                          §§pop().addChild(this.§%!4§);
                                          addr68:
                                          if(!_loc2_)
                                          {
                                             §9r§ = true;
                                             if(!(_loc2_ && param1))
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr127);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr127);
                                                }
                                                §§goto(addr75);
                                             }
                                             §§goto(addr68);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr67);
                                       §§push(§ V§);
                                    }
                                    addr82:
                                    §§goto(addr82);
                                 }
                                 addr134:
                                 §§goto(addr112);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr126);
                           §§push(§]R§);
                        }
                        §2O§.removeChildAt(0);
                        §§goto(addr134);
                     }
                     §§goto(addr212);
                  }
                  continue;
               }
               §§goto(addr221);
            }
         }
         §§goto(addr206);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.updateAnimations(param1);
            loop0:
            for(; this.§<!-§; loop7:
            while(true)
            {
               if(_loc2_ && param1)
               {
                  continue loop0;
               }
               §§push(this.§]!r§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§<h§ / §'u§.§18§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(30);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc2_ && param1))
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       addr176:
                                       §§pop().y = §§pop() - 10;
                                       loop8:
                                       for(; !_loc2_; while(!(_loc2_ && this))
                                       {
                                          §§goto(addr118);
                                       })
                                       {
                                          while(true)
                                          {
                                             §§push(this.§%!4§);
                                             while(true)
                                             {
                                                §§push(§#!u§ / §'u§.§18§);
                                                while(true)
                                                {
                                                   §§push(38);
                                                   addr107:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr108:
                                                      while(true)
                                                      {
                                                         §§push(4);
                                                         addr109:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr110:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr76:
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§pop().y = §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                addr118:
                                                §§push(this.§%!4§);
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§push(§<h§ / §'u§.§18§);
                                                if(_loc3_)
                                                {
                                                   §§push(37);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr59:
                                                            §§push(6);
                                                            if(!_loc2_)
                                                            {
                                                               addr62:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§goto(addr76);
                                                                  }
                                                                  §§goto(addr108);
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                         §§goto(addr62);
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr59);
                                                }
                                                §§goto(addr62);
                                             }
                                          }
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr176);
                        }
                        break;
                     }
                  }
                  §§goto(addr176);
               }
               §§goto(addr196);
            },§§goto(addr205))
            {
               while(true)
               {
                  §§push(this.§]!r§);
                  addr196:
                  while(true)
                  {
                     §§push(§#!u§ / §'u§.§18§);
                     addr200:
                     while(true)
                     {
                        §§push(8);
                        if(!_loc2_)
                        {
                           §§push(§§pop() - §§pop());
                           while(true)
                           {
                              §§push(8);
                           }
                           addr204:
                        }
                        addr205:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr206:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr189);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§<!-§)
            {
               super.playBirdShotSound();
               if(!(_loc1_ && _loc1_))
               {
                  addr51:
               }
               else
               {
                  addr60:
               }
               return;
            }
            if(!_loc1_)
            {
               §9'§.playSound("Powerup_Speed");
            }
            §§goto(addr60);
         }
         §§goto(addr51);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§>-§ = null;
         _loc2_ = §]!^§[§8!?§];
         §§push(§[&§ / §!!P§);
         if(_loc5_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  if(_loc2_.name.toUpperCase() != "BIRD_GREEN")
                  {
                     §§push(Number(§8![§.BIRD_LAUNCH_FORCE));
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
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc4_ && _loc1_)
                                          {
                                             break;
                                          }
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             break loop4;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc5_)
                                          {
                                             addr132:
                                             if(!_loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc4_)
                                                      {
                                                         addr69:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr185:
                                                   }
                                                }
                                                else
                                                {
                                                   addr130:
                                                   §§push(_loc3_);
                                                }
                                                return §§pop() * §§pop();
                                             }
                                          }
                                          §§goto(addr69);
                                       }
                                       return §§pop();
                                       addr105:
                                       addr48:
                                    }
                                    addr148:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr148:
                                    while(!(_loc4_ && this))
                                    {
                                       continue loop0;
                                       §§goto(addr148);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr148);
                                 addr98:
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr105);
                              }
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§goto(addr130);
                                 §§push(_loc2_.§@N§);
                              }
                              else
                              {
                                 addr182:
                                 while(true)
                                 {
                                    §§goto(addr185);
                                 }
                                 addr182:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr182);
               }
            }
            §§goto(addr48);
         }
         §§goto(addr182);
      }
      
      public function §%w§(param1:Number) : §>-§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>-§ = null;
         _loc2_ = §]!^§[§8!?§];
         if(_loc3_)
         {
            if(_loc2_.§8f§ < 1)
            {
               loop0:
               while(true)
               {
                  _loc2_.§8f§ = 1;
                  addr105:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc4_ && param1))
                     {
                        loop7:
                        while(true)
                        {
                           §§push(_loc2_.sprite);
                           if(!_loc4_)
                           {
                              §§push(_loc2_.scale);
                              if(_loc3_)
                              {
                                 §§pop().scaleY = §§pop();
                                 if(!_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 addr54:
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       break;
                                    }
                                    break loop6;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.sprite);
                                    addr82:
                                    while(true)
                                    {
                                       §§push(_loc2_.scale);
                                       continue loop7;
                                    }
                                    §§goto(addr54);
                                 }
                              }
                              while(true)
                              {
                                 §§pop().scaleX = §§pop();
                                 continue loop6;
                              }
                           }
                           §§goto(addr82);
                        }
                        return _loc2_;
                        addr92:
                     }
                     continue loop0;
                  }
                  §§goto(addr105);
               }
            }
            while(true)
            {
               _loc2_.scale = param1;
               §§goto(addr97);
               §§goto(addr105);
            }
         }
         §§goto(addr92);
      }
      
      protected function § H§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!(_loc5_ && this))
         {
            if(!§5!7§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  addr38:
                  _loc2_ = new §`!t§.§=J§("MovieClip_SlingHolder")();
                  if(!(_loc5_ && _loc2_))
                  {
                     setTint(_loc2_,§?§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(_loc4_)
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_ && _loc1_)
                     {
                     }
                     addr88:
                     §!!_§ = new §7!B§.Sprite();
                     var _loc1_:§-§ = new §-§(§5!7§);
                     if(_loc4_ || _loc1_)
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
                              loop2:
                              while(true)
                              {
                                 §!!_§.addChild(_loc1_);
                                 loop3:
                                 while(true)
                                 {
                                    §6R§ = new §7!B§.Sprite();
                                    loop4:
                                    while(true)
                                    {
                                       §'j§ = new §;R§(2,2,§?§);
                                       while(true)
                                       {
                                          §6R§.addChild(§'j§);
                                          loop6:
                                          while(_loc4_ || _loc1_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §5L§ = new §7!B§.Sprite();
                                                   while(_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §`3§ = new §;R§(2,2,§?§);
                                                         loop8:
                                                         while(_loc4_ || this)
                                                         {
                                                            continue loop3;
                                                            while(true)
                                                            {
                                                               §5L§.addChild(§`3§);
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                            return;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop4;
                                                   addr156:
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr150);
                  }
                  §5!7§ = §#!3§.textureManager.getTextureFromBitmapData(_loc3_);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr38);
      }
   }
}
