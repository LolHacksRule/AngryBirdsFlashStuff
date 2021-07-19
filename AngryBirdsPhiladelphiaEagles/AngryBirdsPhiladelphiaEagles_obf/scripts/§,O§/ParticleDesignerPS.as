package §,O§
{
   import §+§.deg2rad;
   import §8z§.Texture;
   import §8z§.§^,§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends § d§
   {
       
      
      private const §=S§:int = 0;
      
      private const §;d§:int = 1;
      
      private var §-o§:Number;
      
      private var §9S§:int;
      
      private var §7!+§:Number;
      
      private var §#k§:Number;
      
      private var §3V§:int;
      
      private var §case §:Number;
      
      private var §&w§:Number;
      
      private var §3!K§:Number;
      
      private var §4!+§:Number;
      
      private var §1`§:Number;
      
      private var §-!+§:Number;
      
      private var §`>§:Number;
      
      private var §]'§:Number;
      
      private var §7#§:Number;
      
      private var §=!-§:Number;
      
      private var §3!#§:Number;
      
      private var § !!§:Number;
      
      private var §"%§:Number;
      
      private var §`!;§:Number;
      
      private var § !=§:Number;
      
      private var §&!K§:Number;
      
      private var §#G§:Number;
      
      private var §4A§:Number;
      
      private var §?!?§:Number;
      
      private var §?H§:Number;
      
      private var §@!N§:Number;
      
      private var §#w§:Number;
      
      private var §0N§:Number;
      
      private var §;O§:Number;
      
      private var §&m§:Number;
      
      private var §&&§:Number;
      
      private var §?!>§:ColorArgb;
      
      private var §=!5§:ColorArgb;
      
      private var §^7§:ColorArgb;
      
      private var §7%§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§7e§(param1,param2);
         }
         §§push(this.§3V§);
         §§push(this.§case §);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() + this.§3!K§);
         }
         §§push(§§pop() / §§pop());
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            super(param2,_loc3_,this.§3V§,§;p§,§>=§);
            do
            {
               §7o§ = false;
            }
            while(!_loc4_);
            
         }
      }
      
      public function get §6!,§() : int
      {
         return this.§3V§;
      }
      
      override protected function createParticle() : §50§
      {
         return new PDParticle();
      }
      
      private function get §2!4§() : Boolean
      {
         return this.§6!,§ >= 20;
      }
      
      override protected function initParticle(param1:§50§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override protected function advanceParticle(param1:§50§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§[@§ - _loc3_.§=d§);
         if(_loc14_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc14_)
         {
            §§push(§§pop() > param2);
            if(!_loc13_)
            {
               if(§§pop())
               {
                  §§push(Number(param2));
                  if(!(_loc13_ && param2))
                  {
                     addr80:
                     param2 = §§pop();
                     if(!_loc13_)
                     {
                        _loc3_.§=d§ += param2;
                        loop0:
                        while(true)
                        {
                           if(this.§9S§ != this.§;d§)
                           {
                              §§push(!_loc3_.skipUpdate);
                              if(_loc14_)
                              {
                                 §§push(§§pop());
                                 loop1:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          §§push(this.§2!4§);
                                          if(_loc14_ || this)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                             addr921:
                                          }
                                          addr922:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(_loc3_.x - _loc3_.startX);
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      §§push(_loc3_.y - _loc3_.startY);
                                                      loop77:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr908:
                                                         loop76:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if((_loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)) < 0.01)
                                                            {
                                                               §§push(0.01);
                                                               loop78:
                                                               while(true)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr898:
                                                                     _loc7_ = §§pop();
                                                                     break;
                                                                  }
                                                                  loop51:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§;O§);
                                                                     addr948:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc3_.§=d§ = _loc3_.§[@§;
                                                                              addr953:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr949:
                                                                        }
                                                                        loop57:
                                                                        while(true)
                                                                        {
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.skipUpdate);
                                                                              addr476:
                                                                              while(!(_loc13_ && param2))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 continue loop1;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc14_ || param2)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       §§push(_loc3_.velocityX);
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          §§push(2 * param2);
                                                                                          if(_loc14_ || param2)
                                                                                          {
                                                                                             §§push(this.§&!K§);
                                                                                             if(!(_loc13_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   addr707:
                                                                                                   addr708:
                                                                                                   addr709:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                   }
                                                                                                   §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                   §§push(_loc3_);
                                                                                                   §§push(_loc3_.velocityY);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(2 * param2);
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(this.§#G§);
                                                                                                         if(!(_loc13_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               addr656:
                                                                                                               addr657:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc13_ && param2))
                                                                                                               {
                                                                                                                  addr654:
                                                                                                                  §§push(§§pop() + _loc11_);
                                                                                                               }
                                                                                                               §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_.x += _loc3_.velocityX * param2;
                                                                                                                  addr518:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc3_.y += _loc3_.velocityY * param2;
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr508:
                                                                                                               addr621:
                                                                                                               addr658:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr654);
                                                                                                      }
                                                                                                      §§goto(addr656);
                                                                                                   }
                                                                                                   §§goto(addr657);
                                                                                                   addr710:
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr707);
                                                                                          }
                                                                                          §§goto(addr708);
                                                                                       }
                                                                                       §§goto(addr709);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop48:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          §§push(_loc3_.radius);
                                                                                          if(!(_loc13_ && this))
                                                                                          {
                                                                                             §§push(_loc3_.radiusDelta);
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                addr1047:
                                                                                                §§push(§§pop() * param2);
                                                                                                if(!(_loc13_ && this))
                                                                                                {
                                                                                                   addr1044:
                                                                                                   §§push(§§pop() * 2);
                                                                                                }
                                                                                                §§pop().radius = §§pop() - §§pop();
                                                                                                while(_loc14_)
                                                                                                {
                                                                                                   loop50:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc3_.x = §^!4§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                                                                      _loc3_.y = §>g§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§push(_loc3_.radius);
                                                                                                         continue loop51;
                                                                                                      }
                                                                                                      addr1088:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!_loc3_.skipUpdate);
                                                                                                         §§push(!_loc3_.skipUpdate);
                                                                                                         addr1092:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop60:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§2!4§);
                                                                                                                  addr1054:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     continue loop60;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1094:
                                                                                                            }
                                                                                                            loop45:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr1056:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop57;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(this.§2!4§)
                                                                                                                     {
                                                                                                                        _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                                                                                                        continue loop48;
                                                                                                                     }
                                                                                                                     addr1014:
                                                                                                                     _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        §§push(_loc3_.radius);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.radiusDelta);
                                                                                                                           if(!(_loc13_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * param2);
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                        }
                                                                                                                        §§pop().radius = §§pop();
                                                                                                                        addr1001:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop45;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr1048:
                                                                                             }
                                                                                             §§goto(addr1044);
                                                                                          }
                                                                                          §§goto(addr1047);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    §§push(_loc3_.velocityX);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          §§push(this.§&!K§);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc14_ || this)
                                                                                             {
                                                                                                addr606:
                                                                                                addr607:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc14_ || _loc3_)
                                                                                                {
                                                                                                   addr604:
                                                                                                   §§push(§§pop() + _loc10_);
                                                                                                }
                                                                                                §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                §§push(_loc3_);
                                                                                                §§push(_loc3_.velocityY);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§push(this.§#G§);
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            addr563:
                                                                                                            addr564:
                                                                                                            addr565:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                            }
                                                                                                            §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                                                            _loc3_.rotation += _loc3_.rotationDelta * param2;
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               break loop78;
                                                                                                            }
                                                                                                            §§goto(addr508);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr563);
                                                                                                   }
                                                                                                   §§goto(addr564);
                                                                                                }
                                                                                                §§goto(addr565);
                                                                                                addr608:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr604);
                                                                                       }
                                                                                       §§goto(addr606);
                                                                                    }
                                                                                    §§goto(addr607);
                                                                                 }
                                                                                 §§goto(addr656);
                                                                                 addr733:
                                                                              }
                                                                              continue loop51;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  break loop76;
                                                                  §§goto(addr898);
                                                               }
                                                               addr896:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            addr875:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  addr877:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr878:
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       addr872:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(_loc8_));
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(_loc9_));
                                                                                                addr851:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      continue loop77;
                                                                                                   }
                                                                                                   _loc11_ = §§pop();
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc3_.radialAcceleration);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop65:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr846:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        §§push(_loc9_);
                                                                                                                        continue loop65;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr845:
                                                                                                               }
                                                                                                               §§goto(addr948);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr845);
                                                                                                      }
                                                                                                      §§goto(addr1057);
                                                                                                   }
                                                                                                   §§goto(addr953);
                                                                                                }
                                                                                             }
                                                                                             addr865:
                                                                                          }
                                                                                          §§goto(addr896);
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
                                                         }
                                                      }
                                                   }
                                                }
                                                addr928:
                                             }
                                             §§goto(addr656);
                                          }
                                       }
                                       addr941:
                                    }
                                    §§goto(addr921);
                                 }
                              }
                              §§goto(addr1054);
                           }
                           §§goto(addr1088);
                        }
                     }
                     §§goto(addr872);
                  }
                  §§goto(addr875);
               }
               else
               {
                  §§push(Number(_loc4_));
                  if(!(_loc13_ && param2))
                  {
                     §§goto(addr80);
                  }
               }
               §§goto(addr877);
            }
            §§goto(addr439);
         }
         §§goto(addr928);
      }
      
      private function §7e§(param1:XML, param2:Texture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§7!+§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
            this.§#k§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
            this.§&!K§ = parseFloat(param1.gravity.attribute("x"));
            loop0:
            while(true)
            {
               this.§#G§ = parseFloat(param1.gravity.attribute("y"));
               this.§9S§ = this.§ U§(param1.emitterType);
               while(true)
               {
                  this.§3V§ = this.§ U§(param1.maxParticles);
                  this.§case § = Math.max(0.01,this.§@!L§(param1.particleLifeSpan));
                  this.§&w§ = this.§@!L§(param1.particleLifespanVariance);
                  while(true)
                  {
                     if(param1.particleInterval.length() != 1)
                     {
                        this.§3!K§ = 0;
                        loop3:
                        while(true)
                        {
                           addr614:
                           while(true)
                           {
                              this.§4!+§ = this.§@!L§(param1.startParticleSize);
                              addr621:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§4!+§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(param2.height);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr604:
                                          §§push(§§pop() / param2.width);
                                       }
                                       §§pop().§-!+§ = §§pop();
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr604);
                              }
                           }
                        }
                     }
                     §§goto(addr635);
                     this.§`>§ = this.§@!L§(param1.startParticleSizeVarianceY);
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr457);
                  }
               }
               while(true)
               {
                  if(!(_loc3_ || param1))
                  {
                     continue loop0;
                  }
                  §;p§ = this.§;!A§(param1.blendFuncSource);
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr300);
      }
      
      protected function § U§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@!L§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §1!&§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §^3§(param1:XMLList) : ColorArgb
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorArgb = new ColorArgb();
         if(!_loc3_)
         {
            _loc2_.red = parseFloat(param1.attribute("red"));
            while(true)
            {
               _loc2_.green = parseFloat(param1.attribute("green"));
               while(true)
               {
                  _loc2_.blue = parseFloat(param1.attribute("blue"));
                  §§goto(addr77);
               }
            }
         }
         addr77:
         while(true)
         {
            _loc2_.alpha = parseFloat(param1.attribute("alpha"));
            if(_loc4_ || this)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
         return _loc2_;
      }
      
      protected function §;!A§(param1:XMLList) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§ U§(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || this)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(0);
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        §§push(0);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc4_)
                        {
                           if(§§pop() === _loc3_)
                           {
                              addr283:
                              switch(1)
                              {
                                 case 0:
                                    return Context3DBlendFactor.ZERO;
                                 case 1:
                                    return Context3DBlendFactor.ONE;
                                 case 2:
                                    return Context3DBlendFactor.SOURCE_COLOR;
                                 case 3:
                                    return Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR;
                                 case 4:
                                    return Context3DBlendFactor.SOURCE_ALPHA;
                                 case 5:
                                    return Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
                                 case 6:
                                    return Context3DBlendFactor.DESTINATION_ALPHA;
                                 case 7:
                                    return Context3DBlendFactor.ONE_MINUS_DESTINATION_ALPHA;
                                 case 8:
                                    return Context3DBlendFactor.DESTINATION_COLOR;
                                 case 9:
                                    return Context3DBlendFactor.ONE_MINUS_DESTINATION_COLOR;
                                 default:
                                    throw new ArgumentError("unsupported blending function: " + _loc2_);
                              }
                           }
                           else
                           {
                              §§push(768);
                              if(!_loc5_)
                              {
                                 addr162:
                                 §§push(_loc3_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr170:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(2);
                                          if(!_loc4_)
                                          {
                                             addr218:
                                             §§push(_loc3_);
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr226:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(7);
                                                      if(_loc4_ || this)
                                                      {
                                                         addr242:
                                                      }
                                                      else
                                                      {
                                                         addr278:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr270:
                                                      §§push(9);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§goto(addr278);
                                                      }
                                                   }
                                                   §§goto(addr283);
                                                }
                                                else
                                                {
                                                   §§push(774);
                                                   if(!_loc5_)
                                                   {
                                                      addr256:
                                                      if(§§pop() === _loc3_)
                                                      {
                                                         addr258:
                                                         §§push(8);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr266:
                                                            §§goto(addr283);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr278);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(775);
                                                         §§push(_loc3_);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr266);
                                                }
                                             }
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr270);
                                             }
                                             else
                                             {
                                                §§goto(addr283);
                                                §§push(10);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr213:
                                          §§push(6);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       §§goto(addr283);
                                    }
                                    else
                                    {
                                       §§push(769);
                                       §§push(_loc3_);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             §§push(3);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr283);
                                             }
                                             else
                                             {
                                                §§goto(addr218);
                                             }
                                          }
                                          else
                                          {
                                             if(770 === _loc3_)
                                             {
                                                §§goto(addr283);
                                                §§push(4);
                                             }
                                             else
                                             {
                                                if(771 === _loc3_)
                                                {
                                                   §§goto(addr283);
                                                   §§push(5);
                                                }
                                                else
                                                {
                                                   §§push(772);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc4_ || this)
                                                      {
                                                         addr212:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr218);
                                                            §§push(773);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr170);
               }
               §§goto(addr162);
            }
            §§goto(addr258);
         }
         §§goto(addr283);
      }
      
      protected function §,1§(param1:XMLList) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§1!&§(param1));
         if(!(_loc3_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(§^,§.§#b§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§^,§.§1K§);
                                    loop7:
                                    while(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr32:
                                                               §§push(§^,§.§#b§);
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr145);
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                         §§goto(addr32);
                                                         §§goto(addr62);
                                                      }
                                                      addr142:
                                                   }
                                                   loop8:
                                                   for(; !_loc3_; §§push(§§pop() == §§pop()),if(!(_loc4_ || this))
                                                   {
                                                      continue;
                                                   })
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         addr58:
                                                         while(true)
                                                         {
                                                            §§push(§^,§.NONE);
                                                            if(_loc4_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             continue loop3;
                                             addr132:
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr142);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr132);
                     }
                  }
               }
               if(_loc4_ || _loc3_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr145);
      }
   }
}

import §,O§.§50§;

class PDParticle extends §50§
{
    
   
   public var colorArgb:ColorArgb;
   
   public var colorArgbDelta:ColorArgb;
   
   public var startX:Number;
   
   public var startY:Number;
   
   public var velocityX:Number;
   
   public var velocityY:Number;
   
   public var radialAcceleration:Number;
   
   public var tangentialAcceleration:Number;
   
   public var radius:Number;
   
   public var radiusDelta:Number;
   
   public var rotationDelta:Number;
   
   public var scaleDeltaX:Number;
   
   public var scaleDeltaY:Number;
   
   public var skipUpdate:Boolean;
   
   function PDParticle()
   {
      super();
      this.colorArgb = new ColorArgb();
      this.colorArgbDelta = new ColorArgb();
   }
}

class ColorArgb
{
    
   
   public var alpha:Number = 0.0;
   
   public var red:Number;
   
   public var green:Number;
   
   public var blue:Number;
   
   function ColorArgb()
   {
      super();
   }
   
   public function toRgb() : uint
   {
      return int(this.red * 255) << 16 | int(this.green * 255) << 8 | int(this.blue * 255);
   }
}
