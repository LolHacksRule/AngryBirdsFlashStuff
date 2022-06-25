package §@!L§
{
   import §!!K§.§else§;
   import §7!B§.§;R§;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   import §^!Y§.§'R§;
   
   public class §#L§
   {
      
      public static const §@!U§:String = "CutScene_Type_Intro";
      
      public static const §<!n§:String = "CutScene_Type_Outro";
      
      public static const §!!J§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@!U§ = "CutScene_Type_Intro";
            while(true)
            {
               §<!n§ = "CutScene_Type_Outro";
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            §!!J§ = "CutScene_Type_Final_Outro";
            if(!(_loc1_ && §#L§))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §+]§:§'R§;
      
      private var §;p§:String;
      
      private var §[!V§:Vector.<§9N§>;
      
      private var §[f§:Number;
      
      private var §+o§:Number;
      
      private var §2!d§:Number;
      
      private var §@@§:Number;
      
      private var §2O§:Sprite;
      
      private var §@!G§:Boolean = true;
      
      private var §?![§:uint;
      
      private var §9!s§:Boolean;
      
      private var §4!5§:§;R§;
      
      private var §^!d§:§;R§;
      
      public function §#L§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§9N§ = null;
         var _loc4_:Object = null;
         if(_loc7_ || param1)
         {
            this.§[!V§ = new Vector.<§9N§>();
         }
         loop0:
         while(true)
         {
            super();
            while(true)
            {
               this.§[f§ = 0;
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
                        loop5:
                        while(true)
                        {
                           §§push("intro");
                           while(§§pop().search(§§pop()) == -1)
                           {
                              §§push(param2);
                              if(_loc8_ && param2)
                              {
                                 continue loop5;
                              }
                              §§push("complete");
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue;
                              }
                              if(§§pop().search(§§pop()) != -1)
                              {
                                 if(_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       this.§;p§ = §<!n§;
                                    }
                                    else
                                    {
                                       addr95:
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       addr114:
                                       var _loc5_:int = 0;
                                       var _loc6_:* = param1;
                                       addr156:
                                       §§push(§§hasnext(_loc6_,_loc5_));
                                       if(!(_loc8_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                             _loc3_ = this.§7!#§(_loc4_);
                                             if(!_loc8_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      this.§[!V§.push(_loc3_);
                                                   }
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(_loc7_ || this)
                                             {
                                                if(!_loc8_)
                                                {
                                                   _loc5_ = 0;
                                                   if(!_loc8_)
                                                   {
                                                      _loc6_ = this.§[!V§;
                                                      addr294:
                                                      for each(_loc3_ in _loc6_)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            addr277:
                                                            if(_loc3_ is §3!%§)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  (_loc3_ as §3!%§).setSize(this.§2!d§,this.§@@§);
                                                                  (_loc3_ as §3!%§).§8?§ = this.§@!G§;
                                                                  addr226:
                                                                  §§goto(addr294);
                                                                  addr293:
                                                                  addr273:
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§push(_loc3_ is § M§);
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr240:
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     (_loc3_ as § M§).setSize(this.§2!d§,this.§@@§);
                                                                     (_loc3_ as § M§).§6!R§ = this.§@!G§;
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr226);
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           §§goto(addr273);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     addr255:
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      addr296:
                                                   }
                                                }
                                                break loop3;
                                             }
                                             break loop3;
                                          }
                                          §§goto(addr296);
                                       }
                                       §§goto(addr294);
                                    }
                                 }
                                 if(_loc8_ && param1)
                                 {
                                    break;
                                 }
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr114);
                           }
                           continue loop2;
                        }
                     }
                     if(false)
                     {
                        continue;
                     }
                     §§goto(addr114);
                  }
                  return;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      private function §7!#§(param1:Object) : §9N§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§9N§.§[!9§);
            if(_loc6_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc5_ && param1)
                     {
                     }
                  }
                  else
                  {
                     addr291:
                     §§push(1);
                     if(!(_loc6_ || this))
                     {
                        addr321:
                     }
                  }
               }
               else
               {
                  §§push(§9N§.§@!z§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_ || this)
                        {
                           §§goto(addr291);
                        }
                        §§goto(addr444);
                     }
                     else
                     {
                        §§push(§9N§.§?F§);
                        if(_loc6_ || param1)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                    §§goto(addr321);
                                 }
                              }
                              else
                              {
                                 addr335:
                                 §§push(3);
                                 if(_loc5_)
                                 {
                                    addr360:
                                 }
                              }
                              §§goto(addr444);
                           }
                           else
                           {
                              §§push(§9N§.§8!O§);
                              if(_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§goto(addr335);
                                    }
                                    §§goto(addr444);
                                 }
                                 else
                                 {
                                    §§push(§9N§.END);
                                    if(_loc6_ || _loc2_)
                                    {
                                       addr348:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(4);
                                             if(_loc6_ || param1)
                                             {
                                                §§goto(addr360);
                                             }
                                             else
                                             {
                                                addr377:
                                                §§goto(addr444);
                                             }
                                          }
                                          else
                                          {
                                             addr396:
                                             §§push(6);
                                             if(!(_loc6_ || param1))
                                             {
                                                addr439:
                                             }
                                             §§goto(addr444);
                                          }
                                          §§goto(addr444);
                                       }
                                       else
                                       {
                                          §§push(§9N§.§^!"§);
                                          if(_loc6_ || param1)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr374:
                                                   §§push(5);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr377);
                                                   }
                                                   else
                                                   {
                                                      addr431:
                                                      §§goto(addr444);
                                                   }
                                                }
                                                §§goto(addr444);
                                             }
                                             else
                                             {
                                                §§push(§9N§.§?!i§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr396);
                                                      }
                                                      §§goto(addr444);
                                                   }
                                                   else
                                                   {
                                                      §§push(§9N§.§`!k§);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push(7);
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr431);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr434:
                                                            if(§9N§.§;!y§ !== _loc4_)
                                                            {
                                                               addr444:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     return new § M§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                                  case 1:
                                                                     _loc2_ = param1.scroll_target;
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc2_.type == "sprite")
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              return new §3!%§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  case 2:
                                                                     _loc3_ = param1.zoom_target;
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(_loc3_.type == "sprite")
                                                                        {
                                                                           §§goto(addr230);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr186:
                                                                        this.§+o§ = param1.time * 1000;
                                                                        addr193:
                                                                        if(_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr225:
                                                                     }
                                                                     break;
                                                                  case 7:
                                                                     this.§@!G§ = true;
                                                                     addr139:
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr225);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr178:
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           this.§@@§ = param1.height;
                                                                           addr170:
                                                                           break;
                                                                           addr170:
                                                                        }
                                                                     }
                                                                     §§goto(addr193);
                                                                  case 8:
                                                                     this.§?![§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr155:
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 addr230:
                                                                                 return new §3!C§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr170);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr139);
                                                                     §§goto(addr170);
                                                                  case 4:
                                                                     §§goto(addr186);
                                                                  case 3:
                                                                     return new §!!2§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                                  case 5:
                                                                     this.§2!d§ = param1.width;
                                                                     §§goto(addr178);
                                                                  case 6:
                                                                     this.§@!G§ = false;
                                                                     §§goto(addr155);
                                                               }
                                                               return null;
                                                               §§push(9);
                                                            }
                                                         }
                                                         §§goto(addr444);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                }
                                                §§goto(addr434);
                                             }
                                          }
                                          §§goto(addr434);
                                       }
                                    }
                                    §§goto(addr434);
                                 }
                              }
                              §§goto(addr434);
                           }
                        }
                        §§goto(addr434);
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr434);
               }
               §§goto(addr444);
            }
            §§goto(addr348);
         }
         §§goto(addr374);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§2O§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§2O§);
                     addr76:
                     while(true)
                     {
                        §§pop().dispose();
                        addr77:
                        loop4:
                        while(true)
                        {
                           this.§2O§ = null;
                           addr66:
                           addr68:
                           while(!_loc1_)
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr54:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     return;
                     addr61:
                  }
               }
               while(true)
               {
                  this.§[!V§ = null;
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr66);
                  §§goto(addr68);
               }
               §§goto(addr61);
            }
            §§goto(addr76);
         }
         §§goto(addr77);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!this.§2O§)
            {
               if(_loc4_)
               {
                  this.§2O§ = new Sprite();
                  if(_loc4_)
                  {
                     addr35:
                     §§push(this);
                     §§push(this.§[f§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§[f§ = §§pop();
                  }
                  var _loc2_:* = int(this.§[!V§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        if(§§pop() < 0)
                        {
                           do
                           {
                              this.§&e§();
                              do
                              {
                                 this.§<2§();
                                 do
                                 {
                                    this.§>!8§();
                                 }
                                 while(!_loc4_);
                                 
                              }
                              while(_loc3_ && _loc2_);
                              
                           }
                           while(!(_loc4_ || _loc2_));
                           
                           if(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              loop5:
                              while(true)
                              {
                                 addr121:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       addr126:
                                       §§push(§§pop() - 1);
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                       addr126:
                                    }
                                    §§goto(addr126);
                                 }
                                 addr144:
                                 while(true)
                                 {
                                    this.§[!V§.splice(_loc2_,1);
                                    continue loop5;
                                 }
                              }
                           }
                           while(_loc3_)
                           {
                              §§goto(addr144);
                           }
                           continue;
                        }
                        if(!this.§[!V§[_loc2_].update(this.§[f§,this.§2O§,this.§+]§))
                        {
                           §§goto(addr144);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr126);
                  }
                  return this.§[f§ < this.§+o§;
               }
            }
         }
         §§goto(addr35);
      }
      
      private function §>!8§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §else§.§^!A§.§3S§.height;
         §§push(§^!c§.§#!M§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§^!c§.§6W§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§@@§);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§2O§);
            §§push(_loc4_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §&e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §else§.§^!A§.color = this.§?![§;
         }
      }
      
      private function §<2§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§9!s§)
            {
               if(_loc2_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§2O§.getChildByName(§ M§.§;!_§) as Sprite;
         if(!(_loc3_ && this))
         {
            if(_loc1_)
            {
               if(_loc2_ || _loc3_)
               {
               }
               §§goto(addr72);
            }
            this.§9!s§ = true;
         }
         addr72:
      }
      
      public function clone(param1:§'R§) : §#L§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9N§ = null;
         var _loc2_:§#L§ = new §#L§(null,null);
         for each(_loc3_ in this.§[!V§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.§[!V§.push(_loc3_.clone());
            }
         }
         if(!_loc7_)
         {
            _loc2_.§[f§ = this.§[f§;
         }
         while(true)
         {
            _loc2_.§+o§ = this.§+o§;
            while(_loc6_ || _loc2_)
            {
               _loc2_.§2!d§ = this.§2!d§;
               loop3:
               while(true)
               {
                  _loc2_.§@@§ = this.§@@§;
                  while(true)
                  {
                     _loc2_.§@!G§ = this.§@!G§;
                     do
                     {
                        _loc2_.§?![§ = this.§?![§;
                        continue loop3;
                     }
                     while(_loc7_ && _loc2_);
                     
                     return _loc2_;
                     addr98:
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     _loc2_.§+]§ = param1;
                     addr105:
                     if(!_loc6_)
                     {
                        while(!(_loc7_ && _loc3_))
                        {
                           §§goto(addr98);
                           §§goto(addr105);
                        }
                        continue loop3;
                        addr91:
                     }
                     §§goto(addr78);
                  }
               }
            }
         }
      }
      
      public function get §,X§() : String
      {
         return this.§;p§;
      }
      
      public function set §,X§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;p§ = param1;
         }
      }
   }
}
