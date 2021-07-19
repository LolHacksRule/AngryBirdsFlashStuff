package §-"N§
{
   import §!!=§.§"l§;
   import §"a§.§!"J§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §8m§.§7!>§;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<T§.§`m§;
   import §`1§.§#!#§;
   import §`1§.§0!"§;
   import §`1§.§4";§;
   
   public class §3!K§
   {
      
      public static const §'A§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §3!K§))
         {
            §'A§ = true;
         }
      }
      
      private var §=!2§:§`m§;
      
      protected var §?c§:§0!"§;
      
      protected var §2"R§:Vector.<§]5§>;
      
      private var §!!§:Sprite;
      
      private var §^!E§:Sprite;
      
      private var §2t§:Sprite;
      
      private var §5">§:Number;
      
      private var §=o§:Number;
      
      private var §3!X§:Number;
      
      private var §1D§:Boolean = true;
      
      private var §,!W§:Boolean = true;
      
      private var §<!I§:§7!>§;
      
      private var §6"§:Number;
      
      public function §3!K§(param1:String, param2:Number, param3:§`m§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§2"R§ = new Vector.<§]5§>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§=!2§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§=o§ = 0;
                     addr131:
                     while(true)
                     {
                        this.§3!X§ = 0;
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§6"§ = param4;
            §§goto(addr42);
         }
         §§goto(addr37);
      }
      
      public function get §#!3§() : Boolean
      {
         return this.§1D§;
      }
      
      public function get groundSprite() : Sprite
      {
         return this.§2t§;
      }
      
      public function get backgroundLayersSprite() : Sprite
      {
         return this.§!!§;
      }
      
      public function get foregroundLayersSprite() : Sprite
      {
         return this.§^!E§;
      }
      
      protected function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5!F§();
            loop0:
            while(true)
            {
               §§push(this.§!!§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§!!§);
                        addr130:
                        while(true)
                        {
                           §§pop().dispose();
                           addr131:
                           while(true)
                           {
                              this.§!!§ = null;
                              addr119:
                              addr121:
                              while(_loc1_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§^!E§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§^!E§);
                              addr113:
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop9:
                                 while(true)
                                 {
                                    this.§^!E§ = null;
                                    addr78:
                                    while(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr104:
                                          while(true)
                                          {
                                             §§push(this.§2t§);
                                             if(!_loc1_)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   loop7:
                                                   while(!_loc1_)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§2t§ = null;
                                                            if(_loc1_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc2_ || _loc1_))
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop9;
                                                   }
                                                   §§goto(addr78);
                                                }
                                                addr63:
                                             }
                                             return;
                                             §§goto(addr104);
                                          }
                                          §§goto(addr119);
                                          addr38:
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr113);
                     §§goto(addr121);
                  }
               }
               §§goto(addr130);
            }
         }
         §§goto(addr73);
      }
      
      public function isVisible() : Boolean
      {
         return this.§,!W§;
      }
      
      public function §#"[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§,!W§);
            loop0:
            while(true)
            {
               if(§§pop() != param1)
               {
                  addr90:
                  while(true)
                  {
                     this.§,!W§ = param1;
                     addr94:
                     while(_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr90:
               }
               return;
            }
            addr99:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     this.§5!F§();
                     break;
                  }
                  break;
               }
               this.§2^§(this.§?c§.mName,this.§6"§);
               if(!_loc2_)
               {
                  break;
               }
               if(!(_loc3_ && this))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr24);
                  }
                  §§goto(addr90);
               }
               §§goto(addr94);
            }
            else
            {
               §§goto(addr99);
            }
         }
         addr24:
      }
      
      public function §%"R§() : String
      {
         return this.§?c§.§@"@§;
      }
      
      private function §5!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §§push(this.§^!E§);
            if(_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(this.§!!§);
                        if(_loc1_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              while(_loc1_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    if(this.§2"R§.length <= 0)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§2"R§.pop().dispose();
                                    }
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           §§push(this.§!!§);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                  }
                  continue;
               }
               §§push(this.§^!E§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §!l§(param1:§0!"§, param2:String) : void
      {
      }
      
      private function §2^§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§#!#§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§]5§ = null;
         if(!(_loc8_ && this))
         {
            this.§?c§ = §4";§.§>"O§(param1);
            loop0:
            while(true)
            {
               if(this.§?c§ != null)
               {
                  while(true)
                  {
                     this.§!l§(this.§?c§,param1);
                     addr92:
                     loop6:
                     for(; _loc7_ || this; if(_loc8_ && this)
                     {
                        continue;
                     },if(_loc7_)
                     {
                        this.§-!H§();
                        if(_loc7_)
                        {
                           §§goto(addr38);
                        }
                        §§goto(addr46);
                     },while(true)
                     {
                        this.§?c§ = §4";§.§>"O§(param1);
                        continue loop0;
                     },addr128:)
                     {
                        if(_loc7_)
                        {
                           this.§!!§.y = this.§5">§;
                           loop7:
                           while(true)
                           {
                              this.§^!E§.y = this.§5">§;
                              loop8:
                              while(true)
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    addr71:
                                    if(_loc7_ || param2)
                                    {
                                       do
                                       {
                                          this.§2t§.y = this.§5">§;
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop8;
                                          }
                                          continue loop6;
                                       }
                                       while(false);
                                       
                                       var _loc3_:int = 0;
                                       loop11:
                                       while(_loc3_ < this.§?c§.§2"R§.length)
                                       {
                                          _loc4_ = this.§?c§.§2"R§[_loc3_];
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§!"J§.§!X§);
                                             if(!_loc8_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc8_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§pop();
                                                         if(_loc7_ || param2)
                                                         {
                                                            §§push(_loc4_.§[!E§);
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               addr215:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr218:
                                                                     _loc5_ = new Sprite();
                                                                     _loc6_ = this.§>"T§(_loc4_,_loc5_,this.§=!2§,param2);
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        this.§2"R§.push(_loc6_);
                                                                        if(!(_loc7_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(!_loc6_.§;T§)
                                                                        {
                                                                           this.§!!§.addChild(_loc5_);
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr308:
                                                                              _loc3_++;
                                                                              continue loop11;
                                                                              addr295:
                                                                              continue;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        this.§^!E§.addChild(_loc5_);
                                                                        if(_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr301:
                                                                     this.§7H§(parseInt(_loc4_.§'!a§,16));
                                                                  }
                                                               }
                                                               else if(_loc4_.§'!a§)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr301);
                                                                  }
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr218);
                                       }
                                       return;
                                    }
                                    break;
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                           addr85:
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§;!=§);
                              §§push("UNKNOWN LEVEL THEME! ");
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              break loop6;
                           }
                           addr134:
                        }
                     }
                     while(true)
                     {
                        §§push(§0"T§.§=!p§);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        §§goto(addr128);
                        §§goto(addr92);
                     }
                  }
                  addr86:
               }
               §§goto(addr134);
            }
         }
         §§goto(addr85);
      }
      
      protected function §>"T§(param1:§#!#§, param2:Sprite, param3:§`m§, param4:Number) : §]5§
      {
         return new §]5§(param1,param2,param3,param4);
      }
      
      private function §-!H§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5T§ = null;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?c§);
            if(!_loc3_)
            {
               §§push(§§pop().§,!F§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr36:
                        this.§7H§(this.§?c§.§,!F§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr62);
                  }
               }
               §§goto(addr58);
            }
            addr58:
            if(this.§?c§.§4!X§)
            {
               addr62:
               §§push(this);
               if(_loc2_ || _loc1_)
               {
                  §§push(uint(0));
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§pop();
                           addr99:
                           §§push(uint(this.§?c§.§4!X§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!(_loc3_ && this))
                  {
                     _loc1_.y = 0;
                     if(_loc2_)
                     {
                        this.§2t§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr99);
            }
            addr122:
            return;
         }
         §§goto(addr36);
      }
      
      protected function createGroundQuad(param1:uint) : §5T§
      {
         return new §5T§(4096,4096,param1);
      }
      
      protected function §7H§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§!"J§.§1&§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr52:
                     §!"J§.§1&§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §+_§(param1:String, param2:§`m§ = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(param2)
            {
               while(true)
               {
                  this.§=!2§ = param2;
                  addr96:
                  while(true)
                  {
                  }
                  addr83:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§push(§;!=§);
                  §§push("Switch background! NEW BACKGROUND NAME = ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  loop4:
                  while(true)
                  {
                     this.§2^§(param1,this.§6"§);
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     addr76:
                     while(_loc3_ || param2)
                     {
                        §§goto(addr83);
                        continue loop4;
                     }
                     §§goto(addr96);
                  }
                  return;
                  addr72:
               }
            }
            while(true)
            {
               this.§5!F§();
               §§goto(addr76);
               §§goto(addr96);
            }
         }
         §§goto(addr72);
      }
      
      public function §%"7§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§]5§ = null;
         if(!(_loc7_ && param1))
         {
            if(param1 == this.§1D§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         this.§1D§ = param1;
         for each(_loc3_ in this.§2"R§)
         {
            if(_loc6_ || this)
            {
               _loc3_.§%"7§(param1);
            }
         }
      }
      
      public function §6"$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§@"M§.§^!5§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr102:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           while(true)
                           {
                              §@"M§.§3"C§(this.§?c§.§7! §,"CHANNEL_AMBIENT",999);
                           }
                           addr87:
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr78:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §!!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@"M§.§]!n§("CHANNEL_AMBIENT");
         }
      }
      
      public function §-!k§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               §§push(this.§!!§);
               if(_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr52:
                        _loc2_ = this.§!!§.getChildAt(param1);
                        if(_loc3_)
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        addr87:
                        §§push(this.§^!E§);
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() - this.§!!§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_ || this)
                     {
                        addr83:
                        if(§§pop() - this.§!!§.numChildren < this.§^!E§.numChildren)
                        {
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr83);
                  }
                  addr99:
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr103:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr83);
         }
         §§goto(addr52);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            this.§=o§ = param1;
         }
         loop0:
         while(true)
         {
            this.§3!X§ = param2;
            loop1:
            while(this.§2"R§ != null)
            {
               if(_loc6_)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  _loc3_ = 0;
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(_loc3_ < this.§2"R§.length)
                     {
                        this.§2"R§[_loc3_].setSideScroll(this.§=o§,this.§3!X§);
                        if(_loc5_)
                        {
                           §§push(this.§2t§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(this.§2t§.scaleY = 1 / §"l§.§@!>§);
                              if(!_loc5_)
                              {
                                 §§pop().scaleX = §§pop();
                                 addr191:
                                 if(_loc6_ || param1)
                                 {
                                    §§goto(addr126);
                                 }
                                 while(true)
                                 {
                                    §§push(this.§2t§);
                                    if(!(_loc5_ && param1))
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr175);
                                 }
                                 addr191:
                              }
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr191);
                              }
                              addr128:
                              return;
                              addr169:
                           }
                        }
                        _loc3_++;
                        if(!_loc6_)
                        {
                           break loop1;
                        }
                        if(false)
                        {
                           continue loop2;
                           addr96:
                        }
                        continue;
                        break;
                     }
                     if(!_loc5_)
                     {
                        break loop1;
                     }
                     §§push(this.§2t§);
                     while(true)
                     {
                        §§push(§"l§.§2!N§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(-§§pop());
                        }
                        addr185:
                        while(true)
                        {
                           §§push(1 / §"l§.§@!>§);
                           addr189:
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr190:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop6;
                              }
                           }
                        }
                     }
                     addr126:
                     addr175:
                     §§goto(addr191);
                  }
                  while(true)
                  {
                     §§push(this.§5">§);
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           §§push(this.§3!X§);
                           if(_loc6_ || this)
                           {
                              addr167:
                              §§push(§§pop() - §§pop());
                              if(_loc6_)
                              {
                                 §§goto(addr169);
                              }
                              else
                              {
                                 §§goto(addr185);
                              }
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr167);
                     §§goto(addr191);
                  }
               }
            }
            §§push(this.§2t§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr191);
               }
               §§goto(addr128);
            }
            §§goto(addr175);
         }
      }
      
      public function §4!!§() : String
      {
         return this.§?c§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
