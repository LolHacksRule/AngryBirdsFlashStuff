package §4p§
{
   import §!!§.§>4§;
   import §!!X§.§&!E§;
   import §+!r§.§%l§;
   import §+!r§.§'!S§;
   import §+!r§.§@!a§;
   import §,6§.§!o§;
   import §1!T§.§&!v§;
   import §1!T§.§6!H§;
   import §6z§.§[g§;
   import §9E§.§1!w§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §@4§.§,!]§;
   
   public class §#Q§
   {
      
      public static const §2I§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2I§ = true;
         }
      }
      
      private var §3!L§:§!o§;
      
      private var §?!?§:§%l§;
      
      private var §%7§:Vector.<§<>§>;
      
      private var §7W§:Sprite;
      
      private var §'!s§:Sprite;
      
      private var §]!$§:Sprite;
      
      private var §`!C§:Number;
      
      private var §;!B§:Number;
      
      private var §5!+§:Number;
      
      private var §;6§:Boolean = true;
      
      private var §%!Z§:Boolean = true;
      
      private var §!V§:§&!v§;
      
      private var §=q§:Number;
      
      public function §#Q§(param1:String, param2:Number, param3:§!o§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§%7§ = new Vector.<§<>§>();
            while(true)
            {
               super();
               loop6:
               for(; !(_loc5_ && this); if(!(_loc6_ || param1))
               {
                  continue;
               },§§goto(addr71))
               {
                  this.§'!s§ = new Sprite();
                  loop7:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        this.§]!$§ = new Sprite();
                        loop8:
                        while(true)
                        {
                           this.§=q§ = param4;
                           loop9:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                              continue loop8;
                              addr71:
                              this.§&!F§(param1,param4);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              addr36:
                              if(_loc6_ || param1)
                              {
                                 if(_loc6_)
                                 {
                                    return;
                                 }
                                 addr132:
                                 while(true)
                                 {
                                    this.§5!+§ = 0;
                                 }
                              }
                              while(_loc6_ || param3)
                              {
                                 this.§`!C§ = param2;
                                 while(true)
                                 {
                                    this.§7W§ = new Sprite();
                                    break loop9;
                                 }
                                 §§goto(addr36);
                              }
                              while(true)
                              {
                                 this.§3!L§ = param3;
                                 break loop7;
                                 §§goto(addr120);
                              }
                              addr120:
                           }
                           continue loop6;
                        }
                     }
                     §§goto(addr105);
                  }
                  while(true)
                  {
                     this.§;!B§ = 0;
                     §§goto(addr132);
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      public function get §8+§() : Boolean
      {
         return this.§;6§;
      }
      
      public function get §"V§() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get §[o§() : Sprite
      {
         return this.§7W§;
      }
      
      public function get §]!=§() : Sprite
      {
         return this.§'!s§;
      }
      
      protected function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0^§();
            loop0:
            while(true)
            {
               §§push(this.§7W§);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§7W§);
                        addr145:
                        while(true)
                        {
                           §§pop().dispose();
                           addr146:
                           while(true)
                           {
                              this.§7W§ = null;
                              addr131:
                              while(true)
                              {
                              }
                           }
                        }
                        addr99:
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        addr106:
                        while(true)
                        {
                           §§push(this.§]!$§);
                           if(_loc2_ || this)
                           {
                              if(!§§pop())
                              {
                                 return;
                              }
                              while(!_loc1_)
                              {
                                 §§push(this.§]!$§);
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue;
                                       }
                                       addr123:
                                       while(true)
                                       {
                                          §§push(this.§'!s§);
                                          addr125:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             break loop7;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§'!s§ = null;
                                       §§goto(addr83);
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr70);
                           §§goto(addr106);
                        }
                        §§goto(addr131);
                        addr45:
                     }
                  }
                  while(true)
                  {
                     §§push(this.§'!s§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr123);
                        }
                        §§goto(addr45);
                     }
                     §§goto(addr125);
                     §§goto(addr131);
                  }
               }
               §§goto(addr145);
            }
         }
         §§goto(addr131);
      }
      
      public function §[!b§() : Boolean
      {
         return this.§%!Z§;
      }
      
      public function §1B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§%!Z§);
            while(true)
            {
               if(§§pop() != param1)
               {
                  while(true)
                  {
                     this.§%!Z§ = param1;
                     addr92:
                     §§goto(addr87);
                  }
               }
               return;
            }
            §§goto(addr87);
         }
         addr87:
         while(true)
         {
            if(!(_loc2_ || param1))
            {
               continue loop1;
            }
            if(_loc2_)
            {
               continue loop0;
            }
         }
      }
      
      public function §+!_§() : String
      {
         return this.§?!?§.§96§;
      }
      
      private function §0^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §§push(this.§'!s§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§7W§);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    if(this.§%7§.length <= 0)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          return;
                                       }
                                       break loop2;
                                    }
                                    this.§%7§.pop().dispose();
                                    break loop2;
                                    addr86:
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr114:
                              this.§7W§.removeChildAt(0,true);
                           }
                           continue;
                        }
                        §§goto(addr114);
                     }
                  }
                  continue;
               }
               §§push(this.§'!s§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §&!F§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§'!S§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<>§ = null;
         if(_loc7_ || param1)
         {
            this.§?!?§ = §@!a§.§^!o§(param1);
            loop0:
            while(true)
            {
               if(this.§?!?§ == null)
               {
                  addr120:
                  while(true)
                  {
                     §§push(§[g§);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     addr132:
                     while(true)
                     {
                        §§push(§>4§.§7H§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        loop6:
                        while(true)
                        {
                           this.§?!?§ = §@!a§.§^!o§(param1);
                           addr99:
                           while(true)
                           {
                              if(_loc7_ || this)
                              {
                                 break loop6;
                              }
                              continue loop6;
                           }
                        }
                        addr106:
                     }
                  }
                  addr120:
               }
               while(true)
               {
                  this.§7W§.y = this.§`!C§;
                  loop2:
                  while(_loc7_ || this)
                  {
                     if(!_loc8_)
                     {
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        this.§'!s§.y = this.§`!C§;
                        while(true)
                        {
                           if(_loc8_ && this)
                           {
                              break;
                              addr52:
                           }
                           loop4:
                           while(true)
                           {
                              this.§]!$§.y = this.§`!C§;
                              while(_loc7_)
                              {
                                 this.§&!A§();
                                 if(!(_loc8_ && param2))
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           if(!(_loc8_ && param2))
                           {
                              if(false)
                              {
                                 §§goto(addr52);
                              }
                              var _loc3_:int = 0;
                              addr285:
                              if(_loc3_ < this.§?!?§.§%7§.length)
                              {
                                 _loc4_ = this.§?!?§.§%7§[_loc3_];
                                 if(_loc7_ || param1)
                                 {
                                    §§push(§,!]§.§,?§);
                                    if(_loc7_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc8_ && param2))
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§pop();
                                                addr204:
                                                if(_loc7_)
                                                {
                                                   §§push(_loc4_.§,!"§);
                                                   if(_loc7_)
                                                   {
                                                      addr195:
                                                      §§push(!§§pop());
                                                   }
                                                }
                                                _loc5_ = new Sprite();
                                                _loc6_ = new §<>§(_loc4_,_loc5_,this.§3!L§,param2);
                                                if(!_loc8_)
                                                {
                                                   this.§%7§.push(_loc6_);
                                                }
                                                addr245:
                                                if(_loc6_.§@!B§)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      this.§'!s§.addChild(_loc5_);
                                                      addr284:
                                                      _loc3_++;
                                                      addr271:
                                                      addr265:
                                                   }
                                                   §§goto(addr285);
                                                }
                                                this.§7W§.addChild(_loc5_);
                                                addr270:
                                                if(_loc7_ || param2)
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr285);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                §§goto(addr204);
                                             }
                                             addr277:
                                             this.§,=§(parseInt(_loc4_.§'5§,16));
                                             §§goto(addr284);
                                          }
                                          if(_loc4_.§'5§)
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr277);
                                             }
                                          }
                                          §§goto(addr284);
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr204);
                              }
                              return;
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr99);
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr120);
      }
      
      private function §&!A§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1!w§ = null;
         if(!_loc3_)
         {
            §§push(this.§?!?§);
            if(!_loc3_)
            {
               §§push(§§pop().§36§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§,=§(this.§?!?§.§36§);
                        addr36:
                        if(_loc2_ || this)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr62);
                     }
                  }
               }
               §§goto(addr58);
            }
            addr58:
            if(this.§?!?§.§8!M§)
            {
               addr62:
               §§push(this);
               if(_loc2_)
               {
                  §§push(uint(0));
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           addr84:
                           §§push(uint(this.§?!?§.§8!M§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!_loc3_)
                  {
                     _loc1_.y = 0;
                     if(!_loc3_)
                     {
                        this.§]!$§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr84);
            }
            addr102:
            return;
         }
         §§goto(addr36);
      }
      
      protected function createGroundQuad(param1:uint) : §1!w§
      {
         return new §1!w§(4096,4096,param1);
      }
      
      private function §,=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§,!]§.§!9§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr43:
                     §,!]§.§!9§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §&!P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0^§();
         }
         do
         {
            §§push(§[g§);
            §§push("Switch background! NEW BACKGROUND NAME = ");
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            do
            {
               this.§&!F§(param1,this.§=q§);
            }
            while(_loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      public function §0g§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§<>§ = null;
         if(!(_loc7_ && this))
         {
            if(param1 == this.§;6§)
            {
               if(!(_loc7_ && param1))
               {
                  return;
               }
            }
            this.§;6§ = param1;
         }
         for each(_loc3_ in this.§%7§)
         {
            if(!(_loc7_ && param1))
            {
               _loc3_.§0g§(param1);
            }
         }
      }
      
      public function §4!w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§6!H§.§-^§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr92:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §6!H§.playSound(this.§?!?§.§5!e§,"CHANNEL_AMBIENT",999);
                        }
                        break;
                     }
                     return;
                     addr68:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §&[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6!H§.§1x§("CHANNEL_AMBIENT");
         }
      }
      
      public function §]!4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§7W§);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_ || param1)
                     {
                        _loc2_ = this.§7W§.getChildAt(param1);
                        if(_loc4_ || _loc3_)
                        {
                           addr105:
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.visible);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().visible = §§pop();
                              }
                           }
                        }
                        return;
                     }
                     addr88:
                     §§push(this.§'!s§);
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - this.§7W§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || _loc2_)
                     {
                        addr72:
                        §§push(§§pop() - this.§7W§.numChildren);
                     }
                     if(§§pop() < this.§'!s§.numChildren)
                     {
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr88);
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            this.§;!B§ = param1;
            loop0:
            while(true)
            {
               this.§5!+§ = param2;
               for(; this.§%7§ != null; if(!(_loc6_ || _loc3_))
               {
                  continue;
               },_loc3_ = 0,addr64:,if(_loc5_)
               {
                  continue loop0;
               },loop9:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_ >= this.§%7§.length)
                     {
                        break loop9;
                     }
                     §§goto(addr174);
                  }
               },if(!_loc5_)
               {
                  break;
               },§§goto(addr174))
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr64);
               }
               §§push(this.§]!$§);
               if(!(_loc5_ && param2))
               {
                  if(§§pop() != null)
                  {
                     if(!_loc5_)
                     {
                        §§push(this.§]!$§);
                        if(!_loc5_)
                        {
                           §§push(this.§]!$§.scaleY = 1 / §&!E§.§+!a§);
                           if(!_loc5_)
                           {
                              §§pop().scaleX = §§pop();
                              if(!_loc5_)
                              {
                                 §§goto(addr126);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr186);
                  }
                  addr174:
                  addr174:
                  this.§%7§[_loc3_].setSideScroll(this.§;!B§,this.§5!+§);
                  if(_loc6_ || _loc3_)
                  {
                     _loc3_++;
                     if(_loc6_)
                     {
                        if(false)
                        {
                           break loop10;
                        }
                        continue loop10;
                     }
                     addr126:
                     addr177:
                     §§push(this.§]!$§);
                     loop5:
                     while(true)
                     {
                        §§push(§&!E§.§1!t§);
                        loop6:
                        while(true)
                        {
                           §§push(-§§pop());
                           addr180:
                           loop2:
                           while(true)
                           {
                              §§push(1 / §&!E§.§+!a§);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr186:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§]!$§);
                                       if(_loc5_)
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§`!C§);
                                          if(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(this.§5!+§);
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          if(!(_loc5_ && param2))
                                          {
                                             §§pop().y = §§pop();
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr136);
            }
         }
         §§goto(addr66);
      }
      
      public function §7Z§() : String
      {
         return this.§?!?§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
