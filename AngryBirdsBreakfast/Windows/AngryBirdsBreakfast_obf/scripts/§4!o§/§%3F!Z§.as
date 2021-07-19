package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.§ !f§;
   import §6![§.Sprite;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   
   public class §?!Z§
   {
      
      public static const §!^§:String = "CutScene_Type_Intro";
      
      public static const §-!o§:String = "CutScene_Type_Outro";
      
      public static const §extends§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §?!Z§)
         {
            §!^§ = "CutScene_Type_Intro";
            while(true)
            {
               §-!o§ = "CutScene_Type_Outro";
               while(!(_loc1_ && _loc2_))
               {
                  §extends§ = "CutScene_Type_Final_Outro";
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §`8§:§5!x§;
      
      private var §9m§:String;
      
      private var §0T§:Vector.<§0!c§>;
      
      private var §?W§:Number;
      
      private var §0"§:Number;
      
      private var §<`§:Number;
      
      private var §#!A§:Number;
      
      private var §#e§:Sprite;
      
      private var §`b§:Boolean = true;
      
      private var §,!o§:uint;
      
      private var §4I§:Boolean;
      
      private var §^!m§:§ !f§;
      
      private var §@k§:§ !f§;
      
      public function §?!Z§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§0!c§ = null;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            this.§0T§ = new Vector.<§0!c§>();
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§?W§ = 0;
               loop2:
               while(true)
               {
                  loop3:
                  while(param1)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(param2);
                        while(§§pop().search("intro") == -1)
                        {
                           §§push(param2);
                           if(!(_loc8_ || this))
                           {
                              continue;
                           }
                           if(§§pop().search("complete") != -1)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    this.§9m§ = §-!o§;
                                    addr50:
                                    if(_loc8_)
                                    {
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 addr67:
                                 if(_loc7_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 addr88:
                                 var _loc5_:int = 0;
                                 var _loc6_:* = param1;
                                 addr125:
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                       _loc3_ = this.§7e§(_loc4_);
                                       if(!_loc7_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc8_)
                                             {
                                                this.§0T§.push(_loc3_);
                                             }
                                          }
                                       }
                                       §§goto(addr125);
                                    }
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          if(!_loc7_)
                                          {
                                             _loc5_ = 0;
                                             if(_loc8_)
                                             {
                                                _loc6_ = this.§0T§;
                                                addr228:
                                                for each(_loc3_ in _loc6_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr208:
                                                      if(_loc3_ is §7!6§)
                                                      {
                                                         (_loc3_ as §7!6§).setSize(this.§<`§,this.§#!A§);
                                                         (_loc3_ as §7!6§).horizontal = this.§`b§;
                                                         addr173:
                                                         §§goto(addr228);
                                                         addr209:
                                                         addr227:
                                                         addr204:
                                                      }
                                                      §§push(_loc3_ is §=!e§);
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr188:
                                                                     (_loc3_ as §=!e§).setSize(this.§<`§,this.§#!A§);
                                                                     (_loc3_ as §=!e§).§2z§ = this.§`b§;
                                                                     addr196:
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr173);
                                                                           }
                                                                           §§goto(addr228);
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     addr196:
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                addr230:
                                             }
                                          }
                                          break loop3;
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr50);
                           }
                           §§goto(addr88);
                        }
                        if(!_loc8_)
                        {
                           break loop2;
                        }
                        this.§9m§ = §!^§;
                        §§goto(addr67);
                     }
                     if(false)
                     {
                        continue;
                     }
                     §§goto(addr88);
                  }
                  return;
               }
               continue loop0;
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      private function §7e§(param1:Object) : §0!c§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!(_loc6_ && _loc2_))
         {
            §§push(§0!c§.§"h§);
            if(!_loc6_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     addr253:
                     §§push(0);
                     if(_loc6_ && this)
                     {
                        addr288:
                     }
                  }
                  else
                  {
                     addr375:
                     §§push(6);
                     if(!_loc5_)
                     {
                        addr395:
                     }
                  }
               }
               else
               {
                  §§push(§0!c§.SCROLL);
                  if(_loc5_ || this)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(1);
                           if(!(_loc6_ && this))
                           {
                              §§goto(addr288);
                           }
                           else
                           {
                              addr423:
                              switch(§§pop())
                              {
                                 case 0:
                                    return new §=!e§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                 case 1:
                                    _loc2_ = param1.scroll_target;
                                    if(_loc5_)
                                    {
                                       if(_loc2_.type == "sprite")
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr57);
                                          }
                                       }
                                       break;
                                    }
                                    addr57:
                                    return new §7!6§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                 case 2:
                                    _loc3_ = param1.zoom_target;
                                    if(_loc5_)
                                    {
                                       if(_loc3_.type != "sprite")
                                       {
                                          addr175:
                                          break;
                                       }
                                       return new §,Y§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                       addr199:
                                    }
                                    else
                                    {
                                       break;
                                       addr122:
                                    }
                                    break;
                                 case 3:
                                    return new §+y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                 case 5:
                                    this.§<`§ = param1.width;
                                    addr157:
                                    if(!_loc6_)
                                    {
                                       this.§#!A§ = param1.height;
                                       addr142:
                                       if(_loc5_ || param1)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr199);
                                    }
                                    break;
                                 case 7:
                                    this.§`b§ = true;
                                    addr118:
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr122);
                                       }
                                       else
                                       {
                                          §§goto(addr157);
                                       }
                                    }
                                    §§goto(addr142);
                                 case 8:
                                    this.§,!o§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr129:
                                          if(_loc6_ && this)
                                          {
                                             addr167:
                                             if(_loc5_ || param1)
                                             {
                                                break;
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr118);
                                    §§goto(addr167);
                                 case 4:
                                    this.§0"§ = param1.time * 1000;
                                    §§goto(addr167);
                                 case 6:
                                    this.§`b§ = false;
                                    §§goto(addr129);
                              }
                              return null;
                              addr327:
                           }
                           §§goto(addr423);
                        }
                        else
                        {
                           §§goto(addr375);
                        }
                     }
                     else
                     {
                        §§push(§0!c§.§@""§);
                        if(_loc5_)
                        {
                           addr293:
                           if(§§pop() === _loc4_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(2);
                                 if(_loc5_ || _loc2_)
                                 {
                                 }
                              }
                              §§goto(addr423);
                           }
                           else
                           {
                              §§push(§0!c§.§2!Q§);
                              if(_loc5_ || _loc2_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(3);
                                       if(_loc5_)
                                       {
                                          §§goto(addr327);
                                       }
                                       else
                                       {
                                          addr349:
                                          §§goto(addr423);
                                       }
                                    }
                                    §§goto(addr423);
                                 }
                                 else
                                 {
                                    §§push(§0!c§.END);
                                    if(!(_loc6_ && param1))
                                    {
                                       addr337:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(4);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr349);
                                             }
                                          }
                                          else
                                          {
                                             addr400:
                                             §§push(8);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr418:
                                             }
                                          }
                                          §§goto(addr423);
                                       }
                                       else
                                       {
                                          §§push(§0!c§.§=!m§);
                                          if(!_loc6_)
                                          {
                                             addr354:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(5);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr423);
                                                }
                                                else
                                                {
                                                   addr392:
                                                   §§push(7);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr395);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr418);
                                                   }
                                                }
                                                §§goto(addr423);
                                             }
                                             else
                                             {
                                                §§push(§0!c§.§2!%§);
                                                if(!_loc5_)
                                                {
                                                }
                                                addr388:
                                                if(§§pop() === _loc4_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr392);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr400);
                                                   }
                                                }
                                                else
                                                {
                                                   addr398:
                                                   if(§0!c§.§7&§ === _loc4_)
                                                   {
                                                      §§goto(addr400);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr423);
                                                      §§push(9);
                                                   }
                                                   §§goto(addr423);
                                                }
                                                §§goto(addr400);
                                             }
                                          }
                                          if(§§pop() === _loc4_)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§goto(addr375);
                                             }
                                             else
                                             {
                                                §§goto(addr400);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§0!c§.§`"!§);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§goto(addr388);
                                             }
                                             §§goto(addr398);
                                          }
                                          §§goto(addr400);
                                       }
                                    }
                                    §§goto(addr388);
                                 }
                              }
                              §§goto(addr337);
                           }
                        }
                        §§goto(addr354);
                     }
                     §§goto(addr423);
                  }
                  §§goto(addr293);
               }
               §§goto(addr423);
            }
            §§goto(addr337);
         }
         §§goto(addr253);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§#e§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr81:
                     this.§#e§.dispose();
                  }
                  while(true)
                  {
                     this.§#e§ = null;
                     loop1:
                     for(; !(_loc2_ && _loc1_); while(true)
                     {
                        this.§0T§ = null;
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     },return)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr28);
            }
            §§goto(addr81);
         }
         §§goto(addr56);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!this.§#e§)
            {
               if(_loc3_)
               {
                  this.§#e§ = new Sprite();
                  if(_loc3_)
                  {
                     addr34:
                     §§push(this);
                     §§push(this.§?W§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§?W§ = §§pop();
                  }
                  var _loc2_:* = int(this.§0T§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(_loc3_ || this)
                        {
                           if(§§pop() < 0)
                           {
                              loop1:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    this.§0T§.splice(_loc2_,1);
                                 }
                                 else
                                 {
                                    addr148:
                                 }
                                 this.§[!A§();
                                 loop2:
                                 while(_loc3_ || _loc3_)
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break loop1;
                                    }
                                    this.§36§();
                                    while(!_loc4_)
                                    {
                                       this.§'!§();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(!_loc4_)
                                          {
                                             return this.§?W§ < this.§0"§;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           else if(!this.§0T§[_loc2_].update(this.§?W§,this.§#e§,this.§`8§))
                           {
                              §§goto(addr148);
                           }
                           §§push(_loc2_);
                        }
                        §§push(§§pop() - 1);
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      private function §'!§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §1"&§.§>!m§.height;
         §§push(§&!"§.§,!C§);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§&!"§.§3H§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc5_)
         {
            §§push(this.§#!A§);
            if(_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§#e§);
            §§push(_loc4_);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §[!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1"&§.§1i§.color = this.§,!o§;
         }
      }
      
      private function §36§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§4I§)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§#e§.getChildByName(§=!e§.§`]§) as Sprite;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_)
            {
               if(_loc3_ && _loc1_)
               {
               }
               §§goto(addr72);
            }
            this.§4I§ = true;
         }
         addr72:
      }
      
      public function clone(param1:§5!x§) : §?!Z§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§0!c§ = null;
         var _loc2_:§?!Z§ = new §?!Z§(null,null);
         for each(_loc3_ in this.§0T§)
         {
            if(!(_loc7_ && _loc3_))
            {
               _loc2_.§0T§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§?W§ = this.§?W§;
         }
         loop1:
         while(true)
         {
            _loc2_.§0"§ = this.§0"§;
            loop2:
            while(true)
            {
               _loc2_.§<`§ = this.§<`§;
               while(true)
               {
                  _loc2_.§#!A§ = this.§#!A§;
                  continue loop1;
                  addr119:
                  while(!(_loc7_ && _loc2_))
                  {
                     _loc2_.§,!o§ = this.§,!o§;
                     loop6:
                     while(_loc6_ || param1)
                     {
                        _loc2_.§9m§ = this.§9m§;
                        while(!_loc7_)
                        {
                           _loc2_.§`8§ = param1;
                           if(_loc6_ || this)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 if(_loc6_)
                                 {
                                    return _loc2_;
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                              continue loop6;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      public function get §^R§() : String
      {
         return this.§9m§;
      }
      
      public function set §^R§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9m§ = param1;
         }
      }
   }
}
