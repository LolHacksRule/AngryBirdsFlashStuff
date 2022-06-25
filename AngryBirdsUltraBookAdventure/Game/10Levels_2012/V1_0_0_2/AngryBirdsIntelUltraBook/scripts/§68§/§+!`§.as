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
         if(!(_loc2_ && _loc2_))
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
         if(!(_loc5_ && param2))
         {
            this.§3!>§ = new Vector.<§7L§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§;!t§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§^S§ = 0;
                     while(true)
                     {
                        this.§#q§ = 0;
                        loop4:
                        while(_loc6_)
                        {
                           this.§^!X§ = param2;
                           loop5:
                           while(_loc6_)
                           {
                              this.§+§ = new Sprite();
                              loop6:
                              while(_loc6_)
                              {
                                 this.§=!6§ = new Sprite();
                                 while(!_loc5_)
                                 {
                                    this.§+!%§ = new Sprite();
                                    loop8:
                                    while(!_loc5_)
                                    {
                                       this.§-!m§ = param4;
                                       while(_loc6_)
                                       {
                                          this.§4c§(param1,param4);
                                          if(!_loc5_)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                if(_loc6_ || param3)
                                                {
                                                   if(_loc5_ && param1)
                                                   {
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                                continue loop5;
                                             }
                                             continue loop8;
                                             continue loop8;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
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
         if(_loc2_ || _loc1_)
         {
            this.§9H§();
            while(true)
            {
               §§push(this.§+§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     addr123:
                     while(true)
                     {
                        §§push(this.§+§);
                        addr125:
                        while(true)
                        {
                           §§pop().dispose();
                           addr126:
                           while(true)
                           {
                              this.§+§ = null;
                              addr116:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr123:
                  }
                  while(true)
                  {
                     §§push(this.§=!6§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr110:
                              this.§=!6§.dispose();
                           }
                           while(true)
                           {
                              this.§=!6§ = null;
                              addr80:
                              while(!_loc1_)
                              {
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§+!%§);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§push(this.§+!%§);
                                          continue;
                                       }
                                       §§goto(addr123);
                                    }
                                    else
                                    {
                                       §§goto(addr80);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              break;
                           }
                           §§goto(addr74);
                        }
                        return;
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr123);
      }
      
      public function §]!&§() : Boolean
      {
         return this.§>L§;
      }
      
      public function §2!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§>L§);
            loop0:
            while(true)
            {
               if(§§pop() == param1)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr93:
               }
               while(true)
               {
                  this.§>L§ = param1;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr93);
                     addr26:
                     this.§4c§(this.§[!>§.mName,this.§-!m§);
                     if(_loc2_ && _loc2_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        §§goto(addr20);
                     }
                  }
               }
            }
            return;
         }
         addr20:
      }
      
      public function §`!T§() : String
      {
         return this.§[!>§.§@-§;
      }
      
      private function §9H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §§push(this.§=!6§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop().numChildren <= 0)
               {
                  while(_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§+§);
                        if(!_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    if(this.§3!>§.length <= 0)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§3!>§.pop().dispose();
                                    }
                                    addr68:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr68);
                           }
                           else
                           {
                              §§push(this.§+§);
                           }
                        }
                        §§pop().removeChildAt(0,true);
                     }
                     if(_loc1_)
                     {
                        return;
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§,!-§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§7L§ = null;
         if(!(_loc7_ && param1))
         {
            this.§[!>§ = § !P§.§^!'§(param1);
            loop0:
            while(true)
            {
               if(this.§[!>§ == null)
               {
                  continue;
               }
               while(true)
               {
                  this.§+§.y = this.§^!X§;
                  loop3:
                  while(!_loc7_)
                  {
                     this.§=!6§.y = this.§^!X§;
                     while(true)
                     {
                        if(!(_loc7_ && param2))
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        §§push(§=+§.§'!M§);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        addr106:
                        addr108:
                        while(!_loc8_)
                        {
                           continue loop0;
                        }
                        this.§[!>§ = § !P§.§^!'§(param1);
                        break loop3;
                     }
                  }
                  while(!(_loc8_ || param2))
                  {
                     §§goto(addr106);
                     §§goto(addr108);
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      private function §4!r§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%!g§ = null;
         if(_loc3_ || this)
         {
            §§push(this.§[!>§);
            if(!_loc2_)
            {
               §§push(§§pop().§%s§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§3!d§(this.§[!>§.§%s§);
                        if(_loc3_ || _loc2_)
                        {
                        }
                        addr68:
                        §§push(this);
                        if(!_loc2_)
                        {
                           §§push(uint(0));
                           if(_loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr84:
                                    §§pop();
                                    §§push(uint(this.§[!>§.§`!A§));
                                 }
                              }
                              _loc1_ = §§pop().createGroundQuad(§§pop());
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.y = 0;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.§+!%§.addChild(_loc1_);
                                 }
                              }
                              §§goto(addr123);
                           }
                        }
                        §§goto(addr84);
                     }
                  }
                  addr66:
                  §§push(this.§[!>§.§`!A§);
               }
               if(§§pop())
               {
                  §§goto(addr68);
               }
               addr123:
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr68);
      }
      
      protected function createGroundQuad(param1:uint) : §%!g§
      {
         return new §%!g§(4096,4096,param1);
      }
      
      private function §3!d§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§^b§.§9E§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr47:
                     §^b§.§9E§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function §4!t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9H§();
            do
            {
               §§push(§!>§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               do
               {
                  this.§4c§(param1,this.§-!m§);
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function §"$§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§7L§ = null;
         if(!_loc6_)
         {
            if(param1 == this.§6N§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         this.§6N§ = param1;
         for each(_loc3_ in this.§3!>§)
         {
            if(_loc7_)
            {
               _loc3_.§"$§(param1);
            }
         }
      }
      
      public function §#!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§ !Q§.§5s§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr87:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr89:
                  }
                  else
                  {
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 § !Q§.playSound(this.§[!>§.§-r§,"CHANNEL_AMBIENT",999);
                                 addr81:
                              }
                              §§goto(addr81);
                           }
                           addr25:
                           return;
                        }
                     }
                     addr68:
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §>G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            § !Q§.§9!t§("CHANNEL_AMBIENT");
         }
      }
      
      public function §%4§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(this.§+§);
               if(!_loc4_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr32);
                     }
                     else
                     {
                        addr62:
                        §§push(this.§=!6§);
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - this.§+§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr56:
                        §§push(§§pop() - this.§+§.numChildren);
                     }
                     if(§§pop() < this.§=!6§.numChildren)
                     {
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr56);
         }
         addr32:
         _loc2_ = this.§+§.getChildAt(param1);
         if(_loc3_)
         {
            addr84:
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.visible);
                  if(_loc3_ || this)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
               }
            }
         }
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            this.§^S§ = param1;
            loop0:
            while(true)
            {
               this.§#q§ = param2;
               while(this.§3!>§ != null)
               {
                  if(!(_loc5_ || param2))
                  {
                     continue loop0;
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               addr102:
               §§push(this.§+!%§);
               if(!_loc6_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc5_)
                     {
                        addr110:
                        §§push(this.§+!%§);
                        if(_loc5_)
                        {
                           §§push(this.§+!%§.scaleY = 1 / §#C§.§-!k§);
                           if(_loc5_)
                           {
                              §§pop().scaleX = §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr191:
                                 §§push(this.§+!%§);
                                 while(true)
                                 {
                                    §§push(§#C§.§]!J§);
                                    addr193:
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§+!%§);
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          break;
                                       }
                                       §§push(this.§^!X§);
                                       if(_loc5_)
                                       {
                                          §§push(this.§#q§);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr174:
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().y = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         addr137:
                                                         return;
                                                         addr188:
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr193);
                                                }
                                                while(true)
                                                {
                                                   §§push(1 / §#C§.§-!k§);
                                                   addr198:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                addr194:
                                             }
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop9;
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                                 addr191:
                                 addr135:
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr137);
               }
               §§goto(addr191);
            }
         }
         while(true)
         {
            _loc3_ = 0;
            §§goto(addr68);
         }
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
