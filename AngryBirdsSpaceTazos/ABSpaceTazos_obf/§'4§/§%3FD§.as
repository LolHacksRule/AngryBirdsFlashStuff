package §'4§
{
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §]">§.§;U§;
   import §`!#§.Texture;
   import flash.geom.Point;
   
   public class §?D§
   {
       
      
      private var §'!X§:Texture;
      
      private var §]!$§:Sprite;
      
      private var §4";§:Vector.<§`y§>;
      
      private var §?!5§:Boolean;
      
      private var §3I§:int = 0;
      
      private var § !>§:Vector.<§`y§>;
      
      private var §6!=§:Number = -1.0;
      
      private var §=P§:Number = 0.0;
      
      private var §?!@§:Number = 0.0;
      
      public function §?D§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§ !>§ = new Vector.<§`y§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§]!$§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§'!X§ = param2;
                     while(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           this.§6!=§ = param3;
                           while(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           continue;
                           addr45:
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§=P§ = param4;
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr45);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`y§ = null;
         if(_loc5_)
         {
            this.§]!$§.dispose();
            if(!(_loc4_ && _loc2_))
            {
               addr32:
               this.§'!X§ = null;
            }
            var _loc2_:int = 0;
            for each(_loc1_ in this.§4";§)
            {
               if(!(_loc4_ && this))
               {
                  _loc1_.dispose();
               }
            }
            if(_loc5_)
            {
               this.§4";§ = null;
               do
               {
                  this.§ !>§ = null;
               }
               while(_loc4_ && _loc2_);
               
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §`!v§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'!X§ = param1;
         }
      }
      
      public function §!!0§(param1:Point, param2:Point, param3:Number, param4:§;U§) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc17_:§`y§ = null;
         var _loc18_:* = NaN;
         var _loc19_:§`y§ = null;
         var _loc5_:Point = param2.clone();
         var _loc6_:Number = 9;
         if(!(_loc22_ && this))
         {
            _loc5_.normalize(param3 / _loc6_);
         }
         var _loc7_:Point = param1.clone();
         var _loc8_:* = Number(0);
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         §§push(1200);
         if(!_loc22_)
         {
            §§push(int(§§pop() / (20 + param3)));
         }
         var _loc11_:* = §§pop();
         var _loc12_:Boolean = false;
         §§push(§4#§.§4a§);
         if(_loc23_)
         {
            §§push(§§pop() / _loc6_);
            if(_loc23_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc13_:* = §§pop();
         var _loc14_:b2Vec2 = new b2Vec2();
         §§push(b2Settings.b2_maxTranslation);
         if(_loc23_ || this)
         {
            §§push(§4#§.§4a§);
            if(!(_loc22_ && param3))
            {
               §§push(§§pop() / §§pop());
               if(!(_loc22_ && param2))
               {
                  addr112:
                  §§push(§§pop() / _loc6_);
                  if(!(_loc22_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc15_:* = §§pop();
               §§push(0);
               if(!(_loc22_ && param3))
               {
                  §§push(Number(§§pop()));
               }
               var _loc16_:* = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc12_);
                  if(_loc23_ || this)
                  {
                     §§push(!§§pop());
                     if(_loc23_)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           loop13:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc22_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       if(_loc23_)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc9_);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§4#§.§'!2§);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   addr607:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(_loc10_);
                                                         if(!(_loc23_ || param2))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() % _loc6_);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc22_ && this))
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     _loc7_.x += _loc5_.x * §4#§.§4a§;
                                                                     if(_loc22_ && param2)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     addr175:
                                                                     if(!(_loc22_ && this))
                                                                     {
                                                                        if(!_loc22_)
                                                                        {
                                                                           _loc7_.y += _loc5_.y * §4#§.§4a§;
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr146:
                                                                              if(!(_loc22_ && param2))
                                                                              {
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc10_);
                                                                                    if(_loc22_ && param1)
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                    §§push(_loc11_);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(§§pop() % §§pop());
                                                                                    if(!(_loc22_ && this))
                                                                                    {
                                                                                       addr401:
                                                                                       §§push(this.§3I§ % _loc11_);
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          addr405:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!(_loc23_ || this))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(this.§ !>§.length > _loc9_)
                                                                                             {
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr569:
                                                                                                §§push(_loc16_);
                                                                                                if(!(_loc22_ && this))
                                                                                                {
                                                                                                   addr578:
                                                                                                   §§push(§§pop() + _loc13_);
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      addr581:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc16_ = §§pop();
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr608:
                                                                                                   addr631:
                                                                                                   if(this.§ !>§.length > _loc9_)
                                                                                                   {
                                                                                                      _loc19_ = this.§ !>§.pop();
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         this.§]!$§.removeChild(_loc19_);
                                                                                                         if(!(_loc22_ && param2))
                                                                                                         {
                                                                                                            addr628:
                                                                                                            this.§!g§(_loc19_);
                                                                                                         }
                                                                                                         §§goto(addr631);
                                                                                                      }
                                                                                                      §§goto(addr628);
                                                                                                   }
                                                                                                   addr608:
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      var _loc20_:*;
                                                                                                      §§push((_loc20_ = this).§3I§);
                                                                                                      if(!(_loc22_ && param3))
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      var _loc21_:* = §§pop();
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         _loc20_.§3I§ = _loc21_;
                                                                                                      }
                                                                                                   }
                                                                                                   addr608:
                                                                                                }
                                                                                                §§goto(addr581);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc17_ = this.§@! §();
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   this.§]!$§.addChild(_loc17_);
                                                                                                   if(_loc23_ || this)
                                                                                                   {
                                                                                                      this.§ !>§.push(_loc17_);
                                                                                                   }
                                                                                                }
                                                                                                addr455:
                                                                                                _loc9_++;
                                                                                                if(!(_loc22_ && this))
                                                                                                {
                                                                                                   _loc17_.x = _loc7_.x / §^g§.§5!-§;
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      _loc17_.y = _loc7_.y / §^g§.§5!-§;
                                                                                                      §§push(1);
                                                                                                      §§push(_loc9_ / §4#§.§'!2§);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop() * 0.7);
                                                                                                      }
                                                                                                      addr519:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc23_ || param2)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               addr474:
                                                                                                               _loc17_.scaleX = _loc18_;
                                                                                                               if(!(_loc22_ && param2))
                                                                                                               {
                                                                                                                  _loc17_.scaleY = _loc18_;
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr474);
                                                                                                                        }
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.length * §4#§.§4a§);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 addr543:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    addr546:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       addr549:
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       addr550:
                                                                                                                                       §§push(§4#§.§@!8§);
                                                                                                                                    }
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc22_ && param3))
                                                                                                                                       {
                                                                                                                                          addr560:
                                                                                                                                          §§goto(addr608);
                                                                                                                                       }
                                                                                                                                       §§goto(addr668);
                                                                                                                                    }
                                                                                                                                    addr561:
                                                                                                                                    _loc10_++;
                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr569);
                                                                                                                                    }
                                                                                                                                    §§goto(addr608);
                                                                                                                                    §§goto(addr608);
                                                                                                                                 }
                                                                                                                                 §§goto(addr550);
                                                                                                                              }
                                                                                                                              §§goto(addr546);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr549);
                                                                                                                     }
                                                                                                                     §§goto(addr519);
                                                                                                                  }
                                                                                                                  addr668:
                                                                                                                  return;
                                                                                                                  addr485:
                                                                                                               }
                                                                                                               §§goto(addr668);
                                                                                                            }
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                         §§goto(addr543);
                                                                                                      }
                                                                                                      §§goto(addr546);
                                                                                                   }
                                                                                                   §§goto(addr668);
                                                                                                   addr463:
                                                                                                }
                                                                                                §§goto(addr485);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_.y += _loc14_.y * _loc13_;
                                                                                       if(_loc22_ && param3)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc5_.length > _loc15_)
                                                                                       {
                                                                                          if(!(_loc22_ && this))
                                                                                          {
                                                                                             _loc5_.normalize(_loc15_);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§push(this.§6!=§);
                                                                                       if(!(_loc22_ && this))
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                    addr346:
                                                                                 }
                                                                                 §§goto(addr581);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop11;
                                                                                    §§goto(addr146);
                                                                                 }
                                                                                 addr198:
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr368:
                                                                        while(true)
                                                                        {
                                                                           param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§?!@§,_loc14_);
                                                                           if(!_loc23_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           _loc5_.x += _loc14_.x * _loc13_;
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc5_.x *= 1 - §4#§.§4a§ * this.§=P§;
                                                                           if(_loc22_ && param2)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           _loc5_.y *= 1 - §4#§.§4a§ * this.§=P§;
                                                                           §§goto(addr175);
                                                                        }
                                                                        addr217:
                                                                     }
                                                                     §§goto(addr198);
                                                                  }
                                                                  _loc17_ = this.§ !>§[_loc9_];
                                                                  if(!(_loc22_ && this))
                                                                  {
                                                                     §§goto(addr455);
                                                                  }
                                                                  §§goto(addr463);
                                                                  addr157:
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr401);
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr608);
                                    }
                                    addr600:
                                 }
                              }
                              §§goto(addr607);
                           }
                        }
                        addr596:
                     }
                     §§goto(addr600);
                  }
                  §§goto(addr596);
               }
            }
         }
         §§goto(addr112);
      }
      
      public function get enabled() : Boolean
      {
         return this.§?!5§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§?!5§ = param1;
            do
            {
               this.§]!$§.visible = this.§?!5§;
            }
            while(_loc3_ && this);
            
         }
      }
      
      private function §@! §() : §`y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(Boolean(this.§4";§));
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr42:
                     §§pop();
                     §§goto(addr77);
                  }
               }
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     return this.§4";§.pop();
                  }
                  §§goto(addr77);
               }
               addr77:
               if(_loc2_ || _loc3_)
               {
                  §§push(this.§4";§.length > 0);
               }
               var _loc1_:§`y§ = new §`y§(this.§'!X§);
               if(_loc2_)
               {
                  §§push(_loc1_);
                  §§push(this.§'!X§.width);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(-§§pop());
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() / 2);
                     }
                  }
                  §§pop().pivotX = §§pop();
                  do
                  {
                     §§push(_loc1_);
                     §§push(this.§'!X§.height);
                     if(!_loc3_)
                     {
                        §§push(-§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() / 2);
                        }
                     }
                     §§pop().pivotY = §§pop();
                  }
                  while(!_loc2_);
                  
               }
               return _loc1_;
            }
         }
         §§goto(addr42);
      }
      
      private function §!g§(param1:§`y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§4";§)
            {
               while(true)
               {
                  this.§4";§ = new Vector.<§`y§>();
                  while(true)
                  {
                  }
               }
               addr67:
            }
            do
            {
               this.§4";§.push(param1);
               if(!_loc3_)
               {
                  continue;
               }
            }
            while(!(_loc3_ || _loc3_));
            
            return;
         }
         §§goto(addr67);
      }
      
      public function §2C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!@§ = param1;
         }
      }
   }
}
