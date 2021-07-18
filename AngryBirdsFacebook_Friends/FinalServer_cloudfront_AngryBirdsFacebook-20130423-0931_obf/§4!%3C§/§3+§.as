package §4!<§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §-p§.§4!`§;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §@!"§.§?l§;
   import §`!G§.§2"L§;
   import com.rovio.assets.§?q§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §3+§ extends §&=§
   {
      
      protected static const §+"5§:uint = 7602176;
      
      protected static var §#!!§:Texture;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+"5§ = 7602176;
         }
      }
      
      protected var §9!6§:§ "E§;
      
      protected var §4![§:§ "E§;
      
      private var §2"F§:§1!"§;
      
      private var §7B§:§1!"§;
      
      private var §+u§:§1!"§;
      
      private var §2D§:int = 0;
      
      private var § !r§:Boolean;
      
      private var §^@§:§ "E§;
      
      private var §1"0§:§ "E§;
      
      private var §""0§:Number;
      
      private var §["N§:Boolean = false;
      
      public function §3+§(param1:§'!S§, param2:§0"T§, param3:§'!6§.Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      public function get §""M§() : Boolean
      {
         return this.§["N§;
      }
      
      public function set §""M§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4!N§ = null;
         var _loc3_:Texture = null;
         var _loc4_:Texture = null;
         if(_loc6_ || param1)
         {
            §§push(this.§["N§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() == param1)
               {
                  if(_loc6_)
                  {
                     return;
                  }
                  addr54:
                  §§push(this.§["N§);
               }
               else
               {
                  this.§["N§ = param1;
                  if(!_loc5_)
                  {
                     §§goto(addr54);
                  }
                  addr57:
                  _loc2_ = this.getSlingshotAnimation();
                  _loc3_ = _loc2_.getFrame(0).texture;
                  _loc4_ = _loc2_.getFrame(1).texture;
                  while(true)
                  {
                     if(§?!T§.numChildren <= 0)
                     {
                        loop1:
                        while(_loc6_)
                        {
                           §7]§ = new § "E§(_loc3_);
                           loop2:
                           while(true)
                           {
                              §"%§ = new § "E§(_loc4_);
                              loop3:
                              while(true)
                              {
                                 §?!T§.addChild(§7]§);
                                 loop4:
                                 for(; !_loc5_; while(!(_loc5_ && _loc3_))
                                 {
                                    §?!T§.addChild(§@"N§);
                                    §§goto(addr140);
                                 })
                                 {
                                    §?!T§.addChild(§8h§);
                                    loop5:
                                    while(true)
                                    {
                                       §?!T§.addChild(§7!g§);
                                       while(true)
                                       {
                                          §?!T§.addChild(§&"2§);
                                          continue loop4;
                                          addr116:
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §0I§ = false;
                                          if(_loc6_)
                                          {
                                             addr80:
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr99:
                                                   if(!_loc5_)
                                                   {
                                                      if(true)
                                                      {
                                                         return;
                                                         addr103:
                                                      }
                                                      while(true)
                                                      {
                                                         §+C§ = true;
                                                         addr107:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr116);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §?!T§.addChild(§"%§);
                                                                  continue loop3;
                                                               }
                                                               addr140:
                                                            }
                                                         }
                                                         continue loop4;
                                                         §§goto(addr99);
                                                      }
                                                      addr206:
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr107);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     else
                     {
                        §?!T§.removeChildAt(0);
                     }
                  }
               }
               §§goto(addr57);
            }
            if(§§pop())
            {
               §§goto(addr57);
            }
            §§goto(addr206);
         }
         §§goto(addr57);
      }
      
      override protected function getSlingshotAnimation() : §4!N§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§["N§)
            {
               if(_loc2_ || this)
               {
                  return mLevelMain.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
               }
            }
         }
         return super.getSlingshotAnimation();
      }
      
      public function §"T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc1_)
         {
            §§push(Boolean(this.§9!6§));
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     addr70:
                     loop2:
                     while(true)
                     {
                        addr38:
                        addr71:
                        while(true)
                        {
                           §§push(Boolean(this.§4![§));
                           if(!(_loc5_ || _loc2_))
                           {
                              continue loop8;
                           }
                           continue loop2;
                        }
                        addr71:
                        addr88:
                        var _loc1_:§4!N§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
                        var _loc2_:Texture = _loc1_.getFrame(0).texture;
                        var _loc3_:Texture = _loc1_.getFrame(1).texture;
                        if(!_loc4_)
                        {
                           this.§9!6§ = new § "E§(_loc2_);
                        }
                        loop3:
                        while(true)
                        {
                           this.§4![§ = new § "E§(_loc3_);
                           loop4:
                           while(true)
                           {
                              this.§[!5§(true);
                              loop5:
                              while(true)
                              {
                                 this.§ B§(§^!Z§.§-"'§);
                                 while(true)
                                 {
                                    this.§-C§();
                                    continue loop4;
                                    addr124:
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§6"G§();
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr69:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || _loc1_)
                     {
                        this.§[!5§(true);
                        return;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr71);
               }
               §§goto(addr88);
            }
            §§goto(addr69);
         }
         else if(false)
         {
            §§goto(addr38);
         }
         §§goto(addr71);
      }
      
      public function § B§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§ !X§ = null;
         for each(_loc2_ in §9!L§)
         {
            if(!_loc5_)
            {
               _loc2_.§5J§ = param1;
            }
         }
      }
      
      protected function §[!5§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§0I§ != param1)
            {
               while(true)
               {
                  if(param1)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§@!?§();
                        }
                        addr205:
                     }
                     loop1:
                     while(!_loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§§findproperty(§]"4§));
                           if(!(_loc2_ && param1))
                           {
                              if(param1)
                              {
                                 addr160:
                                 §§push(§^!Z§.§?!s§);
                                 if(_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr172:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              else
                              {
                                 §§push(§^!Z§.§1=§);
                                 if(_loc3_)
                                 {
                                    §§goto(addr172);
                                 }
                              }
                              §§pop().§]"4§ = §§pop();
                              while(!_loc2_)
                              {
                                 §0I§ = param1;
                                 if(_loc2_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    §§goto(addr213);
                                 }
                                 addr112:
                                 if(§?!T§.numChildren <= 0)
                                 {
                                    addr117:
                                    §§push(§?!T§);
                                    if(param1)
                                    {
                                       addr126:
                                       §§pop().addChild(this.§9!6§);
                                       §?!T§.addChild(§8h§);
                                       §?!T§.addChild(§7!g§);
                                       §?!T§.addChild(§&"2§);
                                       addr111:
                                       addr127:
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc3_ || this)
                                             {
                                                §?!T§.addChild(§@"N§);
                                                addr63:
                                                if(_loc3_ || param1)
                                                {
                                                   §§push(§?!T§);
                                                   if(param1)
                                                   {
                                                      addr57:
                                                      §§pop().addChild(this.§4![§);
                                                      §+C§ = true;
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr111);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr111);
                                                         }
                                                         §§goto(addr63);
                                                      }
                                                      addr58:
                                                      §§goto(addr58);
                                                   }
                                                   §§goto(addr57);
                                                   §§push(§"%§);
                                                }
                                                §§goto(addr127);
                                             }
                                             addr134:
                                             §§goto(addr112);
                                          }
                                          §§goto(addr117);
                                       }
                                       addr106:
                                       §§goto(addr106);
                                    }
                                    §§goto(addr126);
                                    §§push(§7]§);
                                 }
                                 §?!T§.removeChildAt(0);
                                 §§goto(addr134);
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              addr192:
                           }
                           §§goto(addr160);
                        }
                     }
                     continue;
                  }
                  §14§();
                  §§goto(addr192);
               }
            }
            addr213:
            return;
         }
         §§goto(addr205);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.updateAnimations(param1);
            while(true)
            {
               this.§2"=§(this.§7B§,param1);
               loop1:
               while(true)
               {
                  this.§2"=§(this.§2"F§,param1);
                  while(true)
                  {
                     this.§2"=§(this.§+u§,param1);
                     addr220:
                     while(_loc3_ || this)
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr144);
            }
         }
         §§goto(addr198);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § !X§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§]D§ = null;
         _loc5_ = new §]D§(this,new §'!6§.Sprite(),param1,param2,param3);
         if(!_loc9_)
         {
            if(param4 < 0)
            {
               if(!(_loc9_ && param2))
               {
                  §9!L§.push(_loc5_);
                  if(_loc9_)
                  {
                  }
                  addr69:
                  var _loc6_:*;
                  var _loc7_:* = (_loc6_ = §§findproperty(§5"U§)).§5"U§ + 1;
                  if(_loc8_ || param1)
                  {
                     _loc6_.§5"U§ = _loc7_;
                  }
                  if(_loc9_ && param2)
                  {
                  }
                  addr105:
                  return _loc5_;
                  addr121:
               }
               §7!g§.addChild(_loc5_.sprite);
               while(§0I§)
               {
                  if(_loc8_)
                  {
                     this.§ B§(§^!Z§.§-"'§);
                  }
                  if(!_loc8_)
                  {
                     continue;
                  }
                  §§goto(addr121);
               }
               §§goto(addr105);
               addr126:
            }
            else
            {
               §9!L§.splice(param4,0,_loc5_);
               if(!(_loc9_ && param1))
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr126);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!§0I§)
            {
               super.playBirdShotSound();
               if(_loc1_)
               {
                  if(!(_loc1_ || this))
                  {
                     addr55:
                     §@"M§.§3"C§("Powerup_Speed");
                     addr58:
                  }
                  else
                  {
                     addr52:
                  }
                  return;
               }
               §§goto(addr58);
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§ !X§ = null;
         _loc2_ = §9!L§[§<"§];
         §§push(§;!8§ / §]"4§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc2_))
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || this)
               {
                  addr149:
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        addr161:
                        §§push(Number(§&=§.BIRD_LAUNCH_FORCE_GREEN));
                        while(true)
                        {
                           addr168:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr169:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                              }
                           }
                        }
                        addr164:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc2_ == null);
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(!§§pop());
                           if(!(_loc5_ && _loc1_))
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    for(; !_loc5_; continue loop6)
                                    {
                                       §§push(_loc2_.§5J§);
                                       if(!_loc4_)
                                       {
                                          addr96:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                       §§push(§§pop() > 0);
                                       if(!_loc5_)
                                       {
                                          while(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop3;
                                             }
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop5;
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
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         addr59:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            §§goto(addr96);
                                                         }
                                                         addr95:
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr94:
                                                   }
                                                   §§goto(addr95);
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr59);
                                          }
                                          return §§pop();
                                          addr88:
                                          addr47:
                                       }
                                       continue loop6;
                                       return §§pop();
                                    }
                                    continue loop3;
                                 }
                                 addr125:
                              }
                              §§goto(addr88);
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr94);
                     §§push(_loc2_.§5J§);
                  }
                  else
                  {
                     §§push(Number(§&=§.BIRD_LAUNCH_FORCE));
                  }
                  §§goto(addr168);
               }
               §§goto(addr161);
            }
            §§goto(addr47);
         }
         §§goto(addr149);
      }
      
      public function §;!q§(param1:Number) : § !X§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ !X§ = null;
         _loc2_ = §9!L§[§<"§];
         if(_loc4_ || _loc3_)
         {
            if(_loc2_.§+"-§ < 1)
            {
               while(true)
               {
                  _loc2_.§+"-§ = 1;
                  addr111:
                  while(true)
                  {
                  }
                  addr82:
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return _loc2_;
                  addr89:
               }
            }
            while(true)
            {
               _loc2_.scale = param1;
               loop3:
               while(true)
               {
                  §§push(_loc2_.sprite);
                  loop4:
                  while(true)
                  {
                     §§push(_loc2_.scale);
                     addr95:
                     while(true)
                     {
                        §§pop().scaleX = §§pop();
                        addr96:
                        while(_loc4_)
                        {
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
               §§goto(addr111);
            }
         }
         §§goto(addr89);
      }
      
      protected function §@!?§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            if(!§#!!§)
            {
               if(_loc4_)
               {
                  addr28:
                  _loc2_ = new §?q§.§ q§("MovieClip_SlingHolder")();
                  if(_loc4_ || _loc1_)
                  {
                     setTint(_loc2_,§+"5§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(_loc4_ || this)
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc5_ && _loc3_)
                     {
                     }
                     addr83:
                     §&"2§ = new §'!6§.Sprite();
                     var _loc1_:§ "E§ = new § "E§(§#!!§);
                     if(!_loc5_)
                     {
                        _loc1_.rotation = Math.PI;
                        while(true)
                        {
                           _loc1_.x = _loc1_.width / 2;
                           while(true)
                           {
                              _loc1_.y = _loc1_.height / 2;
                              loop2:
                              while(true)
                              {
                                 §&"2§.addChild(_loc1_);
                                 addr196:
                                 while(true)
                                 {
                                    §8h§ = new §'!6§.Sprite();
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr140);
                  }
                  §#!!§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr28);
      }
      
      public function §6"G§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§ !r§ = true;
            loop0:
            while(true)
            {
               §§push(this);
               if(!(_loc4_ && _loc2_))
               {
                  §§pop().§^@§ = this.§^@§ || new § "E§(mLevelMain.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0).texture);
                  while(true)
                  {
                     §§push(this);
                     if(!_loc4_)
                     {
                        §§pop().§1"0§ = this.§1"0§ || new § "E§(mLevelMain.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0).texture);
                        loop2:
                        while(true)
                        {
                           if(this.§""M§)
                           {
                              addr218:
                              while(true)
                              {
                              }
                              addr218:
                           }
                           else
                           {
                              §§push(this.§^@§);
                              if(!_loc4_)
                              {
                                 §§push(§4!K§ - 3.5);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§'!S§.§2"<§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr230:
                                          while(!_loc4_)
                                          {
                                             §§push(this.§^@§);
                                             if(!_loc4_)
                                             {
                                                §§push(§7!#§ - 5.75);
                                                if(_loc3_)
                                                {
                                                   §§push(§'!S§.§2"<§);
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                if(!(_loc4_ && this))
                                                {
                                                   continue loop3;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr243);
                     while(_loc3_ || this)
                     {
                        §§goto(addr122);
                        §§push(this.§1"0§);
                     }
                  }
               }
               §§goto(addr270);
               while(true)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     continue loop0;
                  }
                  §§goto(addr118);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr218);
      }
      
      private function §?! §() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc2_)
         {
            if(this.§ !r§)
            {
               loop0:
               while(true)
               {
                  §§push(§[h§ - this.§""0§);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           if(Math.abs(_loc1_) >= 0.5)
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§push(180);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc2_)
                                          {
                                             addr203:
                                             §§push(360);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr204:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr205:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr206:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                             addr203:
                                          }
                                          §§goto(addr204);
                                          addr42:
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(-180);
                                             if(_loc3_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   loop6:
                                                   while(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!_loc2_)
                                                         {
                                                            while(_loc3_ || _loc1_)
                                                            {
                                                               §§push(360);
                                                               while(_loc3_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr162:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        addr84:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§""0§);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop() / 20);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().§""0§ = §§pop();
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr114:
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§1"0§);
                                                                                       §§push(180 - this.§""0§);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(§§pop() / (180 / Math.PI));
                                                                                       }
                                                                                       §§pop().rotation = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr213:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§""0§ = §[h§;
                                                                                             addr216:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr204);
                                                            addr149:
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr84);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr149);
                                    }
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr213);
                        }
                     }
                  }
               }
               addr220:
            }
            return;
         }
         §§goto(addr220);
      }
      
      private function §-C§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:* = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(_loc7_)
         {
            §§push(this.§7B§);
            if(_loc7_ || this)
            {
               if(!§§pop())
               {
                  §§push(-15);
                  loop0:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr260:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        continue loop0;
                     }
                  }
               }
               §§goto(addr272);
            }
            §§goto(addr274);
         }
         §§goto(addr216);
      }
      
      public function §=a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§'!S§.§2"<§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  addr120:
                  §§push(§'!S§.§2"<§);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(§§pop() / §§pop());
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        addr140:
                        param2 = §§pop();
                        loop3:
                        for(; _loc3_; while(!(_loc4_ && param1))
                        {
                           §§goto(addr23);
                        })
                        {
                           §§push(this.§2"F§);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§2"F§ = new §1!"§("BLAST_EFFECT",§?!T§,mLevelMain,param1,param2,50);
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§2"F§);
                                       if(_loc3_ || param2)
                                       {
                                          §§pop().§%"-§(true);
                                          continue loop3;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             §§pop().setPosition(param1,param2);
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §+C§ = true;
                                                      if(_loc4_ && this)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr107);
                                                   }
                                                   addr107:
                                                   continue loop5;
                                                   addr23:
                                                }
                                                else
                                                {
                                                   addr112:
                                                }
                                                addr112:
                                                while(true)
                                                {
                                                   §§push(this.§2"F§);
                                                   addr114:
                                                   while(true)
                                                   {
                                                      §§pop().reset();
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop9;
                                                   §§goto(addr114);
                                                }
                                             }
                                          }
                                          §§goto(addr114);
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr112);
                           }
                        }
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§goto(addr120);
                           }
                           §§goto(addr140);
                        }
                        continue;
                        addr159:
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr159);
                     }
                     addr158:
                  }
                  §§goto(addr140);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr112);
      }
      
      public function §&"F§() : Boolean
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         §§push(§4!K§ / §'!S§.§2"<§);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§7!#§ / §'!S§.§2"<§);
         if(!(_loc13_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(20);
         if(!_loc13_)
         {
            §§push(int(§§pop() + Math.random() * 10));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 10;
         var _loc5_:Number = 1;
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            if(_loc6_ < _loc3_)
            {
               §§push(Math.random() * (Math.PI * 2));
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  while(true)
                  {
                     _loc10_ = §§pop();
                     while(true)
                     {
                        §§push(0.5);
                        if(_loc12_)
                        {
                           §§push(_loc4_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc12_)
                              {
                                 addr125:
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 if(_loc13_)
                                 {
                                    continue loop1;
                                 }
                                 addr130:
                                 §§push(§§pop() + _loc4_ * (Math.random() * 0.5));
                                 if(_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc11_ = §§pop();
                              loop4:
                              while(!_loc13_)
                              {
                                 do
                                 {
                                    §?l§.§'h§.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,§4!K§,§7!#§,1250,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc11_ * Math.cos(_loc10_) * _loc5_,-_loc11_ * Math.sin(_loc10_) * _loc5_,5,_loc11_ * 20,Math.sqrt(_loc5_));
                                    while(true)
                                    {
                                       _loc6_++;
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       if(_loc12_)
                                       {
                                          if(!(_loc12_ || _loc2_))
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr72);
                                          continue loop4;
                                       }
                                    }
                                    var _loc7_:§]D§ = null;
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       if(§9!L§.length > 0)
                                       {
                                          addr182:
                                          _loc7_ = §9!L§[§<"§] as §]D§;
                                          if(!_loc13_)
                                          {
                                             §9!L§.splice(§<"§,1);
                                          }
                                       }
                                       var _loc8_:§ !X§ = §?l§.§'h§.slingshot.§<-§("BIRD_WINGMAN",§4!K§ + 0.7,§7!#§ + 0.1,0);
                                       if(!(_loc13_ && this))
                                       {
                                          §@"M§.§3"C§("Bird_Wingman_Appear","ChannelWingman");
                                          addr236:
                                          addr252:
                                          §§push(§?l§.§'h§);
                                          if(!_loc13_)
                                          {
                                             (§§pop().getController() as §4!`§).§=!q§();
                                             addr245:
                                             if(_loc12_)
                                             {
                                                §§push(§?l§.§'h§);
                                                if(_loc12_ || this)
                                                {
                                                   (§§pop() as §%6§).§+"3§.§0-§ = true;
                                                   if(_loc12_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr236);
                                                      }
                                                      addr255:
                                                      var _loc9_:§="@§;
                                                      (_loc9_ = §?l§.§'h§.particles as §="@§).§?7§(§4!K§,§7!#§);
                                                      if(!_loc13_)
                                                      {
                                                         §+C§ = true;
                                                         if(!_loc13_)
                                                         {
                                                            addr271:
                                                            §§push(Boolean(_loc7_));
                                                            if(_loc12_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc12_ || _loc2_)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr308);
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         addr308:
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            §§push(_loc7_.§;"F§);
                                                            if(!_loc13_)
                                                            {
                                                               addr306:
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         §§push(null);
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               return true;
                                                            }
                                                            addr327:
                                                            §§push(null);
                                                         }
                                                         _loc7_ = §§pop();
                                                         return false;
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr255);
                                                addr247:
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr182);
                                 }
                                 while(false);
                                 
                                 continue loop0;
                              }
                              continue;
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr125);
                     }
                  }
               }
            }
            §§goto(addr168);
         }
      }
      
      private function §2"=§(param1:§1!"§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §+C§ = true;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     addr84:
                     while(true)
                     {
                        §§push(param1.update(param2));
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  return;
                  addr64:
               }
               §§goto(addr83);
            }
         }
         §§goto(addr84);
      }
   }
}
