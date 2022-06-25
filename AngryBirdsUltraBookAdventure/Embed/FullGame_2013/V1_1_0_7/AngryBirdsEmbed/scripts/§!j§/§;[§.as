package §!j§
{
   import §#X§.§,!F§;
   import §#X§.§=J§;
   import §&o§.§<3§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §1!-§.§@Z§;
   import §2!,§.§++§;
   import §2!,§.§8E§;
   import §2!,§.§@!2§;
   import §2k§.§`n§;
   import §3a§.§7!+§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   
   public class §;[§
   {
      
      public static const §'@§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'@§ = true;
         }
      }
      
      private var §-M§:§5!H§;
      
      protected var §=K§:§8E§;
      
      protected var §2s§:Vector.<§5M§>;
      
      private var § !%§:Sprite;
      
      private var §2l§:Sprite;
      
      private var §#d§:Sprite;
      
      private var §`3§:Number;
      
      private var §,1§:Number;
      
      private var §;f§:Number;
      
      private var §"!H§:Boolean = true;
      
      private var §?;§:Boolean = true;
      
      private var §9V§:§=J§;
      
      private var §0U§:Number;
      
      public function §;[§(param1:String, param2:Number, param3:§5!H§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§2s§ = new Vector.<§5M§>();
            super();
            if(_loc6_ || param3)
            {
               this.§-M§ = param3;
               this.§,1§ = 0;
               addr34:
               if(_loc6_)
               {
                  this.§;f§ = 0;
                  if(_loc6_)
                  {
                     this.§`3§ = param2;
                     if(_loc6_)
                     {
                        this.§ !%§ = new Sprite();
                        if(_loc6_)
                        {
                           addr78:
                           this.§2l§ = new Sprite();
                           if(!_loc5_)
                           {
                              addr84:
                              this.§#d§ = new Sprite();
                              if(!(_loc5_ && param2))
                              {
                                 this.§0U§ = param4;
                              }
                           }
                           §§goto(addr102);
                        }
                        this.§01§(param1,param4);
                     }
                  }
                  addr102:
                  return;
               }
               §§goto(addr78);
            }
            §§goto(addr84);
         }
         §§goto(addr34);
      }
      
      public function get §>!I§() : Boolean
      {
         return this.§"!H§;
      }
      
      public function get §&W§() : Sprite
      {
         return this.§#d§;
      }
      
      public function get §'K§() : Sprite
      {
         return this.§ !%§;
      }
      
      public function get §=@§() : Sprite
      {
         return this.§2l§;
      }
      
      protected function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§8w§();
            if(_loc2_ || _loc2_)
            {
               §§push(this.§ !%§);
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     addr55:
                     this.§ !%§.dispose();
                     this.§ !%§ = null;
                     if(!_loc1_)
                     {
                        addr61:
                        §§push(this.§2l§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              addr78:
                              this.§2l§.dispose();
                              if(!(_loc1_ && _loc1_))
                              {
                                 this.§2l§ = null;
                              }
                           }
                           §§push(this.§#d§);
                           if(_loc2_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 addr101:
                                 this.§#d§.dispose();
                                 this.§#d§ = null;
                              }
                              return;
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr78);
      }
      
      public function §^!$§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §7!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§?;§);
         if(_loc3_ || param1)
         {
            if(§§pop() == param1)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               this.§?;§ = param1;
               §§goto(addr45);
            }
            §§goto(addr46);
         }
         addr45:
         if(!param1)
         {
            addr46:
            this.§8w§();
            if(_loc2_)
            {
            }
         }
         else
         {
            this.§01§(this.§=K§.mName,this.§0U§);
         }
      }
      
      public function §!C§() : String
      {
         return this.§=K§.§2T§;
      }
      
      private function §8w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§2l§);
            loop1:
            while(true)
            {
               if(§§pop().numChildren > 0)
               {
                  §§push(this.§2l§);
                  if(_loc1_)
                  {
                     §§pop().removeChildAt(0,true);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  continue;
               }
               if(_loc2_ && this)
               {
               }
               loop3:
               while(true)
               {
                  §§push(this.§ !%§);
                  while(true)
                  {
                     if(§§pop().numChildren <= 0)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           break loop1;
                        }
                        addr110:
                        return;
                     }
                     §§push(this.§ !%§);
                     if(_loc1_ || _loc2_)
                     {
                        continue loop3;
                     }
                  }
               }
            }
            §§goto(addr105);
         }
      }
      
      protected function §,^§(param1:§8E§, param2:String) : void
      {
      }
      
      private function §01§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§++§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§5M§ = null;
         this.§=K§ = §@!2§.§"@§(param1);
         if(this.§=K§ == null)
         {
            if(!_loc8_)
            {
               §§push(§7!+§);
               §§push("UNKNOWN LEVEL THEME! ");
               if(_loc7_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(_loc7_ || param2)
               {
                  §§push(§@Z§.§try§);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
                  this.§=K§ = §@!2§.§"@§(param1);
                  if(!_loc8_)
                  {
                     addr68:
                     this.§,^§(this.§=K§,param1);
                     if(!(_loc8_ && param1))
                     {
                        addr80:
                        this.§ !%§.y = this.§`3§;
                     }
                     this.§2l§.y = this.§`3§;
                     if(_loc7_)
                     {
                        this.§#d§.y = this.§`3§;
                     }
                     this.§%q§();
                     §§goto(addr99);
                  }
                  §§goto(addr80);
               }
            }
            addr99:
            var _loc3_:int = 0;
            while(_loc3_ < this.§=K§.§2s§.length)
            {
               _loc4_ = this.§=K§.§2s§[_loc3_];
               if(!(_loc8_ && param1))
               {
                  §§push(§>I§.§0P§);
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        addr134:
                        if(!§§pop())
                        {
                           if(!(_loc8_ && param2))
                           {
                              §§pop();
                              if(!(_loc8_ && param1))
                              {
                                 addr151:
                                 §§push(_loc4_.§&!6§);
                                 if(_loc7_ || this)
                                 {
                                    addr161:
                                    addr160:
                                    if(!§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          _loc5_ = new Sprite();
                                          _loc6_ = this.§&a§(_loc4_,_loc5_,this.§-M§,param2);
                                          if(_loc7_ || _loc3_)
                                          {
                                             this.§2s§.push(_loc6_);
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             if(_loc6_.§ R§)
                                             {
                                                if(!(_loc8_ && param2))
                                                {
                                                   this.§2l§.addChild(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.§ !%§.addChild(_loc5_);
                                                if(!(_loc7_ || this))
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr234:
                                          this.§2U§(parseInt(_loc4_.§1?§,16));
                                       }
                                    }
                                    else if(_loc4_.§1?§)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr234);
                                       }
                                    }
                                    _loc3_++;
                                    continue;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr134);
               }
               §§goto(addr151);
            }
            return;
         }
         §§goto(addr68);
      }
      
      protected function §&a§(param1:§++§, param2:Sprite, param3:§5!H§, param4:Number) : §5M§
      {
         return new §5M§(param1,param2,param3,param4);
      }
      
      private function §%q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<3§ = null;
         if(!(_loc2_ && this))
         {
            §§push(this.§=K§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop().§'1§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        this.§2U§(this.§=K§.§'1§);
                        if(_loc3_ || _loc1_)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr73);
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         addr69:
         if(this.§=K§.§6!7§)
         {
            addr73:
            §§push(this);
            if(_loc3_ || this)
            {
               §§push(uint(0));
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§pop();
                        addr110:
                        §§push(uint(this.§=K§.§6!7§));
                     }
                  }
               }
               _loc1_ = §§pop().§''§(§§pop());
               if(_loc3_ || _loc2_)
               {
                  _loc1_.y = 0;
                  if(_loc3_)
                  {
                     this.§#d§.addChild(_loc1_);
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr110);
         }
         addr133:
      }
      
      protected function §''§(param1:uint) : §<3§
      {
         return new §<3§(4096,4096,param1);
      }
      
      protected function §2U§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§>I§.§`S§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     §>I§.§`S§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §2[§(param1:String, param2:§5!H§ = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§-M§ = param2;
                  if(!_loc4_)
                  {
                     addr52:
                     this.§8w§();
                     if(_loc3_ || this)
                     {
                     }
                     §§goto(addr70);
                  }
                  §§push(§7!+§);
                  §§push("Switch background! NEW BACKGROUND NAME = ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr70);
                  }
                  addr70:
                  this.§01§(param1,this.§0U§);
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §9C§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§5M§ = null;
         if(!(_loc7_ && this))
         {
            if(param1 == this.§"!H§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               this.§"!H§ = param1;
            }
         }
         for each(_loc3_ in this.§2s§)
         {
            if(_loc6_)
            {
               _loc3_.§9C§(param1);
            }
         }
      }
      
      public function §@!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§,!F§.§=!H§("CHANNEL_AMBIENT"));
            if(!_loc1_)
            {
               §§push(§§pop() == null);
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           addr73:
                           §§push(§,!F§.§=!H§("CHANNEL_AMBIENT").§]n§());
                           if(!_loc1_)
                           {
                              addr77:
                              if(!§§pop())
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    §,!F§.§;v§(this.§=K§.final,"CHANNEL_AMBIENT",999);
                                 }
                              }
                           }
                           §§goto(addr77);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr73);
      }
      
      public function § ! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!F§.§@!9§("CHANNEL_AMBIENT");
         }
      }
      
      public function §@!B§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(this.§ !%§);
               if(_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr57:
                        _loc2_ = this.§ !%§.getChildAt(param1);
                        if(!_loc4_)
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr113);
                     }
                     else
                     {
                        addr92:
                        §§push(this.§2l§);
                        §§push(param1);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() - this.§ !%§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        addr78:
                        if(§§pop() - this.§ !%§.numChildren < this.§2l§.numChildren)
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr78);
                  }
                  addr109:
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr113:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!_loc4_)
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
         §§goto(addr57);
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_)
         {
            this.§,1§ = param1;
            if(!(_loc5_ && this))
            {
               this.§;f§ = param2;
               if(_loc6_ || _loc3_)
               {
                  if(this.§2s§ != null)
                  {
                     if(!_loc5_)
                     {
                        addr47:
                        _loc3_ = 0;
                        addr49:
                        while(true)
                        {
                           if(_loc3_ < this.§2s§.length)
                           {
                              continue;
                           }
                        }
                        §§push(this.§#d§);
                        if(_loc6_)
                        {
                           §§push(this.§#d§.scaleY = 1 / §`n§.§&"§);
                           if(!(_loc5_ && param1))
                           {
                              §§pop().scaleX = §§pop();
                              §§push(this.§#d§);
                              if(!_loc5_)
                              {
                                 §§push(§`n§.§!!7§);
                                 if(_loc6_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(1 / §`n§.§&"§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             §§goto(addr147);
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr49);
                  }
                  §§push(this.§#d§);
                  if(_loc6_ || this)
                  {
                     if(§§pop() != null)
                     {
                        §§goto(addr49);
                     }
                     addr147:
                     §§pop().x = §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        addr157:
                        §§push(this.§#d§);
                        §§push(this.§`3§);
                        if(!_loc5_)
                        {
                           addr164:
                           §§pop().y = §§pop() - this.§;f§;
                        }
                        §§goto(addr164);
                     }
                     return;
                  }
                  §§goto(addr157);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr47);
      }
      
      public function §]!,§() : String
      {
         return this.§=K§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
