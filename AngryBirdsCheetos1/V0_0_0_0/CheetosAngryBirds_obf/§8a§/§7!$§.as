package §8a§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §4W§.§!]§;
   import §`a§.§?!N§;
   import §`a§.Sprite;
   
   public class §7!$§
   {
      
      public static const §3!5§:String = "CutScene_Type_Intro";
      
      public static const §&,§:String = "CutScene_Type_Outro";
      
      public static const §;!X§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!5§ = "CutScene_Type_Intro";
            while(true)
            {
               §&,§ = "CutScene_Type_Outro";
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §;!X§ = "CutScene_Type_Final_Outro";
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §5<§:§!]§;
      
      private var §+$§:String;
      
      private var §^n§:Vector.<§'!U§>;
      
      private var §"!#§:Number;
      
      private var §2-§:Number;
      
      private var §?l§:Number;
      
      private var §+G§:Number;
      
      private var §9!A§:Sprite;
      
      private var §>_§:Boolean = true;
      
      private var §@!7§:uint;
      
      private var §[!3§:Boolean;
      
      private var §]!!§:§?!N§;
      
      private var §=!#§:§?!N§;
      
      public function §7!$§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§'!U§ = null;
         var _loc4_:Object = null;
         if(_loc7_ || param2)
         {
            this.§^n§ = new Vector.<§'!U§>();
            while(true)
            {
               super();
               while(!_loc8_)
               {
                  this.§"!#§ = 0;
                  loop2:
                  while(_loc7_)
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
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue;
                              }
                              if(§§pop().search("complete") != -1)
                              {
                                 if(!(_loc7_ || param2))
                                 {
                                    break loop4;
                                 }
                                 if(_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(!(_loc8_ && param2))
                                    {
                                       this.§+$§ = §&,§;
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                              }
                              var _loc5_:int = 0;
                              var _loc6_:* = param1;
                              loop6:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                       _loc3_ = this.§"!C§(_loc4_);
                                       if(!_loc8_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc8_ && param1)
                                          {
                                             continue;
                                          }
                                       }
                                       this.§^n§.push(_loc3_);
                                       continue;
                                    }
                                    if(!(_loc8_ && param1))
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             _loc5_ = 0;
                                             if(!(_loc8_ && this))
                                             {
                                                _loc6_ = this.§^n§;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc6_,_loc5_));
                                                   break loop6;
                                                }
                                                addr274:
                                                addr272:
                                             }
                                          }
                                          break loop3;
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr274);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                    if(_loc7_ || this)
                                    {
                                       §§push(_loc3_ is §?W§);
                                       loop8:
                                       while(!§§pop())
                                       {
                                          §§push(_loc3_ is §do§);
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(_loc7_)
                                             {
                                                if(!(_loc7_ || param2))
                                                {
                                                   (_loc3_ as §?W§).§#^§ = this.§>_§;
                                                }
                                                else
                                                {
                                                   addr271:
                                                }
                                                while(true)
                                                {
                                                   (_loc3_ as §do§).§,L§(this.§?l§,this.§+G§);
                                                   do
                                                   {
                                                      (_loc3_ as §do§).§,T§ = this.§>_§;
                                                   }
                                                   while(!(_loc7_ || _loc3_));
                                                   
                                                   if(_loc8_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      break loop8;
                                                   }
                                                   if(false)
                                                   {
                                                      addr214:
                                                   }
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr272);
                                       }
                                       (_loc3_ as §?W§).§,L§(this.§?l§,this.§+G§);
                                       §§goto(addr271);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr274);
                              }
                           }
                           this.§+$§ = §3!5§;
                           §§goto(addr86);
                        }
                        if(_loc8_ && this)
                        {
                           continue loop2;
                        }
                        if(false)
                        {
                           §§goto(addr75);
                        }
                        §§goto(addr107);
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
      }
      
      private function §"!C§(param1:Object) : §'!U§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!(_loc5_ && _loc2_))
         {
            §§push(§'!U§.§=!=§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        addr311:
                     }
                  }
                  else
                  {
                     addr364:
                     §§push(5);
                     if(_loc5_)
                     {
                        addr401:
                     }
                  }
               }
               else
               {
                  §§push(§'!U§.§;t§);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(_loc6_ || _loc2_)
                           {
                              §§goto(addr424);
                           }
                           else
                           {
                              §§goto(addr401);
                           }
                        }
                        §§goto(addr424);
                     }
                     else
                     {
                        §§push(§'!U§.§7;§);
                        if(_loc6_ || this)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_)
                              {
                                 §§push(2);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr311);
                                 }
                                 else
                                 {
                                    addr384:
                                    §§goto(addr424);
                                 }
                              }
                              else
                              {
                                 addr342:
                                 §§push(4);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr424);
                              }
                              §§goto(addr424);
                           }
                           else
                           {
                              §§push(§'!U§.§^-§);
                              if(!(_loc5_ && this))
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          §§goto(addr424);
                                       }
                                       else
                                       {
                                          §§goto(addr384);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr364);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§'!U§.END);
                                    if(_loc6_)
                                    {
                                       addr338:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr342);
                                          }
                                          else
                                          {
                                             addr393:
                                             §§push(7);
                                             if(!(_loc5_ && this))
                                             {
                                                §§goto(addr401);
                                             }
                                             §§goto(addr424);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§'!U§.§^r§);
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr355:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr364);
                                                }
                                                else
                                                {
                                                   §§goto(addr381);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§'!U§.§+M§);
                                                if(_loc6_)
                                                {
                                                   addr372:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr381:
                                                         §§push(6);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr393);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§'!U§.§5H§);
                                                      if(!_loc5_)
                                                      {
                                                         addr389:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr393);
                                                            }
                                                            else
                                                            {
                                                               addr406:
                                                               §§push(8);
                                                               if(_loc5_)
                                                               {
                                                               }
                                                               §§goto(addr424);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§'!U§.§`J§);
                                                         }
                                                         §§goto(addr406);
                                                      }
                                                   }
                                                   §§goto(addr424);
                                                }
                                             }
                                             §§goto(addr424);
                                          }
                                          §§goto(addr389);
                                       }
                                       §§goto(addr424);
                                    }
                                    if(§§pop() === _loc4_)
                                    {
                                       §§goto(addr406);
                                    }
                                    else
                                    {
                                       addr424:
                                       loop2:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return new §do§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                          case 1:
                                             _loc2_ = param1.scroll_target;
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(_loc2_.type == "sprite")
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      return new §?W§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                   }
                                                }
                                             }
                                             break;
                                          case 2:
                                             _loc3_ = param1.zoom_target;
                                             if(_loc6_)
                                             {
                                                if(_loc3_.type != "sprite")
                                                {
                                                   addr184:
                                                   break;
                                                }
                                             }
                                             §§goto(addr220);
                                          case 3:
                                             return new §,o§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                          case 5:
                                             this.§?l§ = param1.width;
                                             this.§+G§ = param1.height;
                                             addr163:
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop2;
                                                }
                                                if(_loc6_)
                                                {
                                                   addr205:
                                                   continue;
                                                }
                                                §§goto(addr184);
                                             }
                                             addr181:
                                             break;
                                             addr173:
                                          case 6:
                                             this.§>_§ = false;
                                             addr148:
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr128:
                                                   break;
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr163);
                                          case 7:
                                             this.§>_§ = true;
                                             addr134:
                                             if(!(_loc5_ && param1))
                                             {
                                                break;
                                             }
                                             §§goto(addr148);
                                             break;
                                          case 8:
                                             this.§@!7§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                             if(!_loc5_)
                                             {
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   addr220:
                                                   return new §[E§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                }
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr134);
                                             }
                                             §§goto(addr128);
                                          case 4:
                                             while(true)
                                             {
                                                this.§2-§ = param1.time * 1000;
                                                §§goto(addr181);
                                                §§goto(addr205);
                                             }
                                       }
                                       return null;
                                       §§push(9);
                                    }
                                 }
                                 §§goto(addr424);
                              }
                              §§goto(addr389);
                           }
                        }
                        §§goto(addr338);
                     }
                  }
                  §§goto(addr372);
               }
               §§goto(addr424);
            }
            §§goto(addr355);
         }
         §§goto(addr393);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§9!A§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§9!A§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        loop3:
                        while(true)
                        {
                           this.§9!A§ = null;
                           addr50:
                           addr59:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  this.§^n§ = null;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr50);
                  §§goto(addr59);
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr80);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§9!A§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§9!A§ = new Sprite();
                  if(_loc4_)
                  {
                  }
                  §§goto(addr42);
               }
            }
            §§push(this);
            §§push(this.§"!#§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"!#§ = §§pop();
         }
         addr42:
         var _loc2_:* = int(this.§^n§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() < 0)
               {
                  for(; _loc3_ || _loc3_; this.§;!>§(),do
                  {
                     this.§=!K§();
                     do
                     {
                        this.§;!#§();
                     }
                     while(_loc4_);
                     
                  }
                  while(!(_loc3_ || this));
                  ,if(_loc4_ && _loc3_)
                  {
                     continue;
                  },if(_loc3_)
                  {
                     break loop0;
                  },addr153:,this.§^n§.splice(_loc2_,1),§§goto(addr158))
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr158:
                  }
                  continue;
               }
               if(!this.§^n§[_loc2_].update(this.§"!#§,this.§9!A§,this.§5<§))
               {
                  §§goto(addr153);
               }
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc2_ = §§pop();
         }
         return this.§"!#§ < this.§2-§;
      }
      
      private function §;!#§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §0Z§.§4J§.§&u§.height;
         §§push(§[&§.§8n§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§[&§.§6!H§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_ || _loc2_)
         {
            §§push(this.§+G§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc6_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§9!A§);
            §§push(_loc4_);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §;!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0Z§.§4J§.color = this.§@!7§;
         }
      }
      
      private function §=!K§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§[!3§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§9!A§.getChildByName(§do§.§5!%§) as Sprite;
         if(!_loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr74:
                  this.§[!3§ = true;
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function clone(param1:§!]§) : §7!$§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§'!U§ = null;
         var _loc2_:§7!$§ = new §7!$§(null,null);
         for each(_loc3_ in this.§^n§)
         {
            if(_loc7_)
            {
               _loc2_.§^n§.push(_loc3_.clone());
            }
         }
         if(_loc7_ || _loc3_)
         {
            _loc2_.§"!#§ = this.§"!#§;
            loop1:
            while(true)
            {
               _loc2_.§2-§ = this.§2-§;
               loop2:
               while(true)
               {
                  _loc2_.§?l§ = this.§?l§;
                  loop3:
                  while(true)
                  {
                     _loc2_.§+G§ = this.§+G§;
                     while(!_loc6_)
                     {
                        _loc2_.§>_§ = this.§>_§;
                        while(!(_loc6_ && param1))
                        {
                           if(_loc7_)
                           {
                              _loc2_.§@!7§ = this.§@!7§;
                              continue loop3;
                           }
                           continue loop1;
                           if(!(_loc6_ && this))
                           {
                              return _loc2_;
                              addr93:
                           }
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function get §'!B§() : String
      {
         return this.§+$§;
      }
      
      public function set §'!B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§+$§ = param1;
         }
      }
   }
}
