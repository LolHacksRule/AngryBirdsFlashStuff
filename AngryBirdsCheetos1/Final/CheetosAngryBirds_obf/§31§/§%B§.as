package §31§
{
   import § !G§.§ #§;
   import § `§.§2w§;
   import §+3§.§ 7§;
   import §+3§.§7>§;
   import §+3§.§`#§;
   import §?h§.§<I§;
   import §]!F§.§&!]§;
   import §]@§.§9!<§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   import §`!K§.§<9§;
   import §`C§.§9!'§;
   
   public class §%B§
   {
      
      public static const §0#§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §%B§))
         {
            §0#§ = true;
         }
      }
      
      private var §8!M§:§2w§;
      
      private var §1]§:§`#§;
      
      private var §;7§:Vector.<§&#§>;
      
      private var §@o§:Sprite;
      
      private var §^'§:Sprite;
      
      private var §-4§:Sprite;
      
      private var §[!2§:Number;
      
      private var §%!6§:Number;
      
      private var §^!F§:Number;
      
      private var §9!K§:Boolean = true;
      
      private var §3!Z§:Boolean = true;
      
      private var §0[§:§<9§;
      
      private var §#!E§:Number;
      
      public function §%B§(param1:String, param2:Number, param3:§2w§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§;7§ = new Vector.<§&#§>();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§8!M§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§%!6§ = 0;
                     while(true)
                     {
                        this.§^!F§ = 0;
                        addr122:
                        while(true)
                        {
                           this.§[!2§ = param2;
                           continue loop1;
                        }
                        addr63:
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                        this.§'N§(param1,param4);
                        addr80:
                        if(!(_loc5_ && param1))
                        {
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 this.§^'§ = new Sprite();
                                 loop7:
                                 while(true)
                                 {
                                    this.§-4§ = new Sprite();
                                    addr86:
                                    loop8:
                                    while(!(_loc5_ && param2))
                                    {
                                       while(true)
                                       {
                                          this.§#!E§ = param4;
                                          while(_loc6_ || param1)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr63);
                                             §§goto(addr80);
                                          }
                                          continue loop8;
                                       }
                                       return;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr105:
                           }
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr54);
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function get §#0§() : Boolean
      {
         return this.§9!K§;
      }
      
      public function get §@Y§() : Sprite
      {
         return this.§-4§;
      }
      
      public function get §`!L§() : Sprite
      {
         return this.§@o§;
      }
      
      public function get § !Y§() : Sprite
      {
         return this.§^'§;
      }
      
      protected function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§74§();
            loop0:
            while(true)
            {
               §§push(this.§@o§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§@o§);
                        addr149:
                        while(true)
                        {
                           §§pop().dispose();
                           addr150:
                           while(true)
                           {
                              this.§@o§ = null;
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§^'§);
                     if(!(_loc2_ && this))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§^'§);
                              addr115:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr116:
                                 while(_loc1_)
                                 {
                                    this.§^'§ = null;
                                    while(true)
                                    {
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              addr41:
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§-4§);
                           if(!(_loc2_ && this))
                           {
                              if(!§§pop())
                              {
                                 addr24:
                                 return;
                              }
                              if(!_loc2_)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr88:
                                    this.§-4§.dispose();
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       this.§-4§ = null;
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(_loc1_)
                                       {
                                          §§goto(addr41);
                                       }
                                       §§goto(addr116);
                                    }
                                    continue;
                                    addr89:
                                 }
                                 break;
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr115);
                     §§goto(addr123);
                  }
               }
               §§goto(addr149);
            }
         }
         §§goto(addr150);
      }
      
      public function §#w§() : Boolean
      {
         return this.§3!Z§;
      }
      
      public function §'![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§3!Z§);
            loop0:
            for(; §§pop() != param1; do
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     this.§'N§(this.§1]§.mName,this.§#!E§);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr75);
                     }
                  }
                  else
                  {
                     addr25:
                  }
                  continue;
                  return;
               }
               continue loop0;
            }
            while(!(_loc3_ || param1));
            ,if(!_loc3_)
            {
               §§goto(addr83);
            },§§goto(addr73))
            {
               while(true)
               {
                  this.§3!Z§ = param1;
                  continue loop0;
               }
               this.§74§();
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §0!!§() : String
      {
         return this.§1]§.§]>§;
      }
      
      private function §74§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§^'§);
            if(!(_loc1_ && this))
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§@o§);
                        if(_loc2_ || this)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              continue loop1;
                           }
                           §§push(this.§@o§);
                        }
                        §§pop().removeChildAt(0,true);
                        addr117:
                     }
                     addr40:
                     if(_loc2_ || _loc1_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               else
               {
                  §§push(this.§^'§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §'N§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§7>§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§&#§ = null;
         if(_loc7_)
         {
            this.§1]§ = § 7§.§[!>§(param1);
         }
         loop0:
         while(true)
         {
            if(this.§1]§ == null)
            {
               loop1:
               while(true)
               {
                  § #§.log("UNKNOWN LEVEL THEME! " + param1);
                  loop2:
                  while(true)
                  {
                     §§push(§&!]§.§ get§);
                     if(_loc7_)
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     while(!_loc8_)
                     {
                        this.§1]§ = § 7§.§[!>§(param1);
                        loop4:
                        for(; _loc7_ || _loc3_; loop6:
                        while(_loc7_ || param1)
                        {
                           this.§^'§.y = this.§[!2§;
                           loop7:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 if(!(_loc7_ || param1))
                                 {
                                    break;
                                 }
                                 if(!_loc8_)
                                 {
                                    do
                                    {
                                       this.§-4§.y = this.§[!2§;
                                       continue loop7;
                                    }
                                    while(false);
                                    
                                    var _loc3_:int = 0;
                                    addr278:
                                    if(_loc3_ < this.§1]§.§;7§.length)
                                    {
                                       _loc4_ = this.§1]§.§;7§[_loc3_];
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(§9!'§.§'!$§);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(!§§pop());
                                             if(_loc7_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      addr176:
                                                      §§pop();
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         addr184:
                                                         §§push(_loc4_.§!!W§);
                                                         if(!_loc8_)
                                                         {
                                                            addr189:
                                                            addr188:
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  _loc5_ = new Sprite();
                                                                  _loc6_ = new §&#§(_loc4_,_loc5_,this.§8!M§,param2);
                                                                  if(_loc7_)
                                                                  {
                                                                     this.§;7§.push(_loc6_);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr236:
                                                                        if(_loc6_.§<!+§)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              this.§^'§.addChild(_loc5_);
                                                                              addr277:
                                                                              _loc3_++;
                                                                              addr246:
                                                                              §§goto(addr278);
                                                                              addr246:
                                                                              addr254:
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        this.§@o§.addChild(_loc5_);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr236);
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            if(_loc4_.§^!>§)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  this.§]l§(parseInt(_loc4_.§^!>§,16));
                                                                  addr260:
                                                               }
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr184);
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                           }
                           continue loop2;
                        })
                        {
                           while(true)
                           {
                              this.§@o§.y = this.§[!2§;
                              continue loop4;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr67);
         }
      }
      
      private function §!!L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9!<§ = null;
         if(!(_loc2_ && this))
         {
            §§push(this.§1]§);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop().§>V§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr42:
                        this.§]l§(this.§1]§.§>V§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr64);
                        }
                        §§goto(addr68);
                     }
                  }
               }
               §§goto(addr64);
            }
            addr64:
            if(this.§1]§.§4!?§)
            {
               addr68:
               §§push(this);
               if(!_loc2_)
               {
                  §§push(uint(0));
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop();
                           addr85:
                           §§push(uint(this.§1]§.§4!?§));
                        }
                     }
                  }
                  _loc1_ = §§pop().§[!4§(§§pop());
                  if(_loc3_ || _loc1_)
                  {
                     _loc1_.y = 0;
                     if(_loc3_)
                     {
                        this.§-4§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr85);
            }
            addr118:
            return;
         }
         §§goto(addr42);
      }
      
      protected function §[!4§(param1:uint) : §9!<§
      {
         return new §9!<§(4096,4096,param1);
      }
      
      private function §]l§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(§9!'§.§7!Z§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr52:
                     §9!'§.§7!Z§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §@V§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§74§();
            while(true)
            {
               § #§.log("Switch background! NEW BACKGROUND NAME = " + param1);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§'N§(param1,this.§#!E§);
            if(!(_loc3_ && param1))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §?B§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§&#§ = null;
         if(_loc7_ || _loc3_)
         {
            if(param1 == this.§9!K§)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr38);
               }
            }
            else
            {
               this.§9!K§ = param1;
            }
            for each(_loc3_ in this.§;7§)
            {
               if(!(_loc6_ && this))
               {
                  _loc3_.§?B§(param1);
               }
            }
            return;
         }
         addr38:
      }
      
      public function §+^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§!!>§.§-!8§("CHANNEL_AMBIENT"));
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
                        if(!(_loc1_ && this))
                        {
                           §!!>§.playSound(this.§1]§.§5N§,"CHANNEL_AMBIENT",999);
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr63:
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
            §§push(§!!>§.§-!8§("CHANNEL_AMBIENT"));
            if(_loc2_)
            {
               §§push(§§pop().§#I§());
               if(!_loc1_)
               {
                  §§push(!§§pop());
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               if(_loc1_ && this)
               {
                  §§goto(addr97);
               }
               §§goto(addr63);
            }
            else
            {
               §§goto(addr95);
            }
         }
      }
      
      public function §5!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!>§.§8y§("CHANNEL_AMBIENT");
         }
      }
      
      public function §'!I§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               §§push(this.§@o§);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr63);
                     }
                     else
                     {
                        addr83:
                        §§push(this.§^'§);
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§push(§§pop() - this.§@o§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        addr77:
                        §§push(§§pop() - this.§@o§.numChildren);
                     }
                     if(§§pop() < this.§^'§.numChildren)
                     {
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr77);
         }
         addr63:
         _loc2_ = this.§@o§.getChildAt(param1);
         if(_loc4_)
         {
            addr95:
            if(_loc2_)
            {
               if(_loc4_ || this)
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
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || param1)
         {
            this.§%!6§ = param1;
            loop0:
            while(true)
            {
               this.§^!F§ = param2;
               loop1:
               while(true)
               {
                  if(_loc6_ || param2)
                  {
                     if(this.§;7§ != null)
                     {
                        if(_loc6_ || param2)
                        {
                           continue;
                        }
                        addr74:
                        loop8:
                        while(true)
                        {
                           do
                           {
                              if(_loc3_ >= this.§;7§.length)
                              {
                                 break loop8;
                              }
                              this.§;7§[_loc3_].setSideScroll(this.§%!6§,this.§^!F§);
                              do
                              {
                                 _loc3_++;
                                 if(!(_loc6_ || this))
                                 {
                                    break loop1;
                                 }
                              }
                              while(_loc5_);
                              
                           }
                           while(true);
                           
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(this.§-4§);
                        if(!(_loc5_ && param2))
                        {
                           §§push(this.§-4§.scaleY = 1 / §<I§.§,0§);
                           if(!(_loc5_ && param1))
                           {
                              §§pop().scaleX = §§pop();
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(this.§-4§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§<I§.§5!S§);
                                    if(!_loc5_)
                                    {
                                       addr207:
                                       §§push(-§§pop());
                                       if(!(_loc5_ && param2))
                                       {
                                          while(true)
                                          {
                                             §§push(1 / §<I§.§,0§);
                                             addr229:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr207);
                                          }
                                          addr225:
                                       }
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§-4§);
                                          if(!(_loc6_ || param2))
                                          {
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§[!2§);
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop4;
                                                }
                                                §§push(this.§^!F§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr229);
                                                }
                                             }
                                             §§pop().y = §§pop();
                                             if(!(_loc5_ && this))
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                                 addr156:
                                 addr203:
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr171);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(this.§-4§);
               if(_loc6_)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr156);
                  }
                  addr158:
                  return;
               }
               §§goto(addr203);
            }
         }
         §§goto(addr74);
      }
      
      public function §=M§() : String
      {
         return this.§1]§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
