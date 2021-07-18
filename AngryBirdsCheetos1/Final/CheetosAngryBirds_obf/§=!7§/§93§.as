package §=!7§
{
   import § `§.§2w§;
   import §?m§.§7?§;
   import §]@§.§9!<§;
   import §]@§.Sprite;
   import §`C§.§9!'§;
   
   public class §93§
   {
      
      public static const §2&§:String = "CutScene_Type_Intro";
      
      public static const §6!N§:String = "CutScene_Type_Outro";
      
      public static const §,,§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2&§ = "CutScene_Type_Intro";
            do
            {
               §6!N§ = "CutScene_Type_Outro";
               do
               {
                  §,,§ = "CutScene_Type_Final_Outro";
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private var §8!M§:§2w§;
      
      private var §5!3§:String;
      
      private var §0,§:Vector.<§%f§>;
      
      private var §3-§:Number;
      
      private var §1s§:Number;
      
      private var §^!I§:Number;
      
      private var §,!X§:Number;
      
      private var §?!N§:Sprite;
      
      private var get:Boolean = true;
      
      private var §#A§:uint;
      
      private var §<+§:Boolean;
      
      private var §`7§:§9!<§;
      
      private var §[!%§:§9!<§;
      
      public function §93§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§%f§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§0,§ = new Vector.<§%f§>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§3-§ = 0;
                  while(true)
                  {
                     §§goto(addr63);
                  }
               }
            }
         }
         while(true)
         {
            if(false)
            {
               addr63:
               loop3:
               while(param1)
               {
                  if(!_loc7_)
                  {
                     §§push(param2);
                     while(§§pop().search("intro") == -1)
                     {
                        §§push(param2);
                        if(!_loc8_)
                        {
                           continue;
                        }
                        if(§§pop().search("complete") != -1)
                        {
                           if(!_loc7_)
                           {
                              this.§5!3§ = §6!N§;
                           }
                           if(_loc8_)
                           {
                              if(_loc7_ && _loc3_)
                              {
                                 break;
                              }
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           addr76:
                        }
                        var _loc5_:int = 0;
                        var _loc6_:* = param1;
                        loop6:
                        while(true)
                        {
                           §§push(§§hasnext(_loc6_,_loc5_));
                           if(_loc8_)
                           {
                              if(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 _loc3_ = this.§?,§(_loc4_);
                                 if(!_loc7_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc8_)
                                       {
                                          this.§0,§.push(_loc3_);
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    if(_loc8_ || this)
                                    {
                                       _loc5_ = 0;
                                       if(_loc8_ || param2)
                                       {
                                          addr161:
                                          _loc6_ = this.§0,§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc6_,_loc5_));
                                             break loop6;
                                          }
                                          addr258:
                                       }
                                       break loop3;
                                    }
                                    break loop3;
                                 }
                              }
                              §§goto(addr161);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc3_ = §§nextvalue(_loc5_,_loc6_);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(_loc3_ is §'!M§);
                                 loop8:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          (_loc3_ as §'!M§).§%r§(this.§^!I§,this.§,!X§);
                                          break;
                                       }
                                       break;
                                    }
                                    §§push(_loc3_ is §3&§);
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             break loop8;
                                          }
                                          addr211:
                                          while(true)
                                          {
                                             (_loc3_ as §3&§).§%r§(this.§^!I§,this.§,!X§);
                                             do
                                             {
                                                (_loc3_ as §3&§).§true § = this.get;
                                             }
                                             while(_loc7_);
                                             
                                             if(_loc7_)
                                             {
                                                continue loop9;
                                             }
                                             if(_loc7_ && param1)
                                             {
                                                break loop9;
                                             }
                                             if(false)
                                             {
                                                addr200:
                                             }
                                             §§goto(addr258);
                                          }
                                       }
                                       addr227:
                                       §§goto(addr200);
                                    }
                                    §§goto(addr161);
                                 }
                                 (_loc3_ as §'!M§).§9![§ = this.get;
                                 §§goto(addr227);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr161);
                        }
                     }
                     this.§5!3§ = §2&§;
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr93);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!N§;
      }
      
      private function §?,§(param1:Object) : §%f§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§%f§.§,H§);
            if(!(_loc5_ && param1))
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§push(0);
                     if(!(_loc6_ || _loc3_))
                     {
                        addr355:
                     }
                  }
                  else
                  {
                     addr403:
                     §§push(7);
                     if(_loc5_)
                     {
                        addr424:
                     }
                  }
               }
               else
               {
                  §§push(§%f§.§2k§);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(1);
                           if(_loc5_)
                           {
                              addr377:
                           }
                        }
                        else
                        {
                           addr374:
                           §§push(5);
                           if(!_loc5_)
                           {
                              §§goto(addr377);
                           }
                        }
                        §§goto(addr429);
                     }
                     else
                     {
                        §§push(§%f§.§7g§);
                        if(_loc6_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr429);
                                 }
                                 else
                                 {
                                    §§goto(addr424);
                                 }
                              }
                              else
                              {
                                 §§goto(addr374);
                              }
                              §§goto(addr429);
                           }
                           else
                           {
                              §§push(§%f§.§`F§);
                              if(_loc6_ || _loc3_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          §§goto(addr429);
                                       }
                                       else
                                       {
                                          §§goto(addr377);
                                       }
                                    }
                                    §§goto(addr429);
                                 }
                                 else
                                 {
                                    §§push(§%f§.END);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             addr347:
                                             §§push(4);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§goto(addr355);
                                             }
                                             else
                                             {
                                                addr389:
                                                §§goto(addr429);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr374);
                                          }
                                          §§goto(addr429);
                                       }
                                       else
                                       {
                                          §§push(§%f§.§]=§);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr365:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   §§goto(addr374);
                                                }
                                                else
                                                {
                                                   addr386:
                                                   §§push(6);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr389);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr424);
                                                   }
                                                }
                                                §§goto(addr429);
                                             }
                                             else
                                             {
                                                §§push(§%f§.§<!B§);
                                                if(!_loc5_)
                                                {
                                                   addr382:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr386);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr403);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§%f§.§]!!§);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr409:
                                                      if(§§pop() === _loc4_)
                                                      {
                                                         addr411:
                                                         §§push(8);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr424);
                                                         }
                                                         §§goto(addr429);
                                                      }
                                                      else
                                                      {
                                                         addr429:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               return new §3&§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                            case 1:
                                                               _loc2_ = param1.scroll_target;
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc2_.type == "sprite")
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        return new §'!M§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            case 2:
                                                               _loc3_ = param1.zoom_target;
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc3_.type != "sprite")
                                                                  {
                                                                     addr191:
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr225);
                                                            case 3:
                                                               return new §=!2§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                            case 8:
                                                               this.§#A§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr144:
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr225:
                                                                           return new §+!R§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                        }
                                                                        addr176:
                                                                        this.§1s§ = param1.time * 1000;
                                                                     }
                                                                     else
                                                                     {
                                                                        addr173:
                                                                        if(_loc6_)
                                                                        {
                                                                           this.§,!X§ = param1.height;
                                                                           break;
                                                                           addr165:
                                                                        }
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr159:
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                               else
                                                               {
                                                                  addr150:
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr165);
                                                            case 4:
                                                               §§goto(addr176);
                                                            case 5:
                                                               this.§^!I§ = param1.width;
                                                               §§goto(addr173);
                                                            case 6:
                                                               this.get = false;
                                                               §§goto(addr159);
                                                            case 7:
                                                               this.get = true;
                                                               §§goto(addr150);
                                                         }
                                                         return null;
                                                         §§push(9);
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                   §§goto(addr429);
                                                }
                                                if(§§pop() === _loc4_)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§goto(addr403);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr411);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr409);
                                                   §§push(§%f§.§7!8§);
                                                }
                                                §§goto(addr411);
                                             }
                                          }
                                          §§goto(addr409);
                                       }
                                    }
                                    §§goto(addr382);
                                 }
                              }
                              §§goto(addr409);
                           }
                        }
                        §§goto(addr409);
                     }
                  }
                  §§goto(addr365);
               }
               §§goto(addr429);
            }
            §§goto(addr409);
         }
         §§goto(addr347);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§?!N§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?!N§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        addr83:
                        loop4:
                        while(true)
                        {
                           this.§?!N§ = null;
                           addr57:
                           addr64:
                           while(!(_loc2_ || _loc1_))
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr45:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     return;
                     addr52:
                  }
               }
               while(true)
               {
                  this.§0,§ = null;
                  if(!_loc1_)
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr57);
                  §§goto(addr64);
               }
               §§goto(addr52);
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§?!N§)
            {
               if(_loc3_)
               {
                  this.§?!N§ = new Sprite();
                  if(!_loc4_)
                  {
                     addr29:
                     §§push(this);
                     §§push(this.§3-§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§3-§ = §§pop();
                  }
               }
               var _loc2_:* = int(this.§0,§.length - 1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(_loc3_ || param1)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 this.§0,§.splice(_loc2_,1);
                              }
                              else
                              {
                                 addr148:
                              }
                              this.§?O§();
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 this.§+_§();
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    this.§0!,§();
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                        else if(!this.§0,§[_loc2_].update(this.§3-§,this.§?!N§,this.§8!M§))
                        {
                           §§goto(addr148);
                        }
                        §§push(_loc2_);
                     }
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
               }
               return this.§3-§ < this.§1s§;
            }
         }
         §§goto(addr29);
      }
      
      private function §0!,§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §9!'§.§7!Z§.§>!D§.height;
         §§push(§7?§.§&Z§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§7?§.§1H§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(this.§,!X§);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§?!N§);
            §§push(_loc4_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §?O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!'§.§7!Z§.color = this.§#A§;
         }
      }
      
      private function §+_§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§<+§)
            {
               if(_loc3_)
               {
                  §§goto(addr24);
               }
            }
            var _loc1_:Sprite = this.§?!N§.getChildByName(§3&§.§[!M§) as Sprite;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc3_ || _loc1_)
                  {
                  }
                  §§goto(addr73);
               }
               this.§<+§ = true;
            }
            addr73:
            return;
         }
         addr24:
      }
      
      public function clone(param1:§2w§) : §93§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§%f§ = null;
         var _loc2_:§93§ = new §93§(null,null);
         for each(_loc3_ in this.§0,§)
         {
            if(!_loc6_)
            {
               _loc2_.§0,§.push(_loc3_.clone());
            }
         }
         if(!_loc6_)
         {
            _loc2_.§3-§ = this.§3-§;
            loop1:
            while(true)
            {
               _loc2_.§1s§ = this.§1s§;
               while(true)
               {
                  _loc2_.§^!I§ = this.§^!I§;
                  while(true)
                  {
                     _loc2_.§,!X§ = this.§,!X§;
                     addr64:
                     if(_loc7_)
                     {
                        return _loc2_;
                        addr76:
                     }
                  }
                  addr97:
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc7_)
                     {
                        _loc2_.§5!3§ = this.§5!3§;
                        while(_loc7_ || param1)
                        {
                           _loc2_.§8!M§ = param1;
                           if(!_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr64);
                        }
                        loop6:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr97);
                           }
                           else
                           {
                              loop5:
                              while(true)
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    _loc2_.§#A§ = this.§#A§;
                                    continue loop6;
                                 }
                                 addr125:
                                 while(true)
                                 {
                                    _loc2_.get = this.get;
                                    continue loop5;
                                 }
                                 §§goto(addr76);
                              }
                           }
                        }
                        addr82:
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function get §]!A§() : String
      {
         return this.§5!3§;
      }
      
      public function set §]!A§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!3§ = param1;
         }
      }
   }
}
