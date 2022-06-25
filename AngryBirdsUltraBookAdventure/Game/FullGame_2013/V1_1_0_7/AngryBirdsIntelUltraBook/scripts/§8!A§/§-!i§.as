package §8!A§
{
   import §"!i§.§"!'§;
   import §1!B§.§<m§;
   import §2@§.§%E§;
   import §2@§.§+!Y§;
   import §2@§.§1!Q§;
   import §2m§.§<!?§;
   import §=`§.§6!I§;
   import §[!b§.§,!W§;
   import §[!b§.§-!Q§;
   import §`!M§.§%X§;
   import §`g§.§ O§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §-!i§
   {
      
      public static const §>_§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>_§ = true;
         }
      }
      
      private var §&!k§:§6!I§;
      
      protected var §>;§:§+!Y§;
      
      protected var §7!"§:Vector.<§8!?§>;
      
      private var §>!E§:Sprite;
      
      private var §3D§:Sprite;
      
      private var §%x§:Sprite;
      
      private var §!!i§:Number;
      
      private var §]!j§:Number;
      
      private var §&!§:Number;
      
      private var §=!H§:Boolean = true;
      
      private var § !g§:Boolean = true;
      
      private var §]S§:§,!W§;
      
      private var §4!b§:Number;
      
      public function §-!i§(param1:String, param2:Number, param3:§6!I§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§7!"§ = new Vector.<§8!?§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§&!k§ = param3;
                  while(true)
                  {
                     this.§]!j§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§&!§ = 0;
                        addr130:
                        while(!_loc5_)
                        {
                           this.§!!i§ = param2;
                           loop5:
                           while(true)
                           {
                              this.§>!E§ = new Sprite();
                              while(true)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                                 addr45:
                                 if(!(_loc5_ && param1))
                                 {
                                    return;
                                    addr52:
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     loop8:
                     while(_loc6_ || param1)
                     {
                        this.§4!b§ = param4;
                        loop9:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              this.§;m§(param1,param4);
                              if(_loc6_)
                              {
                                 if(!(_loc6_ || param1))
                                 {
                                    continue loop8;
                                 }
                                 if(_loc6_)
                                 {
                                    §§goto(addr45);
                                 }
                                 §§goto(addr88);
                                 continue loop8;
                              }
                              continue loop9;
                           }
                           §§goto(addr52);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get §;Y§() : Boolean
      {
         return this.§=!H§;
      }
      
      public function get §!!u§() : Sprite
      {
         return this.§%x§;
      }
      
      public function get §8y§() : Sprite
      {
         return this.§>!E§;
      }
      
      public function get §[f§() : Sprite
      {
         return this.§3D§;
      }
      
      protected function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,P§();
            loop0:
            while(true)
            {
               §§push(this.§>!E§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§>!E§);
                        addr130:
                        while(true)
                        {
                           §§pop().dispose();
                           while(true)
                           {
                              this.§>!E§ = null;
                              addr114:
                              while(!_loc1_)
                              {
                              }
                           }
                        }
                     }
                     addr128:
                  }
                  while(true)
                  {
                     §§push(this.§3D§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§3D§);
                              addr108:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr109:
                                 addr89:
                                 while(true)
                                 {
                                    this.§3D§ = null;
                                    continue loop3;
                                 }
                                 addr89:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§%x§);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc1_)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr76:
                                          this.§%x§.dispose();
                                          do
                                          {
                                             this.§%x§ = null;
                                          }
                                          while(_loc1_);
                                          
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(!_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr128);
                                          }
                                          else
                                          {
                                             §§goto(addr82);
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr77);
                              }
                              break;
                           }
                           §§goto(addr76);
                           §§goto(addr89);
                        }
                        return;
                     }
                     §§goto(addr108);
                     §§goto(addr116);
                  }
               }
               §§goto(addr130);
            }
         }
         §§goto(addr89);
      }
      
      public function §,!2§() : Boolean
      {
         return this.§ !g§;
      }
      
      public function §!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§ !g§);
            loop0:
            for(; §§pop() != param1; while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     this.§;m§(this.§>;§.mName,this.§4!b§);
                     if(_loc3_ || _loc2_)
                     {
                        if(!(_loc3_ || _loc3_))
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           §§goto(addr25);
                        }
                        continue;
                     }
                     addr25:
                     return;
                     addr92:
                  }
                  break;
               }
               continue loop0;
            },if(_loc3_)
            {
            },§§goto(addr93))
            {
               while(true)
               {
                  this.§ !g§ = param1;
                  continue loop0;
               }
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
            }
            return;
         }
         this.§,P§();
         §§goto(addr92);
      }
      
      public function §&^§() : String
      {
         return this.§>;§.§8!_§;
      }
      
      private function §,P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §§push(this.§3D§);
            if(_loc2_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§>!E§);
                        if(!(_loc1_ && _loc1_))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              continue loop1;
                           }
                           §§push(this.§>!E§);
                        }
                        §§pop().removeChildAt(0,true);
                        addr97:
                     }
                     addr30:
                     return;
                  }
               }
               else
               {
                  §§push(this.§3D§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §@!§(param1:§+!Y§, param2:String) : void
      {
      }
      
      private function §;m§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§1!Q§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§8!?§ = null;
         if(!(_loc8_ && param2))
         {
            this.§>;§ = §%E§.§8!G§(param1);
            loop0:
            while(true)
            {
               if(this.§>;§ != null)
               {
                  while(true)
                  {
                     this.§@!§(this.§>;§,param1);
                     loop6:
                     while(true)
                     {
                        this.§>!E§.y = this.§!!i§;
                        addr80:
                        while(!_loc8_)
                        {
                           while(true)
                           {
                              this.§3D§.y = this.§!!i§;
                              continue loop6;
                           }
                        }
                        addr96:
                        while(_loc7_ || _loc3_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§>;§ = §%E§.§8!G§(param1);
                           §§goto(addr96);
                        }
                     }
                  }
                  addr83:
               }
               §§goto(addr129);
            }
         }
         §§goto(addr82);
      }
      
      protected function §4F§(param1:§1!Q§, param2:Sprite, param3:§6!I§, param4:Number) : §8!?§
      {
         return new §8!?§(param1,param2,param3,param4);
      }
      
      private function §<!Y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ O§ = null;
         if(_loc3_)
         {
            §§push(this.§>;§);
            if(!_loc2_)
            {
               §§push(§§pop().§+%§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this.§`!l§(this.§>;§.§+%§);
                        if(_loc3_)
                        {
                           §§goto(addr39);
                        }
                        §§goto(addr43);
                     }
                  }
               }
            }
            §§goto(addr39);
         }
         addr39:
         if(this.§>;§.§#r§)
         {
            addr43:
            §§push(this);
            if(!(_loc2_ && this))
            {
               §§push(uint(0));
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr79:
                        §§pop();
                        §§push(uint(this.§>;§.§#r§));
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.y = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§%x§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr79);
         }
         addr118:
      }
      
      protected function createGroundQuad(param1:uint) : § O§
      {
         return new § O§(4096,4096,param1);
      }
      
      protected function §`!l§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§<!?§.§,=§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().color = param1;
         }
         addr49:
         if(!(_loc3_ && param1))
         {
            §§push(§<!?§.§,=§);
         }
      }
      
      public function §&!$§(param1:String, param2:§6!I§ = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2)
            {
               if(_loc4_)
               {
                  this.§&!k§ = param2;
               }
               while(true)
               {
                  addr32:
                  if(_loc3_ && param2)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
               addr92:
            }
            while(true)
            {
               this.§,P§();
               while(true)
               {
                  §§push(§<m§);
                  §§push("Switch background! NEW BACKGROUND NAME = ");
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  loop3:
                  while(_loc4_ || _loc3_)
                  {
                     while(true)
                     {
                        this.§;m§(param1,this.§4!b§);
                        if(!_loc4_)
                        {
                           continue loop3;
                        }
                        §§goto(addr32);
                     }
                     §§goto(addr49);
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr80);
      }
      
      public function §'6§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§8!?§ = null;
         if(_loc7_)
         {
            if(param1 == this.§=!H§)
            {
               if(_loc7_)
               {
                  §§goto(addr38);
               }
            }
            else
            {
               this.§=!H§ = param1;
            }
            for each(_loc3_ in this.§7!"§)
            {
               if(!(_loc6_ && param2))
               {
                  _loc3_.§'6§(param1);
               }
            }
            return;
         }
         addr38:
      }
      
      public function §3!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§-!Q§.§]a§("CHANNEL_AMBIENT"));
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
                        if(!_loc1_)
                        {
                           §-!Q§.§#3§(this.§>;§.§9E§,"CHANNEL_AMBIENT",999);
                        }
                        if(_loc2_)
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
            addr90:
         }
         while(true)
         {
            §§push(§-!Q§.§]a§("CHANNEL_AMBIENT"));
            if(!(_loc1_ && this))
            {
               §§push(§§pop().§!!#§());
               if(_loc2_ || this)
               {
                  if(!(_loc1_ && this))
                  {
                     addr71:
                     §§push(!§§pop());
                     if(!_loc2_)
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
               §§goto(addr71);
            }
            else
            {
               §§goto(addr90);
            }
         }
      }
      
      public function §4!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §-!Q§.§^B§("CHANNEL_AMBIENT");
         }
      }
      
      public function §"Z§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§>!E§);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_ || this)
                     {
                        _loc2_ = this.§>!E§.getChildAt(param1);
                        if(_loc4_ || param1)
                        {
                           addr105:
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
                     addr88:
                     §§push(this.§3D§);
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() - this.§>!E§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        addr74:
                        if(§§pop() - this.§>!E§.numChildren < this.§3D§.numChildren)
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr74);
         }
         §§goto(addr88);
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || this)
         {
            this.§]!j§ = param1;
         }
         loop0:
         while(true)
         {
            this.§&!§ = param2;
            loop1:
            for(; this.§7!"§ != null; if(_loc5_ && param1)
            {
               continue;
            },loop2:
            while(true)
            {
               while(true)
               {
                  if(_loc3_ < this.§7!"§.length)
                  {
                     this.§7!"§[_loc3_].setSideScroll(this.§]!j§,this.§&!§);
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                     _loc3_++;
                     if(_loc5_ && param2)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     continue;
                  }
                  if(!(_loc5_ && param2))
                  {
                     break loop1;
                  }
                  §§push(this.§%x§);
                  if(!_loc5_)
                  {
                     addr120:
                     §§push(this.§%x§.scaleY = 1 / §%X§.§'!f§);
                     if(!_loc5_)
                     {
                        §§pop().scaleX = §§pop();
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop7:
                        while(true)
                        {
                           §§push(this.§%x§);
                           if(!(_loc5_ && this))
                           {
                              while(true)
                              {
                                 §§push(this.§!!i§);
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(this.§&!§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr177:
                                          §§push(§§pop() - §§pop());
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop().y = §§pop();
                                                if(!(_loc5_ && this))
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             addr194:
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                addr195:
                                                while(true)
                                                {
                                                   §§push(1 / §%X§.§'!f§);
                                                }
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          §§goto(addr195);
                                       }
                                       addr199:
                                    }
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       continue loop7;
                                       §§goto(addr199);
                                    }
                                    continue;
                                 }
                                 §§goto(addr177);
                              }
                              addr138:
                              return;
                              addr151:
                           }
                           else
                           {
                              addr192:
                           }
                           while(true)
                           {
                           }
                           §§goto(addr194);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr151);
               }
               addr136:
               §§goto(addr192);
            })
            {
               if(_loc6_)
               {
                  if(!_loc5_)
                  {
                     _loc3_ = 0;
                     continue;
                  }
                  continue loop0;
               }
            }
            §§push(this.§%x§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  if(_loc6_)
                  {
                     §§goto(addr116);
                  }
                  §§goto(addr136);
               }
               §§goto(addr138);
            }
            §§goto(addr120);
         }
      }
      
      public function § !y§() : String
      {
         return this.§>;§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
