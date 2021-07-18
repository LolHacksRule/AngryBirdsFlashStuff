package §1&§
{
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §&^§.§&r§;
   import §&^§.§[!7§;
   import §-!O§.§?Z§;
   import §5!G§.§2! §;
   import §5!G§.§4!$§;
   import §5!G§.§>X§;
   import §5Z§.§[Z§;
   import §^]§.§[z§;
   import §`K§.§ L§;
   
   public class §["§
   {
      
      public static const §"p§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"p§ = true;
         }
      }
      
      private var §2"§:§'?§;
      
      protected var §6!@§:§2! §;
      
      protected var §8!<§:Vector.<§1!O§>;
      
      private var §2g§:Sprite;
      
      private var §%!<§:Sprite;
      
      private var §=?§:Sprite;
      
      private var §,g§:Number;
      
      private var §8U§:Number;
      
      private var §#&§:Number;
      
      private var §6o§:Boolean = true;
      
      private var §%!Q§:Boolean = true;
      
      private var §5!!§:§&r§;
      
      private var §5!E§:Number;
      
      public function §["§(param1:String, param2:Number, param3:§'?§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§8!<§ = new Vector.<§1!O§>();
         super();
         this.§2"§ = param3;
         this.§8U§ = 0;
         loop0:
         while(true)
         {
            this.§#&§ = 0;
            this.§,g§ = param2;
            this.§2g§ = new Sprite();
            this.§%!<§ = new Sprite();
            do
            {
               this.§=?§ = new Sprite();
               this.§5!E§ = param4;
               continue loop0;
            }
            while(!(_loc5_ || this));
            
            return;
         }
      }
      
      public function get §+C§() : Boolean
      {
         return this.§6o§;
      }
      
      public function get §3a§() : Sprite
      {
         return this.§=?§;
      }
      
      public function get §3!>§() : Sprite
      {
         return this.§2g§;
      }
      
      public function get §4B§() : Sprite
      {
         return this.§%!<§;
      }
      
      protected function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`S§();
            loop0:
            while(true)
            {
               §§push(this.§2g§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§2g§);
                        addr103:
                        while(true)
                        {
                           §§pop().dispose();
                           addr104:
                           while(true)
                           {
                              this.§2g§ = null;
                              addr94:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr101:
                  }
                  while(true)
                  {
                     §§push(this.§%!<§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           addr88:
                           this.§%!<§.dispose();
                           this.§%!<§ = null;
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        §§push(this.§=?§);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              addr54:
                              this.§=?§.dispose();
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr88);
                  }
                  this.§=?§ = null;
                  addr25:
                  return;
               }
               §§goto(addr103);
            }
         }
         §§goto(addr101);
      }
      
      public function §?b§() : Boolean
      {
         return this.§%!Q§;
      }
      
      public function §^!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§%!Q§);
         loop0:
         for(; §§pop() != param1; §§push(param1),if(_loc2_ || _loc2_)
         {
            if(!§§pop())
            {
               §§goto(addr76);
            }
            this.§7V§(this.§6!@§.mName,this.§5!E§);
            if(_loc3_ && _loc2_)
            {
               addr76:
               this.§`S§();
               if(!_loc2_)
               {
                  addr85:
               }
               §§goto(addr80);
            }
            if(!(_loc3_ && _loc2_))
            {
               addr80:
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
            break;
         })
         {
            while(true)
            {
               this.§%!Q§ = param1;
               §§goto(addr85);
            }
         }
      }
      
      public function §'P§() : String
      {
         return this.§6!@§.§+!Q§;
      }
      
      private function §`S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§%!<§);
            if(_loc2_ || this)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(_loc2_ || this)
                  {
                     while(true)
                     {
                        §§push(this.§2g§);
                        if(_loc2_ || _loc1_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 while(this.§8!<§.length <= 0)
                                 {
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                 }
                                 break;
                                 continue loop0;
                                 addr18:
                              }
                              continue;
                           }
                           §§push(this.§2g§);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr18);
                     }
                     addr29:
                  }
                  while(true)
                  {
                     §§goto(addr29);
                  }
               }
               else
               {
                  §§push(this.§%!<§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §05§(param1:§2! §, param2:String) : void
      {
      }
      
      private function §7V§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§4!$§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§1!O§ = null;
         this.§6!@§ = §>X§.§2H§(param1);
         if(this.§6!@§ == null)
         {
            §§push(§ L§);
            §§push("UNKNOWN LEVEL THEME! ");
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            §§push(§[z§.§"!N§);
            if(_loc8_ || this)
            {
               §§push(§§pop());
            }
            param1 = §§pop();
            loop0:
            while(true)
            {
               this.§6!@§ = §>X§.§2H§(param1);
               addr86:
               while(true)
               {
                  addr79:
                  while(true)
                  {
                     this.§2g§.y = this.§,g§;
                     if(_loc7_)
                     {
                        break;
                     }
                     this.§%!<§.y = this.§,g§;
                     while(!_loc7_)
                     {
                        continue loop0;
                        loop6:
                        while(_loc8_ || this)
                        {
                           this.§]!9§();
                           if(_loc8_)
                           {
                              addr32:
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§=?§.y = this.§,g§;
                                    continue loop6;
                                    §§goto(addr32);
                                 }
                                 addr124:
                                 var _loc3_:int = 0;
                                 addr34:
                              }
                              else
                              {
                                 §§goto(addr124);
                              }
                              loop7:
                              while(_loc3_ < this.§6!@§.§8!<§.length)
                              {
                                 _loc4_ = this.§6!@§.§8!<§[_loc3_];
                                 if(_loc8_)
                                 {
                                    §§push(§[Z§.§-D§);
                                    if(_loc8_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§pop();
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(_loc4_.§ ,§);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      addr181:
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            addr189:
                                                            _loc5_ = new Sprite();
                                                            _loc6_ = this.§,#§(_loc4_,_loc5_,this.§2"§,param2);
                                                            if(!_loc7_)
                                                            {
                                                               this.§8!<§.push(_loc6_);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  do
                                                                  {
                                                                     if(_loc6_.§;!J§)
                                                                     {
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           addr232:
                                                                           this.§%!<§.addChild(_loc5_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     this.§2g§.addChild(_loc5_);
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  while(false);
                                                                  
                                                                  addr274:
                                                                  _loc3_++;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                      }
                                                      else if(_loc4_.§[!O§)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr267:
                                                            this.§-!%§(parseInt(_loc4_.§[!O§,16));
                                                         }
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr181);
                                          }
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr267);
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§05§(this.§6!@§,param1);
            §§goto(addr79);
            §§goto(addr86);
         }
      }
      
      protected function §,#§(param1:§4!$§, param2:Sprite, param3:§'?§, param4:Number) : §1!O§
      {
         return new §1!O§(param1,param2,param3,param4);
      }
      
      private function §]!9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6!O§ = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§6!@§);
            if(!_loc3_)
            {
               §§push(§§pop().§0!§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this.§-!%§(this.§6!@§.§0!§);
                        if(!_loc2_)
                        {
                        }
                        addr57:
                        §§push(this);
                        if(!_loc3_)
                        {
                           §§push(uint(0));
                           if(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    addr79:
                                    §§push(uint(this.§6!@§.§'!Q§));
                                 }
                              }
                           }
                           _loc1_ = §§pop().§,!9§(§§pop());
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.y = 0;
                              if(_loc2_)
                              {
                                 this.§=?§.addChild(_loc1_);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr79);
                     }
                  }
                  addr55:
                  §§push(this.§6!@§.§'!Q§);
               }
               if(§§pop())
               {
                  §§goto(addr57);
               }
               addr102:
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr57);
      }
      
      protected function §,!9§(param1:uint) : §6!O§
      {
         return new §6!O§(4096,4096,param1);
      }
      
      protected function §-!%§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(§[Z§.§%m§);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().color = param1;
         }
         addr50:
         if(_loc3_)
         {
            §§push(§[Z§.§%m§);
         }
      }
      
      public function §`=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`S§();
            do
            {
               §§push(§ L§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               do
               {
                  this.§7V§(param1,this.§5!E§);
               }
               while(_loc2_);
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§1!O§ = null;
         if(!(_loc6_ && param2))
         {
            if(param1 == this.§6o§)
            {
               if(_loc7_)
               {
                  return;
               }
            }
            else
            {
               this.§6o§ = param1;
            }
         }
         for each(_loc3_ in this.§8!<§)
         {
            if(_loc7_ || param2)
            {
               _loc3_.§!Y§(param1);
            }
         }
      }
      
      public function §<l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§[!7§.§-K§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr97:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc1_)
                        {
                           §[!7§.playSound(this.§6!@§.§]!6§,"CHANNEL_AMBIENT",999);
                        }
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr73:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr95:
         }
         while(true)
         {
            §§push(§[!7§.§-K§("CHANNEL_AMBIENT"));
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop().§+c§());
               if(_loc2_ || _loc1_)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§push(!§§pop());
               }
               if(_loc1_)
               {
                  §§goto(addr97);
               }
               §§goto(addr73);
            }
            else
            {
               §§goto(addr95);
            }
         }
      }
      
      public function §,+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[!7§.§9!K§("CHANNEL_AMBIENT");
         }
      }
      
      public function §&h§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§2g§);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = this.§2g§.getChildAt(param1);
                        if(!(_loc3_ && this))
                        {
                           addr110:
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.visible);
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().visible = §§pop();
                              }
                           }
                        }
                        return;
                     }
                     addr93:
                     §§push(this.§%!<§);
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - this.§2g§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr79:
                        if(§§pop() - this.§2g§.numChildren < this.§%!<§.numChildren)
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr93);
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc5_ || _loc3_)
         {
            this.§8U§ = param1;
         }
         loop0:
         while(true)
         {
            this.§#&§ = param2;
            loop1:
            while(this.§8!<§ != null)
            {
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               addr68:
               loop2:
               while(true)
               {
                  addr78:
                  while(true)
                  {
                     if(_loc3_ >= this.§8!<§.length)
                     {
                        break loop1;
                     }
                     this.§8!<§[_loc3_].setSideScroll(this.§8U§,this.§#&§);
                     if(_loc6_ && this)
                     {
                        break loop1;
                     }
                     continue loop2;
                  }
               }
            }
            §§push(this.§=?§);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
                  if(!_loc6_)
                  {
                     §§push(this.§=?§);
                     if(!_loc6_)
                     {
                        addr180:
                        §§push(this.§=?§.scaleY = 1 / §?Z§.levelScale);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop().scaleX = §§pop();
                           addr178:
                           §§push(this.§=?§);
                           while(true)
                           {
                              §§push(§?Z§.§#!#§);
                           }
                           addr178:
                        }
                        while(true)
                        {
                           §§push(-§§pop());
                           if(_loc5_ || _loc3_)
                           {
                              §§push(1 / §?Z§.levelScale);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                              addr192:
                           }
                           addr193:
                           while(true)
                           {
                              §§pop().x = §§pop();
                           }
                        }
                        addr180:
                     }
                     §§goto(addr178);
                  }
                  while(true)
                  {
                     §§push(this.§=?§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§,g§);
                        if(!(_loc6_ && param1))
                        {
                           if(!_loc6_)
                           {
                              §§push(this.§#&§);
                              if(_loc5_)
                              {
                                 addr155:
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§goto(addr192);
                              }
                           }
                           else
                           {
                              §§goto(addr180);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr155);
                     }
                     else
                     {
                        §§goto(addr178);
                     }
                  }
               }
               return;
            }
            §§goto(addr178);
         }
      }
      
      public function §+!C§() : String
      {
         return this.§6!@§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
