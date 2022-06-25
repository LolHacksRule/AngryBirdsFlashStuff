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
         if(_loc1_)
         {
            §;!e§ = 7602176;
         }
      }
      
      protected var §=!U§:§"<§;
      
      protected var §,T§:§"<§;
      
      public function §0=§(param1:§5G§, param2:§"!'§, param3:§`g§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §&!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§-+§(false);
         }
      }
      
      public function §4!@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(Boolean(this.§=!U§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr79:
                     while(true)
                     {
                        §§push(Boolean(this.§,T§));
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
               }
               var _loc1_:§%!L§ = §#!U§.animationManager.getAnimation("SUPER_SLINGSHOT");
               var _loc2_:Texture = _loc1_.getFrame(0).texture;
               var _loc3_:Texture = _loc1_.getFrame(1).texture;
               if(!(_loc5_ && _loc3_))
               {
                  this.§=!U§ = new §"<§(_loc2_);
               }
               addr159:
               addr153:
               this.§,T§ = new §"<§(_loc3_);
               addr144:
               this.§-+§(true);
               if(!_loc5_)
               {
                  this.§0!K§(§2!y§.§9!K§);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc5_ && _loc2_)
                     {
                        §§goto(addr159);
                     }
                     return;
                  }
                  §§goto(addr144);
               }
               §§goto(addr153);
            }
         }
         while(true)
         {
            this.§-+§(true);
            if(!(_loc5_ && _loc1_))
            {
               break;
            }
            §§goto(addr79);
         }
      }
      
      public function §0!K§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!P§ = null;
         for each(_loc2_ in § Y§)
         {
            if(_loc6_ || this)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§ w§ != param1)
            {
               while(true)
               {
                  if(!param1)
                  {
                     §[w§();
                     loop1:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                              }
                              addr204:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§1A§();
                                 addr210:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop1;
                                    }
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                              }
                              addr208:
                           }
                           while(true)
                           {
                              §§push(§§findproperty(§-m§));
                              if(_loc3_ || this)
                              {
                                 if(param1)
                                 {
                                    addr158:
                                    §§push(§2!y§.§=]§);
                                    if(_loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          addr175:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§2!y§.§5L§);
                                    if(!_loc2_)
                                    {
                                       §§goto(addr175);
                                    }
                                 }
                                 §§pop().§-m§ = §§pop();
                                 continue loop1;
                              }
                              §§goto(addr158);
                           }
                        }
                        §§goto(addr210);
                     }
                     continue;
                  }
                  §§goto(addr208);
               }
            }
            addr223:
            return;
         }
         §§goto(addr204);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.updateAnimations(param1);
            loop0:
            for(; § w§; while(true)
            {
               if(_loc3_ && _loc3_)
               {
                  continue loop0;
               }
               §§goto(addr124);
            },§§goto(addr108))
            {
               if(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     §§push(this.§=!U§);
                     addr196:
                     while(true)
                     {
                        §§push(§#!!§ / §5G§.§6+§);
                        addr200:
                        while(true)
                        {
                           §§push(8);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() - §§pop());
                              while(true)
                              {
                                 §§push(8);
                              }
                              addr209:
                           }
                           addr210:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr211:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                              }
                           }
                        }
                     }
                  }
                  addr194:
               }
               loop1:
               while(true)
               {
                  §§push(this.§=!U§);
                  if(_loc2_ || this)
                  {
                     §§push(§!!3§ / §5G§.§6+§);
                     if(!_loc3_)
                     {
                        if(_loc2_ || param1)
                        {
                           §§push(30);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc2_)
                              {
                                 addr159:
                                 if(_loc2_)
                                 {
                                    addr162:
                                    §§push(10);
                                    if(_loc2_ || this)
                                    {
                                       addr170:
                                       §§push(§§pop() - §§pop());
                                       if(_loc2_)
                                       {
                                          §§pop().y = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(this.§,T§);
                                             addr108:
                                             while(true)
                                             {
                                                §§push(§#!!§ / §5G§.§6+§);
                                                addr112:
                                                addr124:
                                                while(true)
                                                {
                                                   §§push(38);
                                                   addr113:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr114:
                                                      while(true)
                                                      {
                                                         §§push(4);
                                                         addr115:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr116:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(this.§,T§);
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(§!!3§ / §5G§.§6+§);
                                                if(_loc2_)
                                                {
                                                   if(_loc2_ || param1)
                                                   {
                                                      §§push(37);
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  addr67:
                                                                  §§push(6);
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     addr75:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc2_ || param1)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr112);
                                                                  }
                                                                  §§goto(addr113);
                                                               }
                                                               §§goto(addr114);
                                                            }
                                                            §§goto(addr75);
                                                         }
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                   §§goto(addr116);
                                                }
                                                §§goto(addr75);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr209);
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr162);
                        }
                        else
                        {
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr159);
                  }
                  else
                  {
                     §§goto(addr196);
                  }
               }
            }
            return;
         }
         §§goto(addr194);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§ w§)
            {
               super.playBirdShotSound();
               if(!(_loc2_ || this))
               {
                  addr54:
               }
               return;
            }
            if(!_loc1_)
            {
               §-!Q§.§#3§("Powerup_Speed");
            }
         }
         §§goto(addr54);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§<!P§ = null;
         _loc2_ = § Y§[§1]§];
         §§push(§0!g§ / §-m§);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  if(_loc2_.name.toUpperCase() != "BIRD_GREEN")
                  {
                     §§push(Number(§1!g§.BIRD_LAUNCH_FORCE));
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
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(_loc2_.§+_§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§§pop() > 0);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§+_§);
                                                                     if(_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        addr115:
                                                                     }
                                                                     §§goto(addr119);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr50:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr118);
                                                                     }
                                                                     addr119:
                                                                     while(_loc5_ && _loc1_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr50);
                                                               }
                                                               return §§pop();
                                                               addr105:
                                                               addr42:
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr115);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§1!g§.BIRD_LAUNCH_FORCE_GREEN));
                                                   break loop7;
                                                }
                                                addr161:
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                    §§goto(addr105);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr161);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr111);
      }
      
      public function §5!k§(param1:Number) : §<!P§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!P§ = null;
         _loc2_ = § Y§[§1]§];
         if(!_loc3_)
         {
            if(_loc2_.§'T§ < 1)
            {
               while(true)
               {
                  _loc2_.§'T§ = 1;
                  addr101:
                  while(true)
                  {
                  }
               }
               addr98:
            }
            while(true)
            {
               _loc2_.scale = param1;
               while(!_loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(_loc2_.sprite);
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_.scale);
                        addr83:
                        while(true)
                        {
                           §§pop().scaleX = §§pop();
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr101);
            }
         }
         §§goto(addr98);
      }
      
      protected function §1A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(_loc5_ || _loc1_)
         {
            if(!§^G§)
            {
               if(!_loc4_)
               {
                  _loc2_ = new §,!j§.§!!N§("MovieClip_SlingHolder")();
                  if(!(_loc4_ && _loc3_))
                  {
                     setTint(_loc2_,§;!e§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_ || _loc3_)
                     {
                     }
                     addr89:
                     §8r§ = new §`g§.Sprite();
                     addr93:
                     var _loc1_:§"<§ = new §"<§(§^G§);
                     if(_loc5_ || this)
                     {
                        _loc1_.rotation = Math.PI;
                        loop0:
                        while(true)
                        {
                           _loc1_.x = _loc1_.width / 2;
                           addr233:
                           while(true)
                           {
                              _loc1_.y = _loc1_.height / 2;
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §<g§.addChild(§4!O§);
                        §§goto(addr166);
                     }
                  }
                  §^G§ = §#!U§.textureManager.getTextureFromBitmapData(_loc3_);
               }
               §§goto(addr93);
            }
         }
         §§goto(addr89);
      }
   }
}
