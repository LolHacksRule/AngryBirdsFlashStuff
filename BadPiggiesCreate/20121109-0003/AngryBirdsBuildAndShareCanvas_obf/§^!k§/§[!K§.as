package §^!k§
{
   import §%!0§.§,4§;
   import §+!-§.§7"#§;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §1" §.§6!2§;
   import §;"7§.§="<§;
   import §;b§.StateLevelEditor;
   import §<!a§.b2Vec2;
   import §[!P§.§@R§;
   
   public class §[!K§
   {
       
      
      private var §`!a§:Vector.<§7"#§>;
      
      private var § try§:Vector.<§7"#§>;
      
      private var §?!%§:Texture;
      
      private var §+">§:§6!2§;
      
      private var §5"&§:StateLevelEditor;
      
      public function §[!K§(param1:StateLevelEditor, param2:§6!2§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§`!a§ = new Vector.<§7"#§>();
            loop0:
            while(true)
            {
               this.§ try§ = new Vector.<§7"#§>();
               while(true)
               {
                  super();
                  while(_loc3_ || param1)
                  {
                     this.§5"&§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§+">§ = param2;
                        loop4:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                           addr41:
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                        addr19:
                        return;
                     }
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§?!%§ = §="<§.§[E§.§-t§();
                        §§goto(addr41);
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function update(param1:Vector.<§@R§>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!r§(param1);
         }
      }
      
      private function §@!r§(param1:Vector.<§@R§>) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc3_:§@R§ = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:int = 0;
         var _loc14_:§7"#§ = null;
         var _loc15_:§7"#§ = null;
         if(!(_loc19_ && _loc2_))
         {
            this.§?!%§ = §'_§.§=M§.§8=§.§5!!§("LASER_DOT").texture;
         }
         var _loc2_:int = 0;
         loop0:
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§=!%§.§<D§().GetPosition();
            _loc5_ = _loc3_.§=!%§.§3@§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§&"1§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            if(!_loc19_)
            {
               §§push(4);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_.x);
                        loop4:
                        for(; _loc18_ || this; if(!(_loc18_ || this))
                        {
                           continue;
                        },_loc10_ = §§pop(),§§goto(addr236))
                        {
                           §§push(_loc4_.x);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc9_ = §§pop();
                                    if(!(_loc18_ || param1))
                                    {
                                       break;
                                    }
                                    if(!_loc19_)
                                    {
                                       §§push(_loc5_.y);
                                       if(!_loc19_)
                                       {
                                          if(_loc18_)
                                          {
                                             continue loop5;
                                          }
                                          continue;
                                       }
                                       addr226:
                                       while(_loc18_)
                                       {
                                          continue loop4;
                                          while(_loc18_ || _loc3_)
                                          {
                                             _loc11_ = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Number(Math.atan2(_loc10_,_loc9_)));
                                                if(!(_loc18_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                _loc12_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         continue loop1;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(§§pop() > Math.abs(_loc6_.§?!]§()) / _loc8_)
                                                         {
                                                            break loop7;
                                                         }
                                                         if(this.§`!a§.length <= _loc2_)
                                                         {
                                                            if(!(_loc18_ || param1))
                                                            {
                                                               break loop7;
                                                            }
                                                            this.§`!a§.push(this.§2q§());
                                                            if(!_loc18_)
                                                            {
                                                               break loop7;
                                                            }
                                                            if(!_loc18_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc18_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               _loc14_ = this.§`!a§[_loc2_];
                                                               if(!_loc19_)
                                                               {
                                                                  §'_§.§=M§.objects.§`z§.addChild(_loc14_);
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     addr319:
                                                                     §§push(_loc14_);
                                                                     §§push(_loc5_.x);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() * _loc13_);
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr331:
                                                                              §§push(§§pop() * _loc7_.x);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr336:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    addr344:
                                                                                    §§push(§,4§.§,^§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr355:
                                                                                          §§push(§§pop() - _loc14_.width / 2);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc19_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    §§push(_loc5_.y);
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc13_);
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * _loc7_.y);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr413:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§,4§.§,^§);
                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                   {
                                                                                                      addr430:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr437:
                                                                                                         §§push(§§pop() - _loc14_.height / 2);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr437);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_++;
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc18_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_++;
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                      }
                                                                                                      addr374:
                                                                                                      while(false)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                         §§goto(addr385);
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                                addr439:
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          §§goto(addr437);
                                                                                       }
                                                                                       §§goto(addr413);
                                                                                    }
                                                                                    §§goto(addr437);
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr439);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  break loop11;
                                                               }
                                                               addr236:
                                                            }
                                                         }
                                                         else if((_loc14_ = this.§`!a§[_loc2_]).parent != §'_§.§=M§.objects.§`z§)
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               §'_§.§=M§.objects.§`z§.addChild(_loc14_);
                                                            }
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                addr158:
                                                if(!(_loc18_ || this))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr440);
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr180);
         }
         if(_loc18_ || _loc3_)
         {
            while(this.§`!a§.length > _loc2_)
            {
               _loc15_ = this.§`!a§.pop();
               if(!(_loc19_ && _loc3_))
               {
                  §'_§.§=M§.objects.§`z§.removeChild(_loc15_);
                  if(!_loc19_)
                  {
                     this.§7![§(_loc15_);
                  }
               }
            }
         }
      }
      
      private function §2q§() : §7"#§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§ try§.length > 0)
            {
               if(_loc2_)
               {
                  return this.§ try§.pop();
               }
            }
         }
         return new §7"#§(this.§?!%§);
      }
      
      private function §7![§(param1:§7"#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§ try§)
            {
               while(true)
               {
                  this.§ try§ = new Vector.<§7"#§>();
                  addr62:
                  while(true)
                  {
                  }
               }
               addr56:
            }
            while(true)
            {
               this.§ try§.push(param1);
               if(!_loc2_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
