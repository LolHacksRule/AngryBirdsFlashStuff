package §5g§
{
   import § !+§.§0Z§;
   import §%!$§.§5v§;
   import §%!$§.§=m§;
   import §3]§.§"§;
   import §3]§.§5O§;
   import §3]§.§8[§;
   import §4W§.§!]§;
   import §5p§.§?M§;
   import §<!+§.§with§;
   import §@,§.§4h§;
   import §`a§.§?!N§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §!!+§
   {
      
      public static const §^!R§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!+§))
         {
            §^!R§ = true;
         }
      }
      
      private var §5<§:§!]§;
      
      private var §@<§:§"§;
      
      private var §+Q§:Vector.<§!2§>;
      
      private var §%2§:Sprite;
      
      private var §"E§:Sprite;
      
      private var §2[§:Sprite;
      
      private var §&5§:Number;
      
      private var §+!U§:Number;
      
      private var §6!U§:Number;
      
      private var §2N§:Boolean = true;
      
      private var § true§:Boolean = true;
      
      private var §get §:§5v§;
      
      private var §0Q§:Number;
      
      public function §!!+§(param1:String, param2:Number, param3:§!]§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§+Q§ = new Vector.<§!2§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§5<§ = param3;
                  addr117:
                  while(true)
                  {
                     this.§+!U§ = 0;
                  }
                  addr57:
                  if(!_loc6_)
                  {
                     continue;
                  }
                  this.§0Q§ = param4;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr55:
                     while(!_loc5_)
                     {
                        §§goto(addr57);
                     }
                     loop6:
                     while(true)
                     {
                        this.§"E§ = new Sprite();
                        addr75:
                        while(true)
                        {
                           if(_loc6_ || param2)
                           {
                              this.§2[§ = new Sprite();
                              §§goto(addr55);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§%2§ = new Sprite();
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                              addr93:
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr112);
      }
      
      public function get §[!B§() : Boolean
      {
         return this.§2N§;
      }
      
      public function get §41§() : Sprite
      {
         return this.§2[§;
      }
      
      public function get §+#§() : Sprite
      {
         return this.§%2§;
      }
      
      public function get §#H§() : Sprite
      {
         return this.§"E§;
      }
      
      protected function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§ e§();
            loop0:
            while(true)
            {
               §§push(this.§%2§);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§%2§);
                        addr150:
                        while(true)
                        {
                           §§pop().dispose();
                           addr151:
                           while(true)
                           {
                              addr122:
                              addr126:
                              this.§%2§ = null;
                              while(true)
                              {
                              }
                           }
                        }
                        addr83:
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        this.§2[§ = null;
                        addr90:
                        if(!(_loc1_ && this))
                        {
                           if(_loc2_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       this.§"E§ = null;
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             addr104:
                                             while(true)
                                             {
                                                §§push(this.§2[§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§2[§);
                                                         addr63:
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            addr64:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ || _loc1_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr83);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"E§);
                                                                     addr118:
                                                                     while(true)
                                                                     {
                                                                        §§pop().dispose();
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  addr116:
                                                               }
                                                               §§goto(addr90);
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      addr61:
                                                   }
                                                   §§goto(addr25);
                                                }
                                                §§goto(addr63);
                                                §§goto(addr104);
                                             }
                                          }
                                          §§goto(addr151);
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              addr25:
                              return;
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr64);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§"E§);
                     if(_loc2_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr116);
                        }
                        §§goto(addr50);
                     }
                     §§goto(addr118);
                     §§goto(addr126);
                  }
               }
               §§goto(addr150);
            }
         }
         §§goto(addr151);
      }
      
      public function §`B§() : Boolean
      {
         return this.§ true§;
      }
      
      public function §>!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ true§);
            loop0:
            for(; §§pop() != param1; while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           this.§ e§();
                           break;
                        }
                        §§goto(addr88);
                     }
                     break;
                  }
                  this.§`3§(this.§@<§.mName,this.§0Q§);
                  if(_loc2_ && param1)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            },§§goto(addr25))
            {
               while(true)
               {
                  this.§ true§ = param1;
                  continue loop0;
               }
            }
         }
      }
      
      public function §]!S§() : String
      {
         return this.§@<§.§]!R§;
      }
      
      private function § e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§"E§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§%2§);
                        if(!_loc1_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              loop2:
                              while(!_loc1_)
                              {
                                 do
                                 {
                                    if(this.§+Q§.length <= 0)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             return;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       this.§+Q§.pop().dispose();
                                    }
                                 }
                                 while(_loc2_ || this);
                                 
                                 continue loop0;
                              }
                              continue;
                           }
                           §§push(this.§%2§);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                     addr31:
                  }
                  while(true)
                  {
                     §§goto(addr31);
                  }
               }
               else
               {
                  §§push(this.§"E§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §`3§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§5O§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§!2§ = null;
         if(_loc8_ || _loc3_)
         {
            this.§@<§ = §8[§.§8V§(param1);
            while(true)
            {
               if(this.§@<§ == null)
               {
                  if(_loc8_ || this)
                  {
                     §4h§.log("UNKNOWN LEVEL THEME! " + param1);
                  }
                  while(true)
                  {
                     §§push(§with§.§+!-§);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     loop2:
                     while(true)
                     {
                        this.§@<§ = §8[§.§8V§(param1);
                        addr100:
                        while(true)
                        {
                           while(!(_loc7_ && param1))
                           {
                              continue loop2;
                              loop8:
                              while(!(_loc7_ && param1))
                              {
                                 while(true)
                                 {
                                    this.§7o§();
                                    if(!_loc8_)
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc7_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§2[§.y = this.§&5§;
                                          continue loop8;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§"E§.y = this.§&5§;
                                          break loop8;
                                       }
                                       addr93:
                                    }
                                 }
                                 var _loc3_:int = 0;
                                 loop10:
                                 while(_loc3_ < this.§@<§.§+Q§.length)
                                 {
                                    _loc4_ = this.§@<§.§+Q§[_loc3_];
                                    if(_loc8_ || param2)
                                    {
                                       §§push(§0Z§.§=2§);
                                       if(_loc8_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr178:
                                             if(!§§pop())
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§pop();
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(_loc4_.§?3§);
                                                      if(!_loc7_)
                                                      {
                                                         addr200:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               _loc5_ = new Sprite();
                                                               _loc6_ = new §!2§(_loc4_,_loc5_,this.§5<§,param2);
                                                               if(_loc8_)
                                                               {
                                                                  this.§+Q§.push(_loc6_);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     do
                                                                     {
                                                                        if(_loc6_.§4H§)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr241:
                                                                              this.§"E§.addChild(_loc5_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        this.§%2§.addChild(_loc5_);
                                                                        if(_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     while(false);
                                                                     
                                                                     addr288:
                                                                     _loc3_++;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            else
                                                            {
                                                               this.§?2§(parseInt(_loc4_.§'!O§,16));
                                                               addr271:
                                                            }
                                                         }
                                                         else if(_loc4_.§'!O§)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               §§goto(addr271);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr288);
                                                }
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr271);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§%2§.y = this.§&5§;
                  §§goto(addr93);
                  §§goto(addr100);
               }
               if(_loc7_ && param2)
               {
                  continue;
               }
               §§goto(addr43);
            }
         }
         §§goto(addr56);
      }
      
      private function §7o§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?!N§ = null;
         if(!_loc2_)
         {
            §§push(this.§@<§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop().§]"§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§?2§(this.§@<§.§]"§);
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr73);
                  }
               }
            }
            §§goto(addr69);
         }
         addr69:
         if(this.§@<§.§%g§)
         {
            addr73:
            §§push(this);
            if(_loc3_ || _loc1_)
            {
               §§push(uint(0));
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop();
                        addr95:
                        §§push(uint(this.§@<§.§%g§));
                     }
                  }
               }
               _loc1_ = §§pop().§'!7§(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.y = 0;
                  if(_loc3_)
                  {
                     this.§2[§.addChild(_loc1_);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr95);
         }
         addr128:
      }
      
      protected function §'!7§(param1:uint) : §?!N§
      {
         return new §?!N§(4096,4096,param1);
      }
      
      private function §?2§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§0Z§.§4J§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().color = param1;
         }
         addr50:
         if(!_loc2_)
         {
            §§push(§0Z§.§4J§);
         }
      }
      
      public function §0!#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ e§();
            while(true)
            {
               §4h§.log("Switch background! NEW BACKGROUND NAME = " + param1);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§`3§(param1,this.§0Q§);
            if(!_loc3_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §@!-§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§!2§ = null;
         if(_loc7_ || param1)
         {
            if(param1 == this.§2N§)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr38);
               }
            }
            this.§2N§ = param1;
            for each(_loc3_ in this.§+Q§)
            {
               if(_loc7_ || param1)
               {
                  _loc3_.§@!-§(param1);
               }
            }
            return;
         }
         addr38:
      }
      
      public function §?O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(§=m§.§,'§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_)
                        {
                           §=m§.playSound(this.§@<§.§&!D§,"CHANNEL_AMBIENT",999);
                        }
                        if(_loc1_)
                        {
                           addr73:
                           break;
                        }
                        §§push(§§pop().§9y§());
                        continue loop0;
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc1_ || this)
                        {
                           continue;
                        }
                        addr98:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr98:
                     }
                     return;
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr73);
      }
      
      public function §4v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §=m§.§+f§("CHANNEL_AMBIENT");
         }
      }
      
      public function §''§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(this.§%2§);
               if(!_loc4_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_)
                     {
                        _loc2_ = this.§%2§.getChildAt(param1);
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        addr82:
                        §§push(this.§"E§);
                        §§push(param1);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() - this.§%2§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        addr78:
                        if(§§pop() - this.§%2§.numChildren < this.§"E§.numChildren)
                        {
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr78);
                  }
                  addr99:
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr103:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr78);
         }
         §§goto(addr82);
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc6_)
         {
            this.§+!U§ = param1;
            loop0:
            while(true)
            {
               this.§6!U§ = param2;
               loop1:
               while(this.§+Q§ != null)
               {
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc3_ >= this.§+Q§.length)
                        {
                           if(_loc5_ || this)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           this.§+Q§[_loc3_].setSideScroll(this.§+!U§,this.§6!U§);
                           if(_loc6_)
                           {
                              break;
                           }
                           _loc3_++;
                           if(_loc5_)
                           {
                              if(false)
                              {
                                 continue loop10;
                              }
                              continue;
                           }
                        }
                        addr210:
                        loop2:
                        while(true)
                        {
                           §§push(this.§2[§);
                           if(_loc5_ || this)
                           {
                              while(true)
                              {
                                 §§push(this.§&5§);
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(this.§6!U§);
                                          if(_loc5_ || param2)
                                          {
                                             addr173:
                                             §§push(§§pop() - §§pop());
                                             if(_loc5_ || this)
                                             {
                                                while(true)
                                                {
                                                   §§pop().y = §§pop();
                                                   if(!(_loc6_ && this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                addr132:
                                                return;
                                                addr180:
                                                addr188:
                                             }
                                             addr203:
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                addr204:
                                                while(true)
                                                {
                                                   §§push(1 / §?M§.§]5§);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr209:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop2;
                                             }
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr173);
                              }
                              addr145:
                           }
                           else
                           {
                              addr191:
                              while(true)
                              {
                              }
                              addr191:
                           }
                           §§goto(addr203);
                        }
                     }
                     addr130:
                     §§goto(addr191);
                  }
               }
               §§push(this.§2[§);
               if(_loc5_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc5_)
                     {
                        §§push(this.§2[§);
                        if(!(_loc6_ && this))
                        {
                           §§push(this.§2[§.scaleY = 1 / §?M§.§]5§);
                           if(_loc5_)
                           {
                              §§pop().scaleX = §§pop();
                              if(_loc5_)
                              {
                                 §§goto(addr130);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr132);
               }
               §§goto(addr191);
            }
         }
         §§goto(addr65);
      }
      
      public function §,7§() : String
      {
         return this.§@<§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
