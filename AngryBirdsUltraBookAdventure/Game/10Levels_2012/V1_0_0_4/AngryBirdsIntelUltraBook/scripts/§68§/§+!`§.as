package §68§
{
   import §"R§.§ !Q§;
   import §"R§.§`a§;
   import §'!9§.§%!g§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!Q§.§ !P§;
   import §,!Q§.§,!-§;
   import §,!Q§.§0@§;
   import §-w§.§,Q§;
   import §0!N§.§=+§;
   import §2!R§.§#C§;
   import §<&§.§^b§;
   import §^_§.§!>§;
   
   public class §+!`§
   {
      
      public static const §1+§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1+§ = true;
         }
      }
      
      private var §;!t§:§,Q§;
      
      private var §[!>§:§0@§;
      
      private var §3!>§:Vector.<§7L§>;
      
      private var §+§:Sprite;
      
      private var §=!6§:Sprite;
      
      private var §+!%§:Sprite;
      
      private var §^!X§:Number;
      
      private var §^S§:Number;
      
      private var §#q§:Number;
      
      private var §6N§:Boolean = true;
      
      private var §>L§:Boolean = true;
      
      private var §^f§:§`a§;
      
      private var §-!m§:Number;
      
      public function §+!`§(param1:String, param2:Number, param3:§,Q§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§3!>§ = new Vector.<§7L§>();
            while(true)
            {
               super();
               loop6:
               for(; !(_loc5_ && this); if(!(_loc6_ || param1))
               {
                  continue;
               },§§goto(addr71))
               {
                  this.§=!6§ = new Sprite();
                  loop7:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        this.§+!%§ = new Sprite();
                        loop8:
                        while(true)
                        {
                           this.§-!m§ = param4;
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
                              this.§4c§(param1,param4);
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
                                    this.§#q§ = 0;
                                 }
                              }
                              while(_loc6_ || param3)
                              {
                                 this.§^!X§ = param2;
                                 while(true)
                                 {
                                    this.§+§ = new Sprite();
                                    break loop9;
                                 }
                                 §§goto(addr36);
                              }
                              while(true)
                              {
                                 this.§;!t§ = param3;
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
                     this.§^S§ = 0;
                     §§goto(addr132);
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      public function get §"0§() : Boolean
      {
         return this.§6N§;
      }
      
      public function get §8!t§() : Sprite
      {
         return this.§+!%§;
      }
      
      public function get §@4§() : Sprite
      {
         return this.§+§;
      }
      
      public function get §-!O§() : Sprite
      {
         return this.§=!6§;
      }
      
      protected function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§9H§();
            loop0:
            while(true)
            {
               §§push(this.§+§);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§+§);
                        addr145:
                        while(true)
                        {
                           §§pop().dispose();
                           addr146:
                           while(true)
                           {
                              this.§+§ = null;
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
                           §§push(this.§+!%§);
                           if(_loc2_ || this)
                           {
                              if(!§§pop())
                              {
                                 return;
                              }
                              while(!_loc1_)
                              {
                                 §§push(this.§+!%§);
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
                                          §§push(this.§=!6§);
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
                                       this.§=!6§ = null;
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
                     §§push(this.§=!6§);
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
      
      public function §]!&§() : Boolean
      {
         return this.§>L§;
      }
      
      public function §2!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§>L§);
            while(true)
            {
               if(§§pop() != param1)
               {
                  while(true)
                  {
                     this.§>L§ = param1;
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
      
      public function §`!T§() : String
      {
         return this.§[!>§.§@-§;
      }
      
      private function §9H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §§push(this.§=!6§);
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
                        §§push(this.§+§);
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
                                    if(this.§3!>§.length <= 0)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          return;
                                       }
                                       break loop2;
                                    }
                                    this.§3!>§.pop().dispose();
                                    break loop2;
                                    addr86:
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr114:
                              this.§+§.removeChildAt(0,true);
                           }
                           continue;
                        }
                        §§goto(addr114);
                     }
                  }
                  continue;
               }
               §§push(this.§=!6§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §4c§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§,!-§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§7L§ = null;
         if(_loc7_ || param1)
         {
            this.§[!>§ = § !P§.§^!'§(param1);
            loop0:
            while(true)
            {
               if(this.§[!>§ == null)
               {
                  addr120:
                  while(true)
                  {
                     §§push(§!>§);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     addr132:
                     while(true)
                     {
                        §§push(§=+§.§'!M§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        loop6:
                        while(true)
                        {
                           this.§[!>§ = § !P§.§^!'§(param1);
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
                  this.§+§.y = this.§^!X§;
                  loop2:
                  while(_loc7_ || this)
                  {
                     if(!_loc8_)
                     {
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        this.§=!6§.y = this.§^!X§;
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
                              this.§+!%§.y = this.§^!X§;
                              while(_loc7_)
                              {
                                 this.§4!r§();
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
                              if(_loc3_ < this.§[!>§.§3!>§.length)
                              {
                                 _loc4_ = this.§[!>§.§3!>§[_loc3_];
                                 if(_loc7_ || param1)
                                 {
                                    §§push(§^b§.§7h§);
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
                                                   §§push(_loc4_.§;!^§);
                                                   if(_loc7_)
                                                   {
                                                      addr195:
                                                      §§push(!§§pop());
                                                   }
                                                }
                                                _loc5_ = new Sprite();
                                                _loc6_ = new §7L§(_loc4_,_loc5_,this.§;!t§,param2);
                                                if(!_loc8_)
                                                {
                                                   this.§3!>§.push(_loc6_);
                                                }
                                                addr245:
                                                if(_loc6_.§[!7§)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      this.§=!6§.addChild(_loc5_);
                                                      addr284:
                                                      _loc3_++;
                                                      addr271:
                                                      addr265:
                                                   }
                                                   §§goto(addr285);
                                                }
                                                this.§+§.addChild(_loc5_);
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
                                             this.§3!d§(parseInt(_loc4_.§=!c§,16));
                                             §§goto(addr284);
                                          }
                                          if(_loc4_.§=!c§)
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
      
      private function §4!r§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%!g§ = null;
         if(!_loc3_)
         {
            §§push(this.§[!>§);
            if(!_loc3_)
            {
               §§push(§§pop().§%s§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§3!d§(this.§[!>§.§%s§);
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
            if(this.§[!>§.§`!A§)
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
                           §§push(uint(this.§[!>§.§`!A§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!_loc3_)
                  {
                     _loc1_.y = 0;
                     if(!_loc3_)
                     {
                        this.§+!%§.addChild(_loc1_);
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
      
      protected function createGroundQuad(param1:uint) : §%!g§
      {
         return new §%!g§(4096,4096,param1);
      }
      
      private function §3!d§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§^b§.§9E§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr43:
                     §^b§.§9E§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §4!t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9H§();
         }
         do
         {
            §§push(§!>§);
            §§push("Switch background! NEW BACKGROUND NAME = ");
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            do
            {
               this.§4c§(param1,this.§-!m§);
            }
            while(_loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      public function §"$§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7L§ = null;
         if(!(_loc7_ && this))
         {
            if(param1 == this.§6N§)
            {
               if(!(_loc7_ && param1))
               {
                  return;
               }
            }
            this.§6N§ = param1;
         }
         for each(_loc3_ in this.§3!>§)
         {
            if(!(_loc7_ && param1))
            {
               _loc3_.§"$§(param1);
            }
         }
      }
      
      public function §#!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§ !Q§.§5s§("CHANNEL_AMBIENT"));
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
                           § !Q§.playSound(this.§[!>§.§-r§,"CHANNEL_AMBIENT",999);
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
      
      public function §>G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § !Q§.§9!t§("CHANNEL_AMBIENT");
         }
      }
      
      public function §%4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§+§);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_ || param1)
                     {
                        _loc2_ = this.§+§.getChildAt(param1);
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
                     §§push(this.§=!6§);
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - this.§+§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || _loc2_)
                     {
                        addr72:
                        §§push(§§pop() - this.§+§.numChildren);
                     }
                     if(§§pop() < this.§=!6§.numChildren)
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
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            this.§^S§ = param1;
            loop0:
            while(true)
            {
               this.§#q§ = param2;
               for(; this.§3!>§ != null; if(!(_loc6_ || _loc3_))
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
                     if(_loc3_ >= this.§3!>§.length)
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
               §§push(this.§+!%§);
               if(!(_loc5_ && param2))
               {
                  if(§§pop() != null)
                  {
                     if(!_loc5_)
                     {
                        §§push(this.§+!%§);
                        if(!_loc5_)
                        {
                           §§push(this.§+!%§.scaleY = 1 / §#C§.§-!k§);
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
                  this.§3!>§[_loc3_].setSideScroll(this.§^S§,this.§#q§);
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
                     §§push(this.§+!%§);
                     loop5:
                     while(true)
                     {
                        §§push(§#C§.§]!J§);
                        loop6:
                        while(true)
                        {
                           §§push(-§§pop());
                           addr180:
                           loop2:
                           while(true)
                           {
                              §§push(1 / §#C§.§-!k§);
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
                                       §§push(this.§+!%§);
                                       if(_loc5_)
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§^!X§);
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
                                             §§push(this.§#q§);
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
      
      public function §@!W§() : String
      {
         return this.§[!>§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
