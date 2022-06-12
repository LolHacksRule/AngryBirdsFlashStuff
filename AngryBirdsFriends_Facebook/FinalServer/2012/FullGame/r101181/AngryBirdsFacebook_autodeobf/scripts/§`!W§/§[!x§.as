package §`!W§
{
   import §#!e§.§1"B§;
   import §'6§.§"]§;
   import §1!$§.§!"?§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!B§.§,!p§;
   import §6!B§.§>!E§;
   import §6!D§.§0Y§;
   import §6o§.§+!k§;
   import §<u§.§%"8§;
   import §<u§.§6U§;
   import §<u§.§8,§;
   import §[!"§.§&0§;
   
   public class §[!x§
   {
      
      public static const §50§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §50§ = true;
         }
      }
      
      private var § !@§:§0Y§;
      
      protected var §1,§:§6U§;
      
      protected var §9!1§:Vector.<§<W§>;
      
      private var §>"$§:Sprite;
      
      private var §#"%§:Sprite;
      
      private var §?&§:Sprite;
      
      private var §@%§:Number;
      
      private var §>!'§:Number;
      
      private var §"&§:Number;
      
      private var §7!3§:Boolean = true;
      
      private var §`!5§:Boolean = true;
      
      private var §>6§:§,!p§;
      
      private var §!"-§:Number;
      
      public function §[!x§(param1:String, param2:Number, param3:§0Y§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§9!1§ = new Vector.<§<W§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§ !@§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§>!'§ = 0;
                     loop3:
                     while(!_loc5_)
                     {
                        this.§"&§ = 0;
                        while(true)
                        {
                           this.§@%§ = param2;
                           loop5:
                           while(true)
                           {
                              this.§>"$§ = new Sprite();
                              while(true)
                              {
                                 this.§#"%§ = new Sprite();
                                 while(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       this.§?&§ = new Sprite();
                                       while(!(_loc5_ && param1))
                                       {
                                          if(!_loc5_)
                                          {
                                             this.§!"-§ = param4;
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  if(_loc5_ && param3)
                  {
                     continue;
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get §,D§() : Boolean
      {
         return this.§7!3§;
      }
      
      public function get groundSprite() : Sprite
      {
         return this.§?&§;
      }
      
      public function get backgroundLayersSprite() : Sprite
      {
         return this.§>"$§;
      }
      
      public function get foregroundLayersSprite() : Sprite
      {
         return this.§#"%§;
      }
      
      protected function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§>V§();
            loop0:
            while(true)
            {
               §§push(this.§>"$§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§>"$§);
                        addr139:
                        while(true)
                        {
                           §§pop().dispose();
                           addr140:
                           while(true)
                           {
                              this.§>"$§ = null;
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§#"%§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           addr118:
                           while(true)
                           {
                              this.§#"%§ = null;
                              addr84:
                              while(true)
                              {
                              }
                           }
                           addr118:
                        }
                        loop5:
                        while(true)
                        {
                           §§push(this.§?&§);
                           if(_loc1_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr72:
                                    this.§?&§.dispose();
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr140);
                                       }
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr123);
                              }
                              break;
                           }
                           §§goto(addr72);
                        }
                        return;
                     }
                     addr117:
                     §§pop().dispose();
                     §§goto(addr118);
                     §§goto(addr123);
                  }
                  continue;
               }
               §§goto(addr139);
            }
         }
         §§goto(addr140);
      }
      
      public function §=!p§() : Boolean
      {
         return this.§`!5§;
      }
      
      public function §3H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§`!5§);
            loop0:
            while(§§pop() != param1)
            {
               while(true)
               {
                  this.§`!5§ = param1;
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           addr69:
                           this.§>V§();
                        }
                        else
                        {
                           this.§?"B§(this.§1,§.mName,this.§!"-§);
                           if(_loc3_)
                           {
                              if(_loc3_ || this)
                              {
                                 addr53:
                                 §§goto(addr20);
                              }
                              else
                              {
                                 §§goto(addr69);
                              }
                           }
                        }
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  if(_loc3_ || this)
                  {
                  }
                  §§goto(addr88);
                  continue loop0;
               }
               if(_loc3_)
               {
                  addr20:
                  return;
               }
               break;
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §+!L§() : String
      {
         return this.§1,§.§ !e§;
      }
      
      private function §>V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§#"%§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  do
                  {
                     while(true)
                     {
                        §§push(this.§>"$§);
                        if(_loc1_ || this)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              loop3:
                              while(!_loc2_)
                              {
                                 do
                                 {
                                    if(this.§9!1§.length <= 0)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    else
                                    {
                                       this.§9!1§.pop().dispose();
                                    }
                                 }
                                 while(_loc1_ || this);
                                 
                                 continue loop0;
                              }
                           }
                           else
                           {
                              addr103:
                              this.§>"$§.removeChildAt(0,true);
                           }
                           continue;
                        }
                        §§goto(addr103);
                     }
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  return;
               }
               §§push(this.§#"%§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §1!z§(param1:§6U§, param2:String) : void
      {
      }
      
      private function §?"B§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§%"8§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<W§ = null;
         if(!_loc7_)
         {
            this.§1,§ = §8,§.§0>§(param1);
            loop0:
            while(true)
            {
               if(this.§1,§ == null)
               {
                  while(true)
                  {
                     §§push(§+!k§);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(_loc8_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§1"B§.§5!5§);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        loop3:
                        while(true)
                        {
                           this.§1,§ = §8,§.§0>§(param1);
                           addr97:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr125:
               }
               while(true)
               {
                  this.§1!z§(this.§1,§,param1);
                  loop6:
                  for(; !_loc7_; while(true)
                  {
                     if(_loc8_ || this)
                     {
                        if(!_loc7_)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr48);
                           }
                           else
                           {
                              §§goto(addr125);
                           }
                        }
                        break;
                     }
                     continue loop6;
                  },§§goto(addr97))
                  {
                     this.§>"$§.y = this.§@%§;
                     while(true)
                     {
                        this.§#"%§.y = this.§@%§;
                        continue loop6;
                        addr39:
                        if(!(_loc7_ && param1))
                        {
                           if(true)
                           {
                              var _loc3_:int = 0;
                              addr300:
                              if(_loc3_ < this.§1,§.§9!1§.length)
                              {
                                 _loc4_ = this.§1,§.§9!1§[_loc3_];
                                 if(!_loc7_)
                                 {
                                    §§push(§"]§.§4"!§);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc7_ && this))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                addr183:
                                                §§pop();
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc4_.§7!z§);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      addr196:
                                                      addr195:
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            addr204:
                                                            _loc5_ = new Sprite();
                                                            _loc6_ = this.§%F§(_loc4_,_loc5_,this.§ !@§,param2);
                                                            if(_loc8_)
                                                            {
                                                               this.§9!1§.push(_loc6_);
                                                               addr243:
                                                               if(_loc6_.§]p§)
                                                               {
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     addr254:
                                                                     this.§#"%§.addChild(_loc5_);
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        addr299:
                                                                        _loc3_++;
                                                                        addr281:
                                                                     }
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               this.§>"$§.addChild(_loc5_);
                                                               addr280:
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr243);
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         addr292:
                                                         this.§!e§(parseInt(_loc4_.§2"+§,16));
                                                         §§goto(addr299);
                                                      }
                                                      if(_loc4_.§2"+§)
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§goto(addr292);
                                                         }
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr292);
                                             }
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr204);
                              }
                              addr48:
                           }
                           loop9:
                           while(true)
                           {
                              this.§?&§.y = this.§@%§;
                              while(!_loc7_)
                              {
                                 this.§-c§();
                                 if(!(_loc7_ && param1))
                                 {
                                    continue loop9;
                                 }
                              }
                              continue loop6;
                           }
                           continue;
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function §%F§(param1:§%"8§, param2:Sprite, param3:§0Y§, param4:Number) : §<W§
      {
         return new §<W§(param1,param2,param3,param4);
      }
      
      private function §-c§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§!"?§ = null;
         if(_loc3_)
         {
            §§push(this.§1,§);
            if(_loc3_)
            {
               §§push(§§pop().§+g§);
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§!e§(this.§1,§.§+g§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr63);
                  }
               }
            }
            §§goto(addr59);
         }
         addr59:
         if(this.§1,§.§;!?§)
         {
            addr63:
            §§push(this);
            if(_loc3_)
            {
               §§push(uint(0));
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        addr79:
                        §§pop();
                        §§push(uint(this.§1,§.§;!?§));
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.y = 0;
                     if(_loc3_ || this)
                     {
                        this.§?&§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr79);
         }
         addr118:
      }
      
      protected function createGroundQuad(param1:uint) : §!"?§
      {
         return new §!"?§(4096,4096,param1);
      }
      
      protected function §!e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§"]§.§!X§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().color = param1;
         }
         addr45:
         if(_loc3_ || _loc3_)
         {
            §§push(§"]§.§!X§);
         }
      }
      
      public function §4V§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>V§();
            while(true)
            {
               §§push(§+!k§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               while(!_loc2_)
               {
                  this.§?"B§(param1,this.§!"-§);
                  if(!_loc2_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §'h§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§<W§ = null;
         if(!(_loc7_ && param2))
         {
            if(param1 == this.§7!3§)
            {
               if(!(_loc7_ && _loc3_))
               {
                  return;
               }
            }
            this.§7!3§ = param1;
         }
         for each(_loc3_ in this.§9!1§)
         {
            if(!(_loc7_ && _loc3_))
            {
               _loc3_.§'h§(param1);
            }
         }
      }
      
      public function §7!a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§>!E§.§"h§("CHANNEL_AMBIENT"));
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
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §>!E§.§7N§(this.§1,§.§&"<§,"CHANNEL_AMBIENT",999);
                        }
                        break;
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
            addr90:
         }
         while(true)
         {
            §§push(§>!E§.§"h§("CHANNEL_AMBIENT"));
            if(!_loc1_)
            {
               §§push(§§pop().§5%§());
               if(!(_loc1_ && _loc1_))
               {
                  if(_loc2_)
                  {
                     addr66:
                     §§push(!§§pop());
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr73);
               }
               §§goto(addr66);
            }
            else
            {
               §§goto(addr90);
            }
         }
      }
      
      public function §^!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>!E§.§1!;§("CHANNEL_AMBIENT");
         }
      }
      
      public function §+8§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§>"$§);
               if(_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc4_ && param1))
                     {
                        _loc2_ = this.§>"$§.getChildAt(param1);
                        §§goto(addr47);
                     }
                     else
                     {
                        addr87:
                        §§push(this.§#"%§);
                        §§push(param1);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() - this.§>"$§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr81:
                        §§push(§§pop() - this.§>"$§.numChildren);
                     }
                     if(§§pop() < this.§#"%§.numChildren)
                     {
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr81);
         }
         addr47:
         if(!(_loc4_ && param1))
         {
            addr114:
            if(_loc2_)
            {
               if(_loc3_ || param1)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.visible);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
               }
            }
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc5_ || _loc3_)
         {
            this.§>!'§ = param1;
            loop0:
            while(true)
            {
               this.§"&§ = param2;
               while(true)
               {
                  if(_loc5_)
                  {
                     if(this.§9!1§ == null)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               addr87:
               §§push(this.§?&§);
               if(_loc5_)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc6_ && this))
                     {
                        addr110:
                        §§push(this.§?&§);
                        if(!_loc6_)
                        {
                           §§push(this.§?&§.scaleY = 1 / §&0§.§8!F§);
                           if(_loc5_)
                           {
                              §§pop().scaleX = §§pop();
                              if(!(_loc6_ && param2))
                              {
                                 addr194:
                                 §§push(this.§?&§);
                                 while(true)
                                 {
                                    §§push(§&0§.§0"&§);
                                    addr196:
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                       if(_loc5_)
                                       {
                                          §§push(1 / §&0§.§8!F§);
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr204:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                             }
                                          }
                                          addr203:
                                       }
                                       §§goto(addr204);
                                    }
                                 }
                                 addr194:
                                 addr135:
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(this.§?&§);
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§@%§);
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(this.§"&§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr203);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr196);
                                             }
                                          }
                                          §§goto(addr204);
                                       }
                                       §§pop().y = §§pop();
                                       if(_loc5_ || param2)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr137:
                                    return;
                                    addr191:
                                    addr145:
                                 }
                                 §§goto(addr194);
                                 §§goto(addr196);
                              }
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr137);
               }
               §§goto(addr145);
            }
         }
         loop8:
         while(true)
         {
            while(true)
            {
               if(_loc3_ >= this.§9!1§.length)
               {
                  break loop8;
               }
               this.§9!1§[_loc3_].setSideScroll(this.§>!'§,this.§"&§);
               if(_loc5_ || this)
               {
                  _loc3_++;
                  if(_loc5_ || param1)
                  {
                     if(false)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr110);
               }
               else
               {
                  §§goto(addr87);
               }
            }
         }
         if(_loc5_)
         {
            §§goto(addr87);
         }
         §§goto(addr135);
      }
      
      public function §6S§() : String
      {
         return this.§1,§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
