package §,![§
{
   import §#!I§.§0k§;
   import §24§.;
   import §2`§.§%!!§;
   import §3!J§.§8!l§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §>z§.§+E§;
   import §>z§.§5!?§;
   import §[!Z§.§>D§;
   import §[!Z§.§`v§;
   
   public class §7l§
   {
      
      public static const §%!`§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!`§ = true;
         }
      }
      
      protected var §,%§:§%!!§;
      
      protected var §6!_§:§+E§;
      
      protected var §3S§:Vector.<§[!9§>;
      
      protected var §?!>§:Sprite;
      
      protected var § !H§:Sprite;
      
      protected var §!"%§:Sprite;
      
      protected var §4!$§:Number;
      
      protected var §-!o§:Number;
      
      protected var §>!]§:Number;
      
      protected var §1!q§:Boolean = true;
      
      protected var §6Y§:Boolean = true;
      
      protected var § E§:§`v§;
      
      protected var §6!A§:Number;
      
      protected var §'_§:Boolean = true;
      
      protected var §%!&§:int = 0;
      
      protected var §2c§:Number = 1.0;
      
      public function §7l§(param1:§+E§, param2:Number, param3:§%!!§, param4:Number, param5:Boolean = true)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§3S§ = new Vector.<§[!9§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§,%§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§-!o§ = 0;
                     addr89:
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     this.§'_§ = param5;
                     loop10:
                     while(!(_loc7_ && param2))
                     {
                        continue loop0;
                        this.§3!l§(param1,param4);
                        if(!_loc7_)
                        {
                           addr35:
                           if(_loc6_ || param3)
                           {
                              if(_loc6_)
                              {
                                 addr44:
                                 if(_loc6_)
                                 {
                                    addr46:
                                    if(!(_loc6_ || param2))
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          this.§>!]§ = 0;
                                          addr128:
                                          while(true)
                                          {
                                             this.§4!$§ = param2;
                                             addr123:
                                             while(true)
                                             {
                                                this.§?!>§ = new Sprite();
                                                addr118:
                                                while(true)
                                                {
                                                   this.§ !H§ = new Sprite();
                                                   break loop10;
                                                }
                                                §§goto(addr44);
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr133:
                                    }
                                    return;
                                 }
                                 §§goto(addr123);
                              }
                              while(_loc6_)
                              {
                                 this.§6!A§ = param4;
                              }
                              continue loop1;
                              addr102:
                           }
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr89);
                              }
                              else
                              {
                                 §§goto(addr118);
                              }
                           }
                           continue loop2;
                        }
                     }
                     while(!_loc7_)
                     {
                        this.§!"%§ = new Sprite();
                        §§goto(addr102);
                        §§goto(addr58);
                     }
                     addr58:
                     §§goto(addr128);
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      public function get §]N§() : Boolean
      {
         return this.§1!q§;
      }
      
      public function get §?!h§() : Sprite
      {
         return this.§!"%§;
      }
      
      public function get §7z§() : Sprite
      {
         return this.§?!>§;
      }
      
      public function get §]9§() : Sprite
      {
         return this.§ !H§;
      }
      
      public function get §9!f§() : int
      {
         return this.§%!&§;
      }
      
      protected function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§5!g§();
            loop0:
            while(true)
            {
               this.§0"1§();
               loop1:
               while(true)
               {
                  §§push(this.§?!>§);
                  if(_loc1_ || this)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§?!>§);
                           addr141:
                           while(true)
                           {
                              §§pop().dispose();
                              addr142:
                              loop12:
                              while(true)
                              {
                                 this.§?!>§ = null;
                                 addr115:
                                 addr117:
                                 while(!_loc1_)
                                 {
                                    continue loop12;
                                 }
                              }
                           }
                           addr62:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           this.§!"%§ = null;
                           addr81:
                           if(_loc1_ || this)
                           {
                              if(_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       this.§ !H§ = null;
                                       while(true)
                                       {
                                          addr46:
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§!"%§);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§!"%§);
                                                      addr59:
                                                      while(true)
                                                      {
                                                         §§pop().dispose();
                                                         addr60:
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§goto(addr62);
                                                            §§goto(addr81);
                                                         }
                                                         §§goto(addr142);
                                                         continue loop8;
                                                      }
                                                   }
                                                   addr57:
                                                }
                                                break;
                                             }
                                             §§goto(addr59);
                                          }
                                          §§goto(addr24);
                                       }
                                    }
                                    §§goto(addr115);
                                    addr103:
                                 }
                                 if(!_loc2_)
                                 {
                                    addr24:
                                 }
                                 continue loop1;
                                 return;
                              }
                              §§goto(addr57);
                           }
                           §§goto(addr60);
                        }
                     }
                     while(true)
                     {
                        §§push(this.§ !H§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr102:
                                 this.§ !H§.dispose();
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr102);
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr141);
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §>!`§() : Boolean
      {
         return this.§6Y§;
      }
      
      public function §`!V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6Y§);
            loop0:
            while(§§pop() != param1)
            {
               while(true)
               {
                  this.§6Y§ = param1;
                  addr78:
                  while(_loc2_ || this)
                  {
                     continue loop0;
                  }
               }
            }
            addr100:
            return;
            addr98:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  this.§3!l§(this.§6!_§,this.§6!A§);
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr24);
                     }
                     addr62:
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr78);
                  }
                  addr24:
                  return;
                  addr73:
               }
               §§goto(addr62);
            }
            else
            {
               §§goto(addr98);
            }
         }
         if(_loc2_ || param1)
         {
            this.§5!g§();
            §§goto(addr73);
         }
         else
         {
            §§goto(addr100);
         }
      }
      
      public function §4V§() : String
      {
         return this.§6!_§.§1D§;
      }
      
      private function §5!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§ !H§);
            if(_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        §§push(this.§?!>§);
                        if(_loc1_ || _loc1_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              loop2:
                              do
                              {
                                 do
                                 {
                                    if(this.§3S§.length <= 0)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       this.§3S§.pop().dispose();
                                    }
                                 }
                                 while(_loc1_);
                                 
                                 continue loop0;
                              }
                              while(_loc2_ && this);
                              
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                              continue;
                           }
                           §§push(this.§?!>§);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                     return;
                     addr47:
                  }
                  while(true)
                  {
                     §§goto(addr47);
                  }
               }
               else
               {
                  §§push(this.§ !H§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §^^§(param1:§+E§) : void
      {
      }
      
      protected function §3!l§(param1:§+E§, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§5!?§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§[!9§ = null;
         if(!(_loc7_ && this))
         {
            this.§6!_§ = param1;
            loop0:
            while(true)
            {
               this.§^^§(this.§6!_§);
               loop1:
               while(true)
               {
                  this.§?!>§.y = this.§4!$§;
                  while(true)
                  {
                     this.§ !H§.y = this.§4!$§;
                     loop3:
                     while(!(_loc7_ && _loc3_))
                     {
                        while(true)
                        {
                           loop5:
                           do
                           {
                              this.§!"%§.y = this.§4!$§;
                              while(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    this.§ Z§();
                                    if(!_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           while(false);
                           
                           var _loc3_:int = 0;
                           loop7:
                           while(_loc3_ < this.§6!_§.§[!A§)
                           {
                              _loc4_ = this.§6!_§.§>!E§(_loc3_);
                              if(!(_loc7_ && param2))
                              {
                                 §§push(this.§'_§);
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§pop();
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(_loc4_.optional);
                                                if(!_loc7_)
                                                {
                                                   addr136:
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         _loc5_ = new Sprite();
                                                         _loc6_ = this.§+"§(_loc4_,_loc5_,this.§]!z§,param2);
                                                         if(!(_loc8_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         this.§3S§.push(_loc6_);
                                                         do
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_.§6!6§)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     this.§ !H§.addChild(_loc5_);
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               this.§?!>§.addChild(_loc5_);
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(_loc7_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               addr196:
                                                            }
                                                         }
                                                         while(!_loc8_);
                                                         
                                                         §§goto(addr196);
                                                      }
                                                   }
                                                   else if(_loc4_.color)
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         this.§>"&§(parseInt(_loc4_.color,16));
                                                         addr207:
                                                      }
                                                   }
                                                }
                                                §§goto(addr136);
                                             }
                                             _loc3_++;
                                             continue;
                                          }
                                       }
                                       §§goto(addr136);
                                    }
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr207);
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function §+"§(param1:§5!?§, param2:Sprite, param3:§%!!§, param4:Number) : §[!9§
      {
         return new §[!9§(param1,param2,param3,param4);
      }
      
      private function § Z§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8!l§ = null;
         if(_loc2_)
         {
            §§push(this.§6!_§);
            if(_loc2_)
            {
               §§push(§§pop().§'o§);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        this.§>"&§(this.§6!_§.§'o§);
                        if(!_loc3_)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr62);
                     }
                  }
               }
            }
            §§goto(addr58);
         }
         addr58:
         if(this.§6!_§.§'k§)
         {
            addr62:
            §§push(this);
            if(!_loc3_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(uint(§§pop()));
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           addr79:
                           §§push(uint(this.§6!_§.§'k§));
                        }
                     }
                  }
                  _loc1_ = §§pop().§>2§(§§pop());
                  if(_loc2_)
                  {
                     _loc1_.y = 0;
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr104);
                  }
                  this.§!"%§.addChild(_loc1_);
                  §§goto(addr104);
               }
            }
            §§goto(addr79);
         }
         addr104:
      }
      
      protected function §>2§(param1:uint) : §8!l§
      {
         return new §8!l§(4096,4096,param1);
      }
      
      private function §>"&§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%!&§ = param1;
         }
      }
      
      public function §,!3§(param1:§+E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5!g§();
         }
         while(true)
         {
            §#7§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
            while(!_loc3_)
            {
               this.§3!l§(param1,this.§6!A§);
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §'"%§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§[!9§ = null;
         if(_loc6_ || param1)
         {
            if(param1 == this.§1!q§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
            else
            {
               this.§1!q§ = param1;
            }
         }
         for each(_loc3_ in this.§3S§)
         {
            if(_loc6_ || this)
            {
               _loc3_.§'"%§(param1);
            }
         }
      }
      
      public function §`"'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§>D§.§<d§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr100:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              §>D§.§9!q§(this.§!!i§,"CHANNEL_AMBIENT",999);
                              addr84:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr84);
                     }
                     return;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §0"1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>D§.§6A§("CHANNEL_AMBIENT");
         }
      }
      
      public function get §!!i§() : String
      {
         return this.§6!_§.§!!i§;
      }
      
      public function §,9§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(this.§?!>§);
               if(_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr42:
                        _loc2_ = this.§?!>§.getChildAt(param1);
                        if(!_loc4_)
                        {
                           §§goto(addr89);
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        addr77:
                        §§push(this.§ !H§);
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - this.§?!>§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        addr71:
                        §§push(§§pop() - this.§?!>§.numChildren);
                     }
                     if(§§pop() < this.§ !H§.numChildren)
                     {
                        §§goto(addr77);
                     }
                  }
                  addr89:
                  if(_loc2_)
                  {
                     if(!_loc4_)
                     {
                        addr93:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!(_loc4_ && this))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr42);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:int = 0;
         if(!_loc10_)
         {
            this.§-!o§ = param1;
            loop0:
            while(true)
            {
               this.§>!]§ = param2;
               while(this.§3S§ != null)
               {
                  if(_loc11_)
                  {
                     if(!_loc11_)
                     {
                        continue;
                     }
                     if(!_loc11_)
                     {
                        continue loop0;
                     }
                     _loc8_ = 0;
                     §§goto(addr71);
                  }
                  addr71:
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc8_ >= this.§3S§.length)
                        {
                           break loop2;
                        }
                        §§goto(addr139);
                     }
                  }
                  if(!_loc10_)
                  {
                     break;
                  }
                  §§goto(addr139);
               }
               §§push(this.§!"%§);
               if(!(_loc10_ && param1))
               {
                  if(§§pop() != null)
                  {
                     if(_loc11_ || param1)
                     {
                        addr108:
                        this.§!"%§.scaleX = this.§!"%§.scaleY = 1 / §0k§.§0!1§;
                        if(_loc10_ && param2)
                        {
                        }
                        addr139:
                        §§goto(addr137);
                     }
                     addr137:
                     addr139:
                     this.§3S§[_loc8_].setScreenOffset(this.§-!o§,this.§>!]§,param5,param3,param4,param6,param7);
                     while(true)
                     {
                        _loc8_++;
                        if(!_loc11_)
                        {
                           break;
                        }
                        if(!_loc10_)
                        {
                           if(false)
                           {
                              break loop3;
                           }
                           continue loop3;
                        }
                     }
                     this.§9!P§();
                     return;
                  }
                  §§goto(addr139);
               }
               §§goto(addr108);
            }
         }
         §§goto(addr71);
      }
      
      protected function §9!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§!"%§);
            while(true)
            {
               §§pop().x = 0;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            §§push(this.§!"%§);
            if(!_loc2_)
            {
               §§push(this.§4!$§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() - this.§>!]§);
               }
               §§pop().y = §§pop();
               if(_loc1_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      public function §<j§() : String
      {
         return this.§6!_§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§[!9§ = null;
         for each(_loc2_ in this.§3S§)
         {
            if(!_loc6_)
            {
               _loc2_.update(param1);
            }
         }
      }
   }
}
