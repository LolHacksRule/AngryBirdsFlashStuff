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
         if(_loc2_ || §-!i§)
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
         if(_loc6_ || param1)
         {
            this.§7!"§ = new Vector.<§8!?§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§&!k§ = param3;
                  loop2:
                  while(_loc6_ || param1)
                  {
                     this.§]!j§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§&!§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§!!i§ = param2;
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break;
                                 addr94:
                              }
                              this.§>!E§ = new Sprite();
                              while(_loc6_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                              addr59:
                              if(_loc5_ && param2)
                              {
                                 continue;
                              }
                              this.§;m§(param1,param4);
                              addr76:
                              if(!_loc5_)
                              {
                                 continue loop3;
                              }
                              addr88:
                              while(true)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    if(!_loc5_)
                                    {
                                       §§goto(addr59);
                                    }
                                    else
                                    {
                                       §§goto(addr94);
                                    }
                                 }
                                 §§goto(addr82);
                              }
                              while(true)
                              {
                                 this.§%x§ = new Sprite();
                                 §§goto(addr82);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         addr82:
         addr43:
         while(true)
         {
            this.§4!b§ = param4;
            continue loop9;
         }
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
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§>!E§);
                        addr133:
                        while(true)
                        {
                           §§pop().dispose();
                           addr134:
                           while(_loc2_)
                           {
                              this.§>!E§ = null;
                              while(true)
                              {
                              }
                           }
                           continue loop0;
                        }
                        addr87:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        addr94:
                        loop3:
                        while(true)
                        {
                           §§push(this.§%x§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || this)
                                 {
                                    addr68:
                                    this.§%x§.dispose();
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop3;
                                       }
                                       continue;
                                    }
                                    addr116:
                                    while(true)
                                    {
                                       §§push(this.§3D§);
                                       addr118:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                          break loop4;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§3D§ = null;
                                    §§goto(addr78);
                                 }
                              }
                              return;
                           }
                           §§goto(addr68);
                           §§goto(addr94);
                        }
                        §§goto(addr124);
                        addr38:
                     }
                  }
                  while(true)
                  {
                     §§push(this.§3D§);
                     if(_loc2_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr116);
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr118);
                     §§goto(addr124);
                  }
               }
               §§goto(addr133);
            }
         }
         §§goto(addr116);
      }
      
      public function §,!2§() : Boolean
      {
         return this.§ !g§;
      }
      
      public function §!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§ !g§);
            loop0:
            for(; §§pop() != param1; §§push(param1),if(!(_loc2_ || _loc2_))
            {
               continue;
            },if(!§§pop())
            {
               addr75:
               while(true)
               {
                  this.§,P§();
                  addr77:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        addr84:
                     }
                     §§goto(addr79);
                  }
               }
               addr75:
            },this.§;m§(this.§>;§.mName,this.§4!b§),if(_loc2_)
            {
               if(_loc3_)
               {
                  §§goto(addr75);
               }
               if(_loc2_ || this)
               {
                  addr79:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  return;
               }
               break;
            },§§goto(addr77))
            {
               while(true)
               {
                  this.§ !g§ = param1;
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §&^§() : String
      {
         return this.§>;§.§8!_§;
      }
      
      private function §,P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §§push(this.§3D§);
            if(_loc1_ || this)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§>!E§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       if(this.§7!"§.length <= 0)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          this.§7!"§.pop().dispose();
                                       }
                                       addr78:
                                    }
                                    return;
                                 }
                                 break;
                              }
                              while(!_loc2_)
                              {
                                 §§goto(addr78);
                              }
                              continue;
                           }
                           §§push(this.§>!E§);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                     continue;
                     addr33:
                  }
                  while(true)
                  {
                     §§goto(addr33);
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
         if(!_loc8_)
         {
            this.§>;§ = §%E§.§8!G§(param1);
            loop0:
            while(true)
            {
               if(this.§>;§ == null)
               {
                  addr124:
                  while(true)
                  {
                     §§push(§<m§);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     addr146:
                     while(true)
                     {
                        §§push(§"!'§.§0D§);
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        addr118:
                        while(true)
                        {
                           this.§>;§ = §%E§.§8!G§(param1);
                           addr105:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr124:
               }
               while(true)
               {
                  this.§@!§(this.§>;§,param1);
                  continue loop0;
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr124);
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
         if(_loc3_ || _loc3_)
         {
            §§push(this.§>;§);
            if(!_loc2_)
            {
               §§push(§§pop().§+%§);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr42:
                        this.§`!l§(this.§>;§.§+%§);
                        if(!_loc2_)
                        {
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr63);
                  }
               }
               §§goto(addr59);
            }
            addr59:
            if(this.§>;§.§#r§)
            {
               addr63:
               §§push(this);
               if(_loc3_ || _loc3_)
               {
                  §§push(uint(0));
                  if(_loc3_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           addr100:
                           §§push(uint(this.§>;§.§#r§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     _loc1_.y = 0;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr123);
                  }
                  this.§%x§.addChild(_loc1_);
                  §§goto(addr123);
               }
               §§goto(addr100);
            }
            addr123:
            return;
         }
         §§goto(addr42);
      }
      
      protected function createGroundQuad(param1:uint) : § O§
      {
         return new § O§(4096,4096,param1);
      }
      
      protected function §`!l§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§<!?§.§,=§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr52:
                     §<!?§.§,=§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §&!$§(param1:String, param2:§6!I§ = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2)
            {
               while(true)
               {
                  this.§&!k§ = param2;
                  addr102:
                  while(true)
                  {
                  }
                  addr61:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr78:
               }
            }
            while(true)
            {
               this.§,P§();
               do
               {
                  §§push(§<m§);
                  §§push("Switch background! NEW BACKGROUND NAME = ");
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  do
                  {
                     this.§;m§(param1,this.§4!b§);
                  }
                  while(!(_loc4_ || param1));
                  
               }
               while(_loc3_ && param2);
               
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr61);
            }
            §§goto(addr78);
         }
         §§goto(addr102);
      }
      
      public function §'6§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§8!?§ = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 == this.§=!H§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
            else
            {
               this.§=!H§ = param1;
            }
         }
         for each(_loc3_ in this.§7!"§)
         {
            if(_loc6_ || param2)
            {
               _loc3_.§'6§(param1);
            }
         }
      }
      
      public function §3!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§-!Q§.§]a§("CHANNEL_AMBIENT"));
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
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           §-!Q§.§#3§(this.§>;§.§9E§,"CHANNEL_AMBIENT",999);
                        }
                        break;
                     }
                     return;
                     addr72:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr89:
         }
         while(true)
         {
            §§push(§-!Q§.§]a§("CHANNEL_AMBIENT"));
            if(_loc1_)
            {
               §§push(§§pop().§!!#§());
               if(_loc1_ || _loc2_)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr70:
                     §§push(!§§pop());
                     if(!_loc1_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr72);
               }
               §§goto(addr70);
            }
            else
            {
               §§goto(addr89);
            }
         }
      }
      
      public function §4!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!Q§.§^B§("CHANNEL_AMBIENT");
         }
      }
      
      public function §"Z§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(this.§>!E§);
               if(!(_loc4_ && this))
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr62:
                        _loc2_ = this.§>!E§.getChildAt(param1);
                        if(_loc3_)
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr118);
                     }
                     else
                     {
                        addr97:
                        §§push(this.§3D§);
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() - this.§>!E§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_ || param1)
                     {
                        addr83:
                        if(§§pop() - this.§>!E§.numChildren < this.§3D§.numChildren)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr83);
                  }
                  addr109:
                  if(_loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        addr118:
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
            §§goto(addr83);
         }
         §§goto(addr62);
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc5_ || _loc3_)
         {
            this.§]!j§ = param1;
            while(true)
            {
               this.§&!§ = param2;
            }
            addr74:
         }
         loop1:
         while(this.§7!"§ != null)
         {
            if(_loc5_)
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
                  while(true)
                  {
                     if(_loc3_ >= this.§7!"§.length)
                     {
                        break loop2;
                     }
                     this.§7!"§[_loc3_].setSideScroll(this.§]!j§,this.§&!§);
                     if(_loc6_ && param2)
                     {
                        break loop1;
                     }
                     _loc3_++;
                     if(_loc5_)
                     {
                        if(false)
                        {
                           break;
                        }
                        continue;
                     }
                     addr135:
                     addr194:
                     §§push(this.§%x§);
                     loop4:
                     while(true)
                     {
                        §§push(§%X§.§+!_§);
                        if(_loc5_)
                        {
                           §§push(-§§pop());
                           while(true)
                           {
                              §§push(1 / §%X§.§'!f§);
                              addr203:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           addr199:
                        }
                        addr204:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop4;
                        }
                     }
                  }
               }
               if(_loc5_)
               {
                  break;
               }
               addr105:
               §§push(this.§%x§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(this.§%x§.scaleY = 1 / §%X§.§'!f§);
                  if(_loc5_ || param1)
                  {
                     §§pop().scaleX = §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr135);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr188);
               }
               §§goto(addr150);
            }
            else
            {
               §§goto(addr74);
            }
         }
         §§push(this.§%x§);
         if(!_loc6_)
         {
            if(§§pop() != null)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr105);
               }
               §§goto(addr205);
            }
            §§goto(addr137);
         }
         §§goto(addr194);
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
