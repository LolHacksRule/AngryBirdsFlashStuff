package §@§
{
   import §#h§.§ !H§;
   import §#h§.§@b§;
   import §,_§.§-!!§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3c§.§^z§;
   import §5`§.§?y§;
   import §8!>§.§ !4§;
   import §8!>§.§7!4§;
   import §8!>§.§@;§;
   import §=!B§.§^!9§;
   import §>K§.§9X§;
   import §catch§.§4@§;
   
   public class §5r§
   {
      
      public static const §0!G§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!G§ = true;
         }
      }
      
      private var §^S§:§?y§;
      
      private var §>k§:§@;§;
      
      private var § J§:Vector.<§15§>;
      
      private var §,!H§:Sprite;
      
      private var §!%§:Sprite;
      
      private var §!?§:Sprite;
      
      private var §^^§:Number;
      
      private var §8!@§:Number;
      
      private var §7p§:Number;
      
      private var §^! §:Boolean = true;
      
      private var §7!3§:Boolean = true;
      
      private var §5'§:§@b§;
      
      private var §"5§:Number;
      
      public function §5r§(param1:String, param2:Number, param3:§?y§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§ J§ = new Vector.<§15§>();
            if(_loc5_ || param2)
            {
               §§goto(addr31);
            }
            §§goto(addr86);
         }
         addr31:
         super();
         if(!(_loc6_ && param2))
         {
            this.§^S§ = param3;
            this.§8!@§ = 0;
            if(_loc5_ || param3)
            {
               this.§7p§ = 0;
               if(_loc5_ || this)
               {
               }
               §§goto(addr109);
            }
            this.§^^§ = param2;
            addr86:
            this.§,!H§ = new Sprite();
            this.§!%§ = new Sprite();
            if(_loc5_)
            {
               this.§!?§ = new Sprite();
               this.§"5§ = param4;
               if(!_loc5_)
               {
               }
               §§goto(addr109);
            }
            this.§"8§(param1,param4);
         }
         addr109:
      }
      
      public function get §0K§() : Boolean
      {
         return this.§^! §;
      }
      
      public function get §7!0§() : Sprite
      {
         return this.§!?§;
      }
      
      public function get §7s§() : Sprite
      {
         return this.§,!H§;
      }
      
      public function get §%>§() : Sprite
      {
         return this.§!%§;
      }
      
      protected function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8&§();
            if(_loc2_)
            {
               §§push(this.§,!H§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr52:
                        this.§,!H§.dispose();
                        this.§,!H§ = null;
                        if(!_loc1_)
                        {
                           addr58:
                           §§push(this.§!%§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(§§pop())
                              {
                                 addr80:
                                 this.§!%§.dispose();
                                 addr81:
                                 this.§!%§ = null;
                                 if(_loc1_ && this)
                                 {
                                 }
                                 §§goto(addr104);
                              }
                              §§push(this.§!?§);
                              if(!_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(this.§!?§);
                                 }
                                 §§goto(addr104);
                              }
                              §§pop().dispose();
                              if(_loc2_)
                              {
                                 this.§!?§ = null;
                                 §§goto(addr104);
                              }
                              addr104:
                              return;
                           }
                           §§goto(addr80);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr80);
      }
      
      public function §+u§() : Boolean
      {
         return this.§7!3§;
      }
      
      public function §]!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§7!3§);
         if(_loc2_)
         {
            if(§§pop() == param1)
            {
               return;
            }
            this.§7!3§ = param1;
            if(!_loc3_)
            {
               §§goto(addr39);
            }
            §§goto(addr40);
         }
         addr39:
         if(!param1)
         {
            addr40:
            this.§8&§();
         }
         else
         {
            this.§"8§(this.§>k§.mName,this.§"5§);
         }
      }
      
      public function §8X§() : String
      {
         return this.§>k§.§[x§;
      }
      
      private function §8&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§!%§);
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr106);
               }
               §§push(this.§!%§);
               if(_loc2_ || this)
               {
                  §§pop().removeChildAt(0,true);
                  if(_loc1_ && _loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            loop2:
            while(true)
            {
               §§push(this.§,!H§);
               loop3:
               while(true)
               {
                  if(§§pop().numChildren <= 0)
                  {
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           if(this.§ J§.length <= 0)
                           {
                              break loop3;
                           }
                           this.§ J§.pop().dispose();
                           if(!(_loc2_ || _loc2_))
                           {
                              break loop3;
                           }
                        }
                     }
                     break;
                  }
                  §§push(this.§,!H§);
                  if(_loc2_ || _loc1_)
                  {
                     continue loop2;
                  }
               }
               addr106:
               return;
            }
         }
      }
      
      private function §"8§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§7!4§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§15§ = null;
         this.§>k§ = § !4§.§;h§(param1);
         if(!(_loc7_ && param2))
         {
            if(this.§>k§ == null)
            {
               if(_loc8_)
               {
                  §§push(§9X§);
                  §§push("UNKNOWN LEVEL THEME! ");
                  if(_loc8_ || param2)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  §§push(§^!9§.§%[§);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
                  if(!_loc7_)
                  {
                     addr69:
                     this.§>k§ = § !4§.§;h§(param1);
                  }
               }
               §§goto(addr69);
            }
            this.§,!H§.y = this.§^^§;
            this.§!%§.y = this.§^^§;
            this.§!?§.y = this.§^^§;
            this.§'!F§();
            var _loc3_:int = 0;
            while(_loc3_ < this.§>k§.§ J§.length)
            {
               _loc4_ = this.§>k§.§ J§[_loc3_];
               if(_loc8_)
               {
                  §§push(§4@§.§?!A§);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc8_ || param2)
                     {
                        if(!§§pop())
                        {
                           if(_loc8_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 §§push(_loc4_.§<!%§);
                                 if(!(_loc7_ && param1))
                                 {
                                    addr148:
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || this)
                                       {
                                          _loc5_ = new Sprite();
                                          _loc6_ = new §15§(_loc4_,_loc5_,this.§^S§,param2);
                                          if(_loc8_)
                                          {
                                             this.§ J§.push(_loc6_);
                                             if(_loc8_)
                                             {
                                                if(_loc6_.§6i§)
                                                {
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   this.§!%§.addChild(_loc5_);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      addr198:
                                                   }
                                                }
                                                else
                                                {
                                                   this.§,!H§.addChild(_loc5_);
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                addr233:
                                                _loc3_++;
                                                continue;
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          addr226:
                                          this.§[p§(parseInt(_loc4_.§0^§,16));
                                       }
                                    }
                                    else if(_loc4_.§0^§)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          §§goto(addr226);
                                       }
                                    }
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr148);
                        }
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr226);
            }
            return;
         }
         §§goto(addr69);
      }
      
      private function §'!F§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§-!!§ = null;
         if(_loc3_)
         {
            §§push(this.§>k§);
            if(_loc3_)
            {
               §§push(§§pop().§?!2§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr32:
                        this.§[p§(this.§>k§.§?!2§);
                        if(!_loc2_)
                        {
                           §§goto(addr49);
                        }
                     }
                     §§goto(addr53);
                  }
               }
               §§goto(addr49);
            }
            addr49:
            if(this.§>k§.§3M§)
            {
               addr53:
               §§push(this);
               if(_loc3_ || this)
               {
                  §§push(uint(0));
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           addr84:
                           §§pop();
                           §§push(uint(this.§>k§.§3M§));
                        }
                     }
                     _loc1_ = §§pop().§5E§(§§pop());
                     if(!_loc2_)
                     {
                        _loc1_.y = 0;
                        if(!(_loc2_ && _loc1_))
                        {
                           this.§!?§.addChild(_loc1_);
                        }
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr84);
            }
            addr108:
            return;
         }
         §§goto(addr32);
      }
      
      protected function §5E§(param1:uint) : §-!!§
      {
         return new §-!!§(4096,4096,param1);
      }
      
      private function §[p§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§4@§.§0W§);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().color = param1;
         }
         addr49:
         if(!(_loc3_ && _loc3_))
         {
            §§push(§4@§.§0W§);
         }
      }
      
      public function §!!1§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8&§();
            if(!(_loc3_ && _loc2_))
            {
               addr37:
               §§push(§9X§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(_loc2_)
               {
                  this.§"8§(param1,this.§"5§);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §=K§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§15§ = null;
         if(_loc7_ || param2)
         {
            if(param1 == this.§^! §)
            {
               if(_loc7_ || this)
               {
                  return;
               }
            }
            else
            {
               this.§^! § = param1;
            }
         }
         for each(_loc3_ in this.§ J§)
         {
            if(_loc7_ || param2)
            {
               _loc3_.§=K§(param1);
            }
         }
      }
      
      public function §>s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§ !H§.§%A§("CHANNEL_AMBIENT"));
            if(_loc2_)
            {
               §§push(§§pop() == null);
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        §§pop();
                        if(!(_loc1_ && _loc1_))
                        {
                           addr78:
                           §§push(§ !H§.§%A§("CHANNEL_AMBIENT").§'I§());
                           if(!(_loc1_ && this))
                           {
                              addr87:
                              if(!§§pop())
                              {
                                 if(!_loc1_)
                                 {
                                    addr90:
                                    § !H§.§ !%§(this.§>k§.§6!@§,"CHANNEL_AMBIENT",999);
                                 }
                              }
                           }
                           §§goto(addr87);
                        }
                        return;
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr78);
         }
         §§goto(addr90);
      }
      
      public function §!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !H§.§]%§("CHANNEL_AMBIENT");
         }
      }
      
      public function §-M§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§,!H§);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = this.§,!H§.getChildAt(param1);
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        addr73:
                        §§push(this.§!%§);
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - this.§,!H§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || param1)
                     {
                        addr69:
                        if(§§pop() - this.§,!H§.numChildren < this.§!%§.numChildren)
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr69);
                  }
                  addr95:
                  if(_loc2_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr104:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!(_loc3_ && this))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr73);
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc6_)
         {
            this.§8!@§ = param1;
            if(_loc5_)
            {
               this.§7p§ = param2;
               if(_loc5_ || param2)
               {
                  if(this.§ J§ != null)
                  {
                     if(!_loc6_)
                     {
                        _loc3_ = 0;
                        addr43:
                        while(true)
                        {
                           if(_loc3_ < this.§ J§.length)
                           {
                              continue;
                           }
                        }
                        §§push(this.§!?§);
                        if(!_loc6_)
                        {
                           §§push(this.§!?§.scaleY = 1 / §^z§.§%!8§);
                           if(!(_loc6_ && this))
                           {
                              §§pop().scaleX = §§pop();
                              if(_loc5_ || param2)
                              {
                                 addr125:
                                 §§push(this.§!?§);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(§^z§.§<H§);
                                    if(_loc5_)
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(1 / §^z§.§%!8§);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc6_)
                                             {
                                                addr165:
                                                §§pop().x = §§pop();
                                             }
                                             §§goto(addr175);
                                          }
                                          addr175:
                                          addr168:
                                          §§push(this.§!?§);
                                          §§push(this.§^^§);
                                          if(_loc5_)
                                          {
                                             addr172:
                                             §§push(this.§7p§);
                                          }
                                          §§pop().y = §§pop();
                                          return;
                                          §§push(§§pop() - §§pop());
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr43);
                  }
                  §§push(this.§!?§);
                  if(_loc5_ || param2)
                  {
                     if(§§pop() != null)
                     {
                        if(!(_loc6_ && param2))
                        {
                           §§goto(addr43);
                        }
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr165);
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §5U§() : String
      {
         return this.§>k§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
