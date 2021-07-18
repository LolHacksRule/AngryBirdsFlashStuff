package §7Z§
{
   import §"^§.§+!'§;
   import §2Y§.§7?§;
   import §2Y§.Sprite;
   import §9b§.§"!S§;
   import §=!<§.§>a§;
   
   public class §%!b§
   {
      
      public static const §^@§:String = "CutScene_Type_Intro";
      
      public static const §[!?§:String = "CutScene_Type_Outro";
      
      public static const §#!"§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^@§ = "CutScene_Type_Intro";
            while(true)
            {
               §[!?§ = "CutScene_Type_Outro";
               loop1:
               while(_loc1_ || §%!b§)
               {
                  while(true)
                  {
                     §#!"§ = "CutScene_Type_Final_Outro";
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §;u§:§>a§;
      
      private var §5!#§:String;
      
      private var §^E§:Vector.<§^!§>;
      
      private var §+K§:Number;
      
      private var §;q§:Number;
      
      private var §@!-§:Number;
      
      private var §3S§:Number;
      
      private var §;=§:Sprite;
      
      private var §`!`§:Boolean = true;
      
      private var §&X§:uint;
      
      private var §9!=§:Boolean;
      
      private var §#!&§:§7?§;
      
      private var § !V§:§7?§;
      
      public function §%!b§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§^!§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§^E§ = new Vector.<§^!§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§+K§ = 0;
                  loop2:
                  while(!_loc7_)
                  {
                     loop3:
                     while(param1)
                     {
                        if(_loc8_)
                        {
                           §§push(param2);
                           loop4:
                           while(§§pop().search("intro") == -1)
                           {
                              §§push(param2);
                              if(_loc7_ && param2)
                              {
                                 continue;
                              }
                              if(§§pop().search("complete") != -1)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          this.§5!#§ = §[!?§;
                                          addr48:
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                break loop4;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       addr45:
                                    }
                                    addr93:
                                    var _loc5_:int = 0;
                                    var _loc6_:* = param1;
                                    addr140:
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                          _loc3_ = this.§@!=§(_loc4_);
                                          if(_loc8_ || param1)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr136:
                                                   this.§^E§.push(_loc3_);
                                                }
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr136);
                                       }
                                       if(!_loc7_)
                                       {
                                          if(_loc8_)
                                          {
                                             if(!_loc7_)
                                             {
                                                _loc5_ = 0;
                                                if(_loc8_ || this)
                                                {
                                                   _loc6_ = this.§^E§;
                                                   addr258:
                                                   for each(_loc3_ in _loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr238:
                                                         if(_loc3_ is §"q§)
                                                         {
                                                            (_loc3_ as §"q§).§1n§(this.§@!-§,this.§3S§);
                                                            (_loc3_ as §"q§).§ !,§ = this.§`!`§;
                                                            addr239:
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  addr191:
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            addr257:
                                                            §§goto(addr257);
                                                         }
                                                         §§push(_loc3_ is §&!Q§);
                                                         if(_loc8_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  addr207:
                                                                  (_loc3_ as §&!Q§).§1n§(this.§@!-§,this.§3S§);
                                                               }
                                                               addr215:
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  (_loc3_ as §&!Q§).§'d§ = this.§`!`§;
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr191);
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   addr261:
                                                   break loop3;
                                                   addr260:
                                                }
                                                §§goto(addr261);
                                             }
                                             break loop3;
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr258);
                                    addr74:
                                 }
                                 §§goto(addr48);
                              }
                              §§goto(addr93);
                           }
                        }
                        this.§5!#§ = §^@§;
                        §§goto(addr74);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get sprite() : Sprite
      {
         return this.§;=§;
      }
      
      private function §@!=§(param1:Object) : §^!§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§^!§.§+R§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(0);
                     if(!(_loc6_ || this))
                     {
                        addr449:
                     }
                  }
                  else
                  {
                     addr418:
                     §§push(7);
                     if(_loc6_ || param1)
                     {
                        addr426:
                     }
                  }
               }
               else
               {
                  §§push(§^!§.§7!b§);
                  if(!(_loc5_ && this))
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           addr301:
                           §§push(1);
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr454);
                           }
                           else
                           {
                              §§goto(addr449);
                           }
                        }
                        §§goto(addr454);
                     }
                     else
                     {
                        §§push(§^!§.§+q§);
                        if(_loc6_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_)
                              {
                                 §§push(2);
                                 if(!_loc6_)
                                 {
                                    addr355:
                                 }
                              }
                              else
                              {
                                 addr374:
                                 §§push(5);
                                 if(_loc5_)
                                 {
                                    addr404:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§^!§.§"Z§);
                              if(!_loc5_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(3);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr454);
                                    }
                                    else
                                    {
                                       §§goto(addr352);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§^!§.END);
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             addr352:
                                             §§push(4);
                                             if(_loc6_)
                                             {
                                                §§goto(addr355);
                                             }
                                             §§goto(addr454);
                                          }
                                          else
                                          {
                                             §§goto(addr374);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§^!§.§"%§);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr365:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr374);
                                                }
                                                else
                                                {
                                                   addr431:
                                                   §§push(8);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§goto(addr449);
                                                   }
                                                   §§goto(addr454);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§^!§.§@u§);
                                                if(_loc6_ || _loc3_)
                                                {
                                                }
                                                addr429:
                                                if(§§pop() === _loc4_)
                                                {
                                                   §§goto(addr431);
                                                }
                                                else
                                                {
                                                   addr454:
                                                   loop2:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return new §&!Q§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                      case 1:
                                                         _loc2_ = param1.scroll_target;
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(_loc2_.type == "sprite")
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  return new §"q§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      case 2:
                                                         _loc3_ = param1.zoom_target;
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc3_.type != "sprite")
                                                            {
                                                               addr196:
                                                               break;
                                                            }
                                                            return new §&!F§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                            addr220:
                                                         }
                                                         else
                                                         {
                                                            addr135:
                                                            break;
                                                            addr171:
                                                         }
                                                         break;
                                                      case 3:
                                                         return new §2u§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                      case 6:
                                                         this.§`!`§ = false;
                                                         addr157:
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§goto(addr171);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr196);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break loop2;
                                                                  addr195:
                                                               }
                                                               addr186:
                                                               while(true)
                                                               {
                                                                  this.§;q§ = param1.time * 1000;
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                         }
                                                         break;
                                                      case 8:
                                                         this.§&X§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            addr141:
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§3S§ = param1.height;
                                                               addr185:
                                                            }
                                                            break;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr157);
                                                         }
                                                         §§goto(addr135);
                                                      case 4:
                                                         §§goto(addr186);
                                                      case 5:
                                                         this.§@!-§ = param1.width;
                                                         §§goto(addr185);
                                                      case 7:
                                                         this.§`!`§ = true;
                                                         §§goto(addr141);
                                                   }
                                                   return null;
                                                   §§push(9);
                                                }
                                                §§goto(addr454);
                                             }
                                             §§goto(addr431);
                                          }
                                       }
                                       §§goto(addr454);
                                    }
                                    §§goto(addr365);
                                 }
                                 §§goto(addr454);
                              }
                              if(§§pop() === _loc4_)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(6);
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr404);
                                    }
                                    else
                                    {
                                       §§goto(addr426);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr418);
                                 }
                                 §§goto(addr454);
                              }
                              else
                              {
                                 §§push(§^!§.§"6§);
                                 if(!(_loc5_ && param1))
                                 {
                                    addr414:
                                    if(§§pop() === _loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr418);
                                       }
                                       else
                                       {
                                          §§goto(addr431);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§^!§.§"g§);
                                    }
                                    §§goto(addr431);
                                 }
                              }
                           }
                           §§goto(addr454);
                        }
                        §§goto(addr429);
                     }
                  }
                  §§goto(addr414);
               }
               §§goto(addr454);
            }
            §§goto(addr365);
         }
         §§goto(addr301);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;=§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§;=§);
                     addr77:
                     while(true)
                     {
                        §§pop().dispose();
                        addr78:
                        while(true)
                        {
                           this.§;=§ = null;
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§^E§ = null;
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr47);
                  §§goto(addr47);
               }
               return;
               addr42:
            }
            §§goto(addr77);
         }
         §§goto(addr42);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§;=§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr29:
                  this.§;=§ = new Sprite();
                  if(!(_loc3_ && param1))
                  {
                     addr40:
                     §§push(this);
                     §§push(this.§+K§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§+K§ = §§pop();
                  }
               }
               var _loc2_:* = int(this.§^E§.length - 1);
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           do
                           {
                              this.§2<§();
                              while(true)
                              {
                                 this.§;C§();
                                 while(!(_loc3_ && param1))
                                 {
                                    this.§0!c§();
                                    if(_loc4_ || param1)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           while(!_loc4_);
                           
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 break;
                              }
                              addr159:
                              this.§^E§.splice(_loc2_,1);
                           }
                        }
                        else if(!this.§^E§[_loc2_].update(this.§+K§,this.§;=§,this.§;u§))
                        {
                           §§goto(addr159);
                        }
                        §§push(_loc2_);
                     }
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
               }
               return this.§+K§ < this.§;q§;
            }
            §§goto(addr40);
         }
         §§goto(addr29);
      }
      
      private function §0!c§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §+!'§.§2d§.§9!_§.height;
         §§push(§"!S§.§<!4§);
         if(_loc6_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§"!S§.§[=§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_ || this)
         {
            §§push(this.§3S§);
            if(_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc5_ && this))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§;=§);
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §2<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+!'§.§2d§.color = this.§&X§;
         }
      }
      
      private function §;C§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§9!=§)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr28);
               }
            }
            var _loc1_:Sprite = this.§;=§.getChildByName(§&!Q§.§<!b§) as Sprite;
            if(!(_loc3_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr74:
                     this.§9!=§ = true;
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         addr28:
      }
      
      public function clone(param1:§>a§) : §%!b§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§^!§ = null;
         var _loc2_:§%!b§ = new §%!b§(null,null);
         for each(_loc3_ in this.§^E§)
         {
            if(_loc7_ || this)
            {
               _loc2_.§^E§.push(_loc3_.clone());
            }
         }
         if(_loc7_)
         {
            _loc2_.§+K§ = this.§+K§;
            while(true)
            {
               _loc2_.§;q§ = this.§;q§;
               loop2:
               for(; _loc7_ || param1; if(!(_loc6_ && param1))
               {
                  return _loc2_;
               })
               {
                  _loc2_.§@!-§ = this.§@!-§;
                  loop3:
                  while(true)
                  {
                     _loc2_.§3S§ = this.§3S§;
                     loop4:
                     while(true)
                     {
                        _loc2_.§`!`§ = this.§`!`§;
                        while(true)
                        {
                           _loc2_.§&X§ = this.§&X§;
                           loop6:
                           while(_loc7_)
                           {
                              continue loop4;
                              while(true)
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 continue loop6;
                                 addr106:
                                 _loc2_.§;u§ = param1;
                                 if(_loc7_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      public function get §#$§() : String
      {
         return this.§5!#§;
      }
      
      public function set §#$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!#§ = param1;
         }
      }
   }
}
