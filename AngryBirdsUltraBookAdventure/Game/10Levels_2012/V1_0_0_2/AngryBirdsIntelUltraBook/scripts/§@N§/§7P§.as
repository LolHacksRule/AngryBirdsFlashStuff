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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §7P§))
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
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      public function §^m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr69:
                     do
                     {
                        §§push(Boolean(this.§]a§));
                        if(_loc5_ && _loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc4_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     this.§[Y§(true);
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     var _loc1_:§1!;§ = §?l§.animationManager.getAnimation("SUPER_SLINGSHOT");
                     var _loc2_:Texture = _loc1_.getFrame(0).texture;
                     var _loc3_:Texture = _loc1_.getFrame(1).texture;
                     if(_loc4_)
                     {
                        this.§1y§ = new §?!U§(_loc2_);
                        this.§]a§ = new §?!U§(_loc3_);
                        addr131:
                        if(_loc4_)
                        {
                           this.§[Y§(true);
                           addr122:
                           if(_loc4_)
                           {
                              this.§79§(§0;§.§super§);
                              if(_loc5_ && _loc3_)
                              {
                                 §§goto(addr122);
                              }
                              return;
                           }
                           §§goto(addr131);
                           addr133:
                        }
                        addr139:
                        §§goto(addr139);
                     }
                     §§goto(addr133);
                  }
               }
            }
         }
      }
      
      public function §79§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!,§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §?$§)
         {
            if(_loc6_ || _loc3_)
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
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§%-§);
            loop0:
            while(§§pop() != param1)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §+! §();
                     loop2:
                     do
                     {
                        if(_loc2_)
                        {
                           if(_loc3_ && param1)
                           {
                              continue loop1;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(§§findproperty(§5!G§));
                              if(_loc2_ || param1)
                              {
                                 if(param1)
                                 {
                                    addr161:
                                    §§push(§0;§.§25§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc3_)
                                       {
                                          addr179:
                                          §§pop().§5!G§ = Number(§§pop());
                                          while(!(_loc3_ && this))
                                          {
                                             this.§%-§ = param1;
                                             if(_loc2_)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§3A§();
                                             continue loop3;
                                          }
                                          addr218:
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§0;§.§#!A§);
                                    if(_loc2_)
                                    {
                                       §§goto(addr179);
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr161);
                           }
                           addr150:
                        }
                        while(true)
                        {
                           §§goto(addr150);
                        }
                     }
                     while(_loc3_ && _loc2_);
                     
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     addr109:
                     if(§8X§.numChildren <= 0)
                     {
                        addr114:
                        if(!_loc3_)
                        {
                           §§push(§8X§);
                           if(param1)
                           {
                              addr125:
                              §§pop().addChild(this.§1y§);
                              §8X§.addChild(§0!d§);
                              §8X§.addChild(§42§);
                              §8X§.addChild(§'c§);
                              addr81:
                              addr98:
                              addr93:
                              if(!(_loc3_ && param1))
                              {
                                 §8X§.addChild(§&!5§);
                                 addr67:
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(§8X§);
                                       if(param1)
                                       {
                                          addr61:
                                          §§pop().addChild(this.§]a§);
                                          § !4§ = true;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc3_ && this)
                                                   {
                                                      §§goto(addr114);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr81);
                                             }
                                             §§goto(addr67);
                                          }
                                          addr62:
                                          §§goto(addr62);
                                       }
                                       §§goto(addr61);
                                       §§push(§6!@§);
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr93);
                              }
                              addr126:
                              §§goto(addr126);
                           }
                           §§goto(addr125);
                           §§push(§ !,§);
                        }
                        §§goto(addr109);
                     }
                     §8X§.removeChildAt(0);
                     §§goto(addr114);
                  }
                  §§goto(addr218);
               }
            }
            return;
         }
         §§goto(addr179);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.updateAnimations(param1);
         }
         loop0:
         while(this.§%-§)
         {
            loop1:
            while(true)
            {
               §§push(this.§1y§);
               loop2:
               while(true)
               {
                  §§push(§,G§ / §^g§.§^!S§);
                  loop3:
                  while(true)
                  {
                     §§push(8);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop5:
                        while(true)
                        {
                           §§push(8);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop7:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§1y§);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§78§ / §^g§.§^!S§);
                                    if(!_loc3_)
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          continue loop5;
                                       }
                                       §§push(30);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc3_)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(10);
                                             }
                                             addr162:
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§pop().y = §§pop();
                                                loop9:
                                                for(; !_loc3_; while(true)
                                                {
                                                   if(_loc3_ && this)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§goto(addr119);
                                                },§§goto(addr78))
                                                {
                                                   §§push(this.§]a§);
                                                   while(true)
                                                   {
                                                      §§push(§,G§ / §^g§.§^!S§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(38);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               §§push(4);
                                                               addr51:
                                                               if(!(_loc2_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(37);
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr74:
                                                                        §§push(§§pop() - 6);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        addr78:
                                                                        if(!_loc3_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     addr109:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  addr108:
                                                               }
                                                               §§goto(addr74);
                                                            }
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                      addr119:
                                                      §§push(this.§]a§);
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§78§ / §^g§.§^!S§);
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§goto(addr51);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      §§goto(addr74);
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§goto(addr162);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§%-§)
            {
               super.playBirdShotSound();
               if(!_loc1_)
               {
                  addr54:
               }
               return;
            }
            if(!_loc2_)
            {
               § !Q§.playSound("Powerup_Speed");
            }
         }
         §§goto(addr54);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§7!,§ = null;
         _loc2_ = §?$§[§;&§];
         §§push(§>!]§ / §5!G§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  if(_loc2_.name.toUpperCase() != "BIRD_GREEN")
                  {
                     §§push(Number(§>!A§.BIRD_LAUNCH_FORCE));
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
                                       while(true)
                                       {
                                          §§pop();
                                          addr66:
                                          §§push(§§pop() > 0);
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc5_ && _loc3_)
                                             {
                                                break;
                                             }
                                             if(_loc5_ && _loc1_)
                                             {
                                                while(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop3;
                                                addr138:
                                             }
                                             if(!(_loc5_ && this))
                                             {
                                                addr109:
                                                §§push(_loc2_.§5!6§);
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   addr110:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      §§goto(addr111);
                                                   }
                                                }
                                                addr109:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§>!A§.BIRD_LAUNCH_FORCE_GREEN));
                                                }
                                                addr156:
                                             }
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(_loc3_);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr110);
                                                }
                                                addr111:
                                                while(_loc5_ && _loc1_)
                                                {
                                                }
                                                return §§pop();
                                             }
                                             break;
                                          }
                                          return §§pop();
                                          addr84:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr138);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr156);
               }
            }
            §§goto(addr37);
         }
         §§goto(addr147);
      }
      
      public function §+!u§(param1:Number) : §7!,§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!,§ = null;
         _loc2_ = §?$§[§;&§];
         if(!_loc3_)
         {
            if(_loc2_.§%! § < 1)
            {
               while(true)
               {
                  _loc2_.§%! § = 1;
                  addr106:
                  while(true)
                  {
                  }
               }
               addr103:
            }
            while(true)
            {
               _loc2_.scale = param1;
               while(!(_loc3_ && _loc2_))
               {
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     return _loc2_;
                  }
                  §§goto(addr103);
               }
               §§goto(addr106);
            }
         }
         while(true)
         {
            §§push(_loc2_.sprite);
            loop5:
            while(true)
            {
               §§push(_loc2_.scale);
               addr85:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop5;
               }
            }
         }
      }
      
      protected function §3A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(_loc5_ || _loc1_)
         {
            if(!§2!5§)
            {
               if(_loc5_)
               {
                  _loc2_ = new §%!G§.§^!B§("MovieClip_SlingHolder")();
                  if(!(_loc4_ && _loc2_))
                  {
                     setTint(_loc2_,§81§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(_loc5_)
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_ || _loc1_)
                     {
                        §2!5§ = §?l§.textureManager.getTextureFromBitmapData(_loc3_);
                     }
                  }
               }
               addr88:
               var _loc1_:§?!U§ = new §?!U§(§2!5§);
               if(!(_loc4_ && _loc2_))
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
                           loop5:
                           while(!(_loc4_ && _loc2_))
                           {
                              if(!_loc4_)
                              {
                                 §0!d§.addChild(§8!u§);
                                 loop6:
                                 while(!(_loc4_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       §&!5§ = new §'!9§.Sprite();
                                       while(!(_loc4_ && this))
                                       {
                                          §,i§ = new §%!g§(2,2,§81§);
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             §&!5§.addChild(§,i§);
                                             if(_loc5_ || _loc1_)
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                addr133:
                                                if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr140);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §8!u§ = new §%!g§(2,2,§81§);
                                                      continue loop5;
                                                      §§goto(addr133);
                                                   }
                                                   addr205:
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                    return;
                                 }
                                 continue loop0;
                                 addr174:
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§goto(addr181);
            }
            §'c§ = new §'!9§.Sprite();
         }
         §§goto(addr88);
      }
   }
}
