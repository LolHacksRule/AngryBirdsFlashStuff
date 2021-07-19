package §&<§
{
   import §+!9§.§'!>§;
   import §+!9§.§1!3§;
   import §+!9§.§6!N§;
   import §,!K§.§[V§;
   import §-!Q§.§,!7§;
   import §-!Q§.§;l§;
   import §6;§.§%[§;
   import §9t§.§=!>§;
   import §>^§.§!6§;
   import §^a§.§ !'§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   
   public class §<g§
   {
      
      public static const §4!R§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<g§))
         {
            §4!R§ = true;
         }
      }
      
      private var §>!K§:§=!>§;
      
      protected var §^!R§:§1!3§;
      
      protected var §5?§:Vector.<§'P§>;
      
      private var §"!_§:Sprite;
      
      private var §-!Y§:Sprite;
      
      private var §>,§:Sprite;
      
      private var §3F§:Number;
      
      private var §]=§:Number;
      
      private var §7S§:Number;
      
      private var §<Y§:Boolean = true;
      
      private var §>o§:Boolean = true;
      
      private var §1!N§:§;l§;
      
      private var §2w§:Number;
      
      public function §<g§(param1:String, param2:Number, param3:§=!>§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§5?§ = new Vector.<§'P§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§>!K§ = param3;
                  while(true)
                  {
                     this.§]=§ = 0;
                     addr122:
                     addr91:
                     while(true)
                     {
                        this.§7S§ = 0;
                        addr115:
                        while(!_loc5_)
                        {
                           this.§3F§ = param2;
                           continue loop0;
                        }
                        continue loop1;
                     }
                     loop7:
                     while(!(_loc5_ && param1))
                     {
                        this.§-!Y§ = new Sprite();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop7;
                           }
                           if(!(_loc6_ || this))
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              this.§>,§ = new Sprite();
                              loop9:
                              do
                              {
                                 this.§2w§ = param4;
                                 while(_loc6_)
                                 {
                                    this.§;!<§(param1,param4);
                                    if(_loc6_ || param1)
                                    {
                                       continue loop9;
                                    }
                                 }
                              }
                              while(_loc5_);
                              
                              if(_loc6_)
                              {
                                 return;
                              }
                              continue;
                           }
                           §§goto(addr122);
                           §§goto(addr115);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§"!_§ = new Sprite();
            §§goto(addr91);
         }
      }
      
      public function get §@H§() : Boolean
      {
         return this.§<Y§;
      }
      
      public function get §7J§() : Sprite
      {
         return this.§>,§;
      }
      
      public function get §9!6§() : Sprite
      {
         return this.§"!_§;
      }
      
      public function get §]X§() : Sprite
      {
         return this.§-!Y§;
      }
      
      protected function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;7§();
            loop0:
            while(true)
            {
               §§push(this.§"!_§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§"!_§);
                        addr129:
                        while(true)
                        {
                           §§pop().dispose();
                           addr130:
                           while(true)
                           {
                              this.§"!_§ = null;
                              addr105:
                              while(true)
                              {
                              }
                           }
                        }
                        addr56:
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        §§push(this.§>,§);
                        while(true)
                        {
                           §§pop().dispose();
                           do
                           {
                              this.§>,§ = null;
                           }
                           while(!_loc1_);
                           
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr93:
                                 while(!_loc2_)
                                 {
                                    §§push(this.§-!Y§);
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                this.§-!Y§ = null;
                                                addr81:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr100:
                                          }
                                          else
                                          {
                                             §§goto(addr105);
                                          }
                                          §§goto(addr48);
                                       }
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr54);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§-!Y§);
                     if(!(_loc2_ && this))
                     {
                        if(§§pop())
                        {
                           §§goto(addr93);
                        }
                        addr48:
                        addr19:
                        while(true)
                        {
                           §§push(this.§>,§);
                           if(!_loc2_)
                           {
                              if(!§§pop())
                              {
                                 break;
                                 addr54:
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop9;
                                 }
                                 §§goto(addr56);
                                 continue loop6;
                              }
                              continue loop9;
                           }
                           continue loop6;
                           §§goto(addr81);
                        }
                        return;
                     }
                     §§goto(addr97);
                     §§goto(addr105);
                  }
               }
               §§goto(addr129);
            }
         }
         §§goto(addr100);
      }
      
      public function §&5§() : Boolean
      {
         return this.§>o§;
      }
      
      public function §;!i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>o§);
            loop0:
            while(true)
            {
               if(§§pop() == param1)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  addr93:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§>o§ = param1;
                  continue loop0;
               }
               §§goto(addr55);
            }
            return;
         }
         addr55:
      }
      
      public function §+m§() : String
      {
         return this.§^!R§.§%`§;
      }
      
      private function §;7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §§push(this.§-!Y§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§"!_§);
                        if(_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(_loc1_ && this)
                              {
                                 break;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    break loop1;
                                    addr18:
                                 }
                                 while(this.§5?§.length <= 0)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       break;
                                    }
                                 }
                                 break;
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop1;
                              }
                              addr107:
                              continue;
                           }
                           addr94:
                           this.§"!_§.removeChildAt(0,true);
                           §§goto(addr107);
                        }
                        §§goto(addr94);
                     }
                     while(true)
                     {
                        §§goto(addr18);
                     }
                  }
                  continue;
               }
               §§push(this.§-!Y§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §0X§(param1:§1!3§, param2:String) : void
      {
      }
      
      private function §;!<§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§'!>§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§'P§ = null;
         if(_loc7_)
         {
            this.§^!R§ = §6!N§.§'!U§(param1);
            while(true)
            {
               if(this.§^!R§ == null)
               {
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §!6§.log("UNKNOWN LEVEL THEME! " + param1);
                     }
                     addr122:
                  }
                  loop1:
                  for(; !_loc8_; if(_loc8_ && _loc3_)
                  {
                     continue;
                  },this.§-!Y§.y = this.§3F§,§§goto(addr62))
                  {
                     §§push(§!!K§.§,]§);
                     if(_loc7_)
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     loop2:
                     while(true)
                     {
                        this.§^!R§ = §6!N§.§'!U§(param1);
                        addr106:
                        while(true)
                        {
                           while(!(_loc8_ && param1))
                           {
                              if(_loc7_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                              loop7:
                              while(_loc7_ || _loc3_)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.§>,§.y = this.§3F§;
                                    while(_loc7_)
                                    {
                                       this.§=H§();
                                       if(!(_loc8_ && param2))
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    this.§"!_§.y = this.§3F§;
                                    break loop7;
                                    §§goto(addr38);
                                 }
                              }
                           }
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  this.§0X§(this.§^!R§,param1);
                  §§goto(addr99);
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr122);
      }
      
      protected function §^!Z§(param1:§'!>§, param2:Sprite, param3:§=!>§, param4:Number) : §'P§
      {
         return new §'P§(param1,param2,param3,param4);
      }
      
      private function §=H§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ !'§ = null;
         if(_loc2_)
         {
            §§push(this.§^!R§);
            if(!_loc3_)
            {
               §§push(§§pop().§6!2§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this.§8!V§(this.§^!R§.§6!2§);
                        if(!_loc2_)
                        {
                        }
                        addr57:
                        §§push(this);
                        if(!_loc3_)
                        {
                           §§push(uint(0));
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§pop();
                                    addr79:
                                    §§push(uint(this.§^!R§.§%!M§));
                                 }
                              }
                           }
                           _loc1_ = §§pop().§4]§(§§pop());
                           if(!_loc3_)
                           {
                              _loc1_.y = 0;
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.§>,§.addChild(_loc1_);
                              }
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr57);
                  }
                  addr45:
                  §§push(this.§^!R§.§%!M§);
               }
               if(§§pop())
               {
                  §§goto(addr57);
               }
               addr112:
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr57);
      }
      
      protected function §4]§(param1:uint) : § !'§
      {
         return new § !'§(4096,4096,param1);
      }
      
      protected function §8!V§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§%[§.§`1§);
            if(_loc3_ || param1)
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().color = param1;
         }
         addr60:
         if(_loc3_ || param1)
         {
            §§push(§%[§.§`1§);
         }
      }
      
      public function §`?§(param1:String, param2:§=!>§ = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(!(_loc4_ && param2))
               {
                  this.§>!K§ = param2;
               }
               while(true)
               {
                  §§goto(addr66);
               }
               addr89:
            }
            while(true)
            {
               this.§;7§();
               §§goto(addr89);
            }
         }
         addr66:
         while(true)
         {
            §!6§.log("Switch background! NEW BACKGROUND NAME = " + param1);
            do
            {
               this.§;!<§(param1,this.§2w§);
            }
            while(_loc4_ && param2);
            
            if(_loc3_ || this)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §1L§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§'P§ = null;
         if(!(_loc6_ && param2))
         {
            if(param1 == this.§<Y§)
            {
               if(_loc7_ || this)
               {
                  return;
               }
            }
            this.§<Y§ = param1;
         }
         for each(_loc3_ in this.§5?§)
         {
            if(!_loc6_)
            {
               _loc3_.§1L§(param1);
            }
         }
      }
      
      public function §^r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§,!7§.§-!§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr91:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §,!7§.playSound(this.§^!R§.§>Z§,"CHANNEL_AMBIENT",999);
                        }
                        if(!_loc2_)
                        {
                           addr75:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr57:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §#!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §,!7§.§+!A§("CHANNEL_AMBIENT");
         }
      }
      
      public function §2J§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§"!_§);
               if(!(_loc3_ && param1))
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = this.§"!_§.getChildAt(param1);
                        if(!(_loc3_ && param1))
                        {
                           addr95:
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
                     addr78:
                     §§push(this.§-!Y§);
                     §§push(param1);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() - this.§"!_§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        addr72:
                        §§push(§§pop() - this.§"!_§.numChildren);
                     }
                     if(§§pop() < this.§-!Y§.numChildren)
                     {
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr78);
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            this.§]=§ = param1;
            while(true)
            {
               this.§7S§ = param2;
            }
            addr69:
         }
         loop1:
         for(; this.§5?§ != null; if(!(_loc5_ || this))
         {
            continue;
         },loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(_loc3_ < this.§5?§.length)
               {
                  this.§5?§[_loc3_].setSideScroll(this.§]=§,this.§7S§);
                  if(!_loc6_)
                  {
                     _loc3_++;
                     if(_loc5_)
                     {
                        if(false)
                        {
                           continue loop2;
                        }
                        continue;
                     }
                     §§goto(addr130);
                  }
                  break;
               }
               if(_loc5_)
               {
                  break loop1;
               }
               §§push(this.§>,§);
               if(!_loc6_)
               {
                  addr109:
                  §§push(this.§>,§.scaleY = 1 / §[V§.§+!>§);
                  if(_loc5_ || this)
                  {
                     §§pop().scaleX = §§pop();
                     if(!_loc6_)
                     {
                        addr169:
                        §§push(this.§>,§);
                        while(true)
                        {
                           §§push(§[V§.§]!^§);
                           addr171:
                           while(true)
                           {
                              §§push(-§§pop());
                              if(!_loc6_)
                              {
                                 §§push(1 / §[V§.§+!>§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr189:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                    }
                                 }
                                 addr188:
                              }
                              §§goto(addr189);
                           }
                        }
                        addr169:
                        addr130:
                     }
                     while(true)
                     {
                        §§push(this.§>,§);
                        if(!_loc6_)
                        {
                           §§push(this.§3F§);
                           if(_loc5_ || this)
                           {
                              §§push(this.§7S§);
                              if(!_loc6_)
                              {
                                 addr154:
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc6_ && param2))
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc5_)
                                       {
                                          break loop3;
                                       }
                                       continue;
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr154);
                        }
                        else
                        {
                           §§goto(addr169);
                        }
                     }
                     addr190:
                  }
                  §§goto(addr189);
               }
               §§goto(addr169);
               §§goto(addr169);
            }
            §§goto(addr132);
         })
         {
            if(_loc6_)
            {
               continue;
            }
            if(!_loc6_)
            {
               _loc3_ = 0;
               continue;
            }
            §§goto(addr69);
         }
         §§push(this.§>,§);
         if(_loc5_ || param2)
         {
            if(§§pop() != null)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr105);
               }
               §§goto(addr190);
            }
            addr132:
            return;
         }
         §§goto(addr109);
      }
      
      public function §0!-§() : String
      {
         return this.§^!R§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
