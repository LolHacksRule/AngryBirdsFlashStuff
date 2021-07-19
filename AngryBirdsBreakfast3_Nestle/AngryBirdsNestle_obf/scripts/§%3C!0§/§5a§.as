package §<!0§
{
   import §!!!§.§6!l§;
   import §0!m§.§@!S§;
   import §2`§.§%!!§;
   import §3!J§.§8!l§;
   import §3!J§.Sprite;
   
   public class §5a§
   {
      
      public static const §'"8§:String = "CutScene_Type_Intro";
      
      public static const §9!u§:String = "CutScene_Type_Outro";
      
      public static const §;"$§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'"8§ = "CutScene_Type_Intro";
            while(true)
            {
               §9!u§ = "CutScene_Type_Outro";
               while(!(_loc2_ && _loc1_))
               {
                  §;"$§ = "CutScene_Type_Final_Outro";
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      private var §,%§:§%!!§;
      
      private var § K§:String;
      
      private var §,N§:Vector.<§=!?§>;
      
      private var §'0§:Number;
      
      private var §;?§:Number;
      
      private var §!a§:Number;
      
      private var §2!y§:Number;
      
      private var §&%§:Sprite;
      
      private var §'!?§:Boolean = true;
      
      private var §+!&§:uint;
      
      private var §&r§:Boolean;
      
      private var §'m§:§8!l§;
      
      private var §>L§:§8!l§;
      
      public function §5a§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§=!?§ = null;
         var _loc4_:Object = null;
         if(_loc8_ || param2)
         {
            this.§,N§ = new Vector.<§=!?§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§'0§ = 0;
                  loop2:
                  for(; !(_loc7_ && param2); if(_loc7_ && this)
                  {
                     continue;
                  },this.§ K§ = §9!u§,§§goto(addr65))
                  {
                     while(true)
                     {
                        addr83:
                        loop4:
                        while(param1)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param2);
                              while(§§pop().search("intro") == -1)
                              {
                                 §§push(param2);
                                 if(_loc7_ && param1)
                                 {
                                    continue;
                                 }
                                 if(§§pop().search("complete") != -1)
                                 {
                                    if(_loc7_ && _loc3_)
                                    {
                                       addr65:
                                       if(_loc7_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc8_)
                                       {
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                    if(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    addr94:
                                 }
                                 var _loc5_:int = 0;
                                 var _loc6_:* = param1;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                          _loc3_ = this.§^[§(_loc4_);
                                          if(!_loc7_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc8_)
                                                {
                                                   this.§,N§.push(_loc3_);
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(_loc8_ || _loc3_)
                                             {
                                                _loc5_ = 0;
                                                if(!_loc7_)
                                                {
                                                   addr181:
                                                   _loc6_ = this.§,N§;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc6_,_loc5_));
                                                      break loop7;
                                                   }
                                                   addr278:
                                                }
                                                break loop4;
                                             }
                                             break loop4;
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                    break;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§goto(addr181);
                                    }
                                    else
                                    {
                                       _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc3_ is §0!A§);
                                          loop9:
                                          while(!§§pop())
                                          {
                                             §§push(_loc3_ is §%C§);
                                             if(!_loc8_)
                                             {
                                                continue;
                                             }
                                             if(!§§pop())
                                             {
                                                continue loop11;
                                             }
                                             if(_loc8_ || this)
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   (_loc3_ as §%C§).setSize(this.§!a§,this.§2!y§);
                                                   while(true)
                                                   {
                                                      if(_loc7_ && param1)
                                                      {
                                                         break loop9;
                                                      }
                                                      (_loc3_ as §%C§).§&!w§ = this.§'!?§;
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            addr208:
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   (_loc3_ as §0!A§).horizontal = this.§'!?§;
                                                   addr239:
                                                   addr277:
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr239);
                                          }
                                       }
                                       (_loc3_ as §0!A§).setSize(this.§!a§,this.§2!y§);
                                       §§goto(addr277);
                                    }
                                 }
                              }
                              this.§ K§ = §'"8§;
                              §§goto(addr94);
                           }
                           continue loop0;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      private function §^[§(param1:Object) : §=!?§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§=!?§.§@o§);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(0);
                     if(!(_loc6_ || this))
                     {
                        addr311:
                     }
                  }
                  else
                  {
                     addr381:
                     §§push(6);
                     if(_loc6_)
                     {
                        addr384:
                     }
                     else
                     {
                        addr396:
                     }
                  }
               }
               else
               {
                  §§push(§=!?§.SCROLL);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(_loc5_)
                           {
                              addr355:
                           }
                           §§goto(addr419);
                        }
                        else
                        {
                           addr364:
                           §§push(5);
                           if(!_loc5_)
                           {
                              addr367:
                              §§goto(addr419);
                           }
                           else
                           {
                              §§goto(addr396);
                           }
                        }
                        §§goto(addr419);
                     }
                     else
                     {
                        §§push(§=!?§.§[!v§);
                        if(!(_loc5_ && _loc2_))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(2);
                                 if(_loc6_ || param1)
                                 {
                                    §§goto(addr311);
                                 }
                                 else
                                 {
                                    addr414:
                                    §§goto(addr419);
                                 }
                              }
                              else
                              {
                                 addr401:
                                 §§push(8);
                                 if(_loc6_)
                                 {
                                    §§goto(addr414);
                                 }
                                 §§goto(addr419);
                              }
                              §§goto(addr419);
                           }
                           else
                           {
                              §§push(§=!?§.§`!1§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          §§goto(addr419);
                                       }
                                       else
                                       {
                                          §§goto(addr384);
                                       }
                                    }
                                    else
                                    {
                                       addr393:
                                       §§push(7);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr396);
                                       }
                                       §§goto(addr419);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§=!?§.END);
                                    if(_loc5_ && this)
                                    {
                                    }
                                    addr399:
                                    if(§§pop() === _loc4_)
                                    {
                                       §§goto(addr401);
                                    }
                                    else
                                    {
                                       addr419:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return new §%C§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                          case 1:
                                             _loc2_ = param1.scroll_target;
                                             if(!_loc5_)
                                             {
                                                if(_loc2_.type == "sprite")
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      return new §0!A§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                   }
                                                }
                                             }
                                             break;
                                          case 2:
                                             _loc3_ = param1.zoom_target;
                                             if(_loc6_ || this)
                                             {
                                                if(_loc3_.type != "sprite")
                                                {
                                                   addr184:
                                                   break;
                                                }
                                                §§goto(addr220);
                                             }
                                             else
                                             {
                                                addr130:
                                                break;
                                                addr161:
                                             }
                                             break;
                                          case 3:
                                             return new §6e§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                          case 8:
                                             this.§+!&§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                             if(_loc6_)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr220:
                                                         return new §!!"§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                      }
                                                      addr176:
                                                      this.§;?§ = param1.time * 1000;
                                                      break;
                                                      addr183:
                                                   }
                                                }
                                                else
                                                {
                                                   this.§2!y§ = param1.height;
                                                   break;
                                                   addr167:
                                                   addr175:
                                                }
                                             }
                                             else
                                             {
                                                addr136:
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr183);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr167);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr161);
                                                }
                                             }
                                             §§goto(addr130);
                                          case 4:
                                             §§goto(addr176);
                                          case 5:
                                             this.§!a§ = param1.width;
                                             §§goto(addr175);
                                          case 6:
                                             this.§'!?§ = false;
                                             §§goto(addr130);
                                          case 7:
                                             this.§'!?§ = true;
                                             §§goto(addr136);
                                       }
                                       return null;
                                       §§push(9);
                                    }
                                 }
                                 §§goto(addr419);
                              }
                              §§goto(addr399);
                           }
                        }
                     }
                     §§goto(addr419);
                  }
                  if(§§pop() === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§push(4);
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr355);
                        }
                        else
                        {
                           §§goto(addr367);
                        }
                     }
                     else
                     {
                        §§goto(addr393);
                     }
                  }
                  else
                  {
                     §§push(§=!?§.§%",§);
                     if(!_loc5_)
                     {
                        if(§§pop() === _loc4_)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr364);
                           }
                           else
                           {
                              §§goto(addr401);
                           }
                        }
                        else
                        {
                           §§push(§=!?§.§3!X§);
                           if(_loc6_)
                           {
                              if(§§pop() === _loc4_)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr381);
                                 }
                                 else
                                 {
                                    §§goto(addr401);
                                 }
                              }
                              else
                              {
                                 §§push(§=!?§.§1!6§);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr399);
                              }
                              §§goto(addr401);
                           }
                           §§goto(addr399);
                        }
                        §§goto(addr401);
                     }
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr393);
                        }
                        else
                        {
                           §§goto(addr401);
                        }
                     }
                     else
                     {
                        §§goto(addr399);
                        §§push(§=!?§.§`P§);
                     }
                     §§goto(addr401);
                  }
               }
               §§goto(addr419);
            }
            §§goto(addr399);
         }
         §§goto(addr401);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§&%§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&%§);
                     addr77:
                     while(true)
                     {
                        §§pop().dispose();
                        loop4:
                        while(true)
                        {
                           this.§&%§ = null;
                           addr57:
                           addr59:
                           while(!_loc2_)
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr45:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     return;
                     addr52:
                  }
               }
               while(true)
               {
                  this.§,N§ = null;
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr57);
                  §§goto(addr59);
               }
               §§goto(addr52);
            }
            §§goto(addr77);
         }
         §§goto(addr52);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!this.§&%§)
            {
               if(!_loc4_)
               {
                  this.§&%§ = new Sprite();
                  if(_loc4_)
                  {
                  }
                  addr42:
                  var _loc2_:* = int(this.§,N§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 this.§"S§();
                                 loop2:
                                 while(true)
                                 {
                                    this.§#"$§();
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 addr153:
                              }
                           }
                           continue;
                        }
                        if(!this.§,N§[_loc2_].update(this.§'0§,this.§&%§,this.§,%§))
                        {
                           if(_loc3_)
                           {
                              this.§,N§.splice(_loc2_,1);
                           }
                           §§goto(addr153);
                        }
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
            §§push(this);
            §§push(this.§'0§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'0§ = §§pop();
         }
         §§goto(addr42);
      }
      
      private function §[9§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §6!l§.§7!w§.height;
         §§push(§@!S§.§5!e§);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§@!S§.§+!q§);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(this.§2!y§);
            if(!_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§&%§);
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §"S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6!l§.§+J§.color = this.§+!&§;
         }
      }
      
      private function §#"$§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§&r§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§&%§.getChildByName(§%C§.§<!'§) as Sprite;
         if(!_loc2_)
         {
            if(_loc1_)
            {
               if(!_loc3_)
               {
               }
               §§goto(addr73);
            }
            this.§&r§ = true;
         }
         addr73:
      }
      
      public function clone(param1:§%!!§) : §5a§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§=!?§ = null;
         var _loc2_:§5a§ = new §5a§(null,null);
         for each(_loc3_ in this.§,N§)
         {
            if(!_loc6_)
            {
               _loc2_.§,N§.push(_loc3_.clone());
            }
         }
         if(!_loc6_)
         {
            _loc2_.§'0§ = this.§'0§;
            loop1:
            while(true)
            {
               _loc2_.§;?§ = this.§;?§;
               addr147:
               while(true)
               {
                  _loc2_.§!a§ = this.§!a§;
               }
               loop6:
               while(true)
               {
                  if(_loc6_ && _loc2_)
                  {
                     continue loop1;
                  }
                  _loc2_.§ K§ = this.§ K§;
                  loop7:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        addr87:
                        if(_loc7_ || this)
                        {
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 continue;
                              }
                              §§goto(addr147);
                           }
                           while(true)
                           {
                              _loc2_.§'!?§ = this.§'!?§;
                              break loop7;
                           }
                           addr125:
                        }
                        break;
                     }
                     continue loop6;
                  }
                  while(_loc7_)
                  {
                     _loc2_.§+!&§ = this.§+!&§;
                     continue loop6;
                     §§goto(addr87);
                  }
                  while(true)
                  {
                     _loc2_.§2!y§ = this.§2!y§;
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function get §&p§() : String
      {
         return this.§ K§;
      }
      
      public function set §&p§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ K§ = param1;
         }
      }
   }
}
