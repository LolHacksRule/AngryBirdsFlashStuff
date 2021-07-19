package §2!]§
{
   import §"v§.§9"§;
   import §&"5§.§7!P§;
   import §-!n§.§5!U§;
   import §-!n§.§7v§;
   import §6p§.§?%§;
   import §9=§.§'" §;
   import §9=§.§0!5§;
   import §9=§.§=!k§;
   import §=!#§.§`"=§;
   import §=!M§.§9!P§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import §default§.§^$§;
   
   public class §+!V§
   {
      
      public static const §6`§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6`§ = true;
         }
      }
      
      private var §2"!§:§7!P§;
      
      protected var §8!v§:§=!k§;
      
      protected var §^!a§:Vector.<§9!M§>;
      
      private var § !'§:Sprite;
      
      private var §7!8§:Sprite;
      
      private var §,+§:Sprite;
      
      private var §&D§:Number;
      
      private var §2!N§:Number;
      
      private var §+"?§:Number;
      
      private var §<K§:Boolean = true;
      
      private var §&Z§:Boolean = true;
      
      private var §;y§:§7v§;
      
      private var §?!"§:Number;
      
      public function §+!V§(param1:String, param2:Number, param3:§7!P§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§^!a§ = new Vector.<§9!M§>();
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§2"!§ = param3;
               loop2:
               while(true)
               {
                  this.§2!N§ = 0;
                  while(true)
                  {
                     this.§+"?§ = 0;
                     while(true)
                     {
                        this.§&D§ = param2;
                        continue loop2;
                        addr95:
                        while(!(_loc6_ && this))
                        {
                           continue loop1;
                           if(!(_loc6_ && param3))
                           {
                              return;
                           }
                        }
                     }
                     addr53:
                     if(!(_loc6_ && param3))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function get §]",§() : Boolean
      {
         return this.§<K§;
      }
      
      public function get §@!%§() : Sprite
      {
         return this.§,+§;
      }
      
      public function get §&!Z§() : Sprite
      {
         return this.§ !'§;
      }
      
      public function get §1V§() : Sprite
      {
         return this.§7!8§;
      }
      
      protected function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§-!l§();
            loop0:
            while(true)
            {
               §§push(this.§ !'§);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§ !'§);
                        addr139:
                        while(true)
                        {
                           §§pop().dispose();
                           addr140:
                           while(true)
                           {
                              this.§ !'§ = null;
                              addr115:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr137:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this.§7!8§);
                     if(_loc1_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§,+§);
                              if(_loc1_)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc1_ || _loc1_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§,+§);
                                       addr59:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                       }
                                    }
                                    addr57:
                                 }
                                 for(; !_loc2_; this.§,+§ = null,if(_loc1_ || this)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop5;
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 })
                                 {
                                    if(_loc1_ || this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr140);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr59);
                              addr84:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           return;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        if(_loc1_)
                        {
                           addr102:
                           this.§7!8§.dispose();
                           continue loop0;
                        }
                        §§goto(addr137);
                        §§goto(addr140);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr139);
            }
         }
         §§goto(addr57);
      }
      
      public function §4P§() : Boolean
      {
         return this.§&Z§;
      }
      
      public function §;p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§&Z§);
            while(true)
            {
               if(§§pop() == param1)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr68);
                  }
               }
               while(true)
               {
                  this.§&Z§ = param1;
                  addr68:
                  §§goto(addr63);
               }
            }
            return;
         }
         addr63:
         while(true)
         {
            if(_loc2_ && _loc2_)
            {
               continue loop1;
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     this.§-!l§();
                     break;
                  }
                  continue;
               }
            }
            continue loop0;
            addr57:
         }
      }
      
      public function §!z§() : String
      {
         return this.§8!v§.§"V§;
      }
      
      private function §-!l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §§push(this.§7!8§);
            if(!(_loc2_ && this))
            {
               if(§§pop().numChildren <= 0)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(this.§ !'§);
                        if(_loc1_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              do
                              {
                                 while(true)
                                 {
                                    if(this.§^!a§.length <= 0)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§^!a§.pop().dispose();
                                    }
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                              }
                              while(_loc2_);
                              
                              return;
                           }
                           §§push(this.§ !'§);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                  }
                  break;
               }
               §§push(this.§7!8§);
            }
            §§pop().removeChildAt(0,true);
         }
         while(true)
         {
            §§goto(addr30);
         }
      }
      
      protected function §<k§(param1:§=!k§, param2:String) : void
      {
      }
      
      private function §+!l§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§'" § = null;
         var _loc5_:Sprite = null;
         var _loc6_:§9!M§ = null;
         if(_loc7_ || this)
         {
            this.§8!v§ = §0!5§.§;l§(param1);
         }
         while(true)
         {
            if(this.§8!v§ == null)
            {
               while(true)
               {
                  §9!P§.log("UNKNOWN LEVEL THEME! " + param1);
                  addr119:
                  while(true)
                  {
                     §§push(§9"§.§4!§);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     addr108:
                     while(true)
                     {
                        this.§8!v§ = §0!5§.§;l§(param1);
                        addr100:
                        while(true)
                        {
                        }
                     }
                  }
               }
               addr114:
            }
            while(true)
            {
               this.§<k§(this.§8!v§,param1);
               loop6:
               while(true)
               {
                  if(!_loc8_)
                  {
                     this.§ !'§.y = this.§&D§;
                     while(!_loc8_)
                     {
                        this.§7!8§.y = this.§&D§;
                        loop8:
                        while(true)
                        {
                           addr47:
                           while(true)
                           {
                              this.§,+§.y = this.§&D§;
                              continue loop8;
                           }
                           continue loop6;
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§goto(addr114);
                  }
               }
               §§goto(addr100);
            }
         }
      }
      
      protected function §5!<§(param1:§'" §, param2:Sprite, param3:§7!P§, param4:Number) : §9!M§
      {
         return new §9!M§(param1,param2,param3,param4);
      }
      
      private function §+!c§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^$§ = null;
         if(!_loc2_)
         {
            §§push(this.§8!v§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().§=!4§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr42:
                        this.§4"0§(this.§8!v§.§=!4§);
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr54);
                        }
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr54);
            }
            addr54:
            if(this.§8!v§.§1-§)
            {
               addr68:
               §§push(this);
               if(!(_loc2_ && this))
               {
                  §§push(uint(0));
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           addr94:
                           §§pop();
                           §§push(uint(this.§8!v§.§1-§));
                        }
                     }
                     _loc1_ = §§pop().§6""§(§§pop());
                     if(_loc3_ || this)
                     {
                        _loc1_.y = 0;
                        if(_loc3_ || _loc1_)
                        {
                           this.§,+§.addChild(_loc1_);
                        }
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr94);
            }
            addr133:
            return;
         }
         §§goto(addr42);
      }
      
      protected function §6""§(param1:uint) : §^$§
      {
         return new §^$§(4096,4096,param1);
      }
      
      protected function §4"0§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§?%§.§%b§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr52:
                     §?%§.§%b§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§-!l§();
            while(true)
            {
               §9!P§.log("Switch background! NEW BACKGROUND NAME = " + param1);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§+!l§(param1,this.§?!"§);
            if(_loc2_)
            {
               if(_loc2_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §]D§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9!M§ = null;
         if(!(_loc6_ && _loc3_))
         {
            if(param1 == this.§<K§)
            {
               if(!(_loc6_ && this))
               {
                  return;
               }
            }
            this.§<K§ = param1;
         }
         for each(_loc3_ in this.§^!a§)
         {
            if(!(_loc6_ && param1))
            {
               _loc3_.§]D§(param1);
            }
         }
      }
      
      public function §^!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§5!U§.§`!;§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr107:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           if(_loc1_ && _loc1_)
                           {
                              continue loop0;
                           }
                           §5!U§.playSound(this.§8!v§.§=5§,"CHANNEL_AMBIENT",999);
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
         §§goto(addr84);
      }
      
      public function §#!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!U§.§+!7§("CHANNEL_AMBIENT");
         }
      }
      
      public function §;s§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§ !'§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = this.§ !'§.getChildAt(param1);
                        if(!(_loc3_ && this))
                        {
                           addr95:
                           if(_loc2_)
                           {
                              if(!(_loc3_ && _loc2_))
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
                     addr83:
                     §§push(this.§7!8§);
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - this.§ !'§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && param1))
                     {
                        addr79:
                        if(§§pop() - this.§ !'§.numChildren < this.§7!8§.numChildren)
                        {
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr83);
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(!(_loc6_ && param1))
         {
            this.§2!N§ = param1;
            while(true)
            {
               this.§+"?§ = param2;
            }
            addr79:
         }
         while(this.§^!a§ != null)
         {
            if(!(_loc6_ && _loc3_))
            {
               _loc3_ = 0;
            }
            if(!_loc5_)
            {
               continue;
            }
            if(!_loc6_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(_loc3_ >= this.§^!a§.length)
                     {
                        break loop2;
                     }
                     addr140:
                     addr184:
                     this.§^!a§[_loc3_].setSideScroll(this.§2!N§,this.§+"?§);
                     while(true)
                     {
                        _loc3_++;
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(_loc5_ || _loc3_)
                        {
                           if(false)
                           {
                              break loop3;
                           }
                           continue loop3;
                        }
                     }
                     §§push(this.§,+§);
                     loop5:
                     while(true)
                     {
                        §§push(§`"=§.§9!e§);
                        addr186:
                        while(true)
                        {
                           §§push(-§§pop());
                           if(_loc5_)
                           {
                              §§push(1 / §`"=§.§;!0§);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                              addr203:
                           }
                           addr204:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               if(_loc5_ || _loc3_)
               {
                  break;
               }
               §§goto(addr181);
            }
            else
            {
               §§goto(addr79);
            }
         }
         §§push(this.§,+§);
         if(_loc5_)
         {
            if(§§pop() != null)
            {
               if(_loc5_)
               {
                  §§push(this.§,+§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(this.§,+§.scaleY = 1 / §`"=§.§;!0§);
                     if(!(_loc6_ && param1))
                     {
                        §§pop().scaleX = §§pop();
                        if(!_loc6_)
                        {
                           §§goto(addr140);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr184);
               }
               §§goto(addr181);
            }
            §§goto(addr142);
         }
         §§goto(addr150);
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§8!v§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
