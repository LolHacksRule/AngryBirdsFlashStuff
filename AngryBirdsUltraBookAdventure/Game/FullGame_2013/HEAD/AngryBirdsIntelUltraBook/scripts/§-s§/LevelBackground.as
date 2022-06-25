package §-s§
{
   import §!!0§.§?!j§;
   import §!!0§.SoundEngine;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   import §5u§.§[!,§;
   import §7!>§.Starling;
   import §<u§.Log;
   import §>!_§.LevelModel;
   import §>=§.§"_§;
   import §>=§.LevelThemeBackground;
   import §>=§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §`!,§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §`!,§ = true;
         }
      }
      
      private var §7!`§:TextureManager;
      
      private var §#@§:LevelThemeBackground;
      
      private var §'!1§:Vector.<LevelBackgroundLayer>;
      
      private var §4!§:Sprite;
      
      private var §&6§:Sprite;
      
      private var §2!O§:Sprite;
      
      private var §"k§:Number;
      
      private var §12§:Number;
      
      private var §='§:Number;
      
      private var §1T§:Boolean = true;
      
      private var §#r§:Boolean = true;
      
      private var § 0§:§?!j§;
      
      private var §<!_§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§'!1§ = new Vector.<LevelBackgroundLayer>();
            while(true)
            {
               super();
               addr146:
               while(true)
               {
                  this.§7!`§ = param3;
               }
            }
            addr155:
         }
         loop2:
         while(true)
         {
            this.§12§ = 0;
            loop3:
            while(true)
            {
               if(!_loc6_)
               {
                  this.§='§ = 0;
                  loop4:
                  for(; !_loc6_; while(_loc5_ || param2)
                  {
                     this.§&6§ = new Sprite();
                     §§goto(addr91);
                     §§goto(addr78);
                  })
                  {
                     this.§"k§ = param2;
                     while(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           this.§4!§ = new Sprite();
                           continue loop4;
                        }
                        continue loop2;
                        loop9:
                        while(!(_loc6_ && this))
                        {
                           this.§2K§(param1,param4);
                           if(_loc5_ || param3)
                           {
                              if(!_loc6_)
                              {
                                 return;
                              }
                              loop8:
                              while(true)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    addr78:
                                    if(!(_loc5_ || this))
                                    {
                                       break;
                                    }
                                    this.§<!_§ = param4;
                                    continue loop9;
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    this.§2!O§ = new Sprite();
                                    continue loop8;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                     continue loop3;
                  }
               }
               else
               {
                  §§goto(addr155);
               }
               §§goto(addr146);
            }
         }
      }
      
      public function get §2d§() : Boolean
      {
         return this.§1T§;
      }
      
      public function get §1!W§() : Sprite
      {
         return this.§2!O§;
      }
      
      public function get §3!I§() : Sprite
      {
         return this.§4!§;
      }
      
      public function get §`!d§() : Sprite
      {
         return this.§&6§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"a§();
         }
         loop0:
         while(true)
         {
            §§push(this.§4!§);
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§&6§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§&6§);
                                    addr119:
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       while(true)
                                       {
                                          this.§&6§ = null;
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§2!O§);
                                                   if(_loc1_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   addr86:
                                                   addr88:
                                                   §§pop().dispose();
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!(_loc2_ && this))
                                                      {
                                                         continue;
                                                      }
                                                      addr156:
                                                      while(true)
                                                      {
                                                         §§push(this.§4!§);
                                                         addr158:
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            break loop6;
                                                         }
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                                addr46:
                                             }
                                             while(true)
                                             {
                                                this.§4!§ = null;
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr46);
                           }
                        }
                        §§goto(addr119);
                     }
                     addr110:
                  }
                  §§goto(addr156);
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr86);
                        §§push(this.§2!O§);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr24);
               }
            }
            §§goto(addr158);
         }
      }
      
      public function §,N§() : Boolean
      {
         return this.§#r§;
      }
      
      public function §#!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§#r§);
            loop0:
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
                     addr93:
                     loop3:
                     while(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           addr82:
                           if(!§§pop())
                           {
                              this.§2K§(this.§#@§.mName,this.§<!_§);
                              if(!_loc2_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr25);
                                 }
                                 addr83:
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              addr25:
                              return;
                              addr88:
                           }
                           §§goto(addr83);
                        }
                        this.§"a§();
                        §§goto(addr88);
                     }
                  }
               }
               while(true)
               {
                  this.§#r§ = param1;
                  §§goto(addr93);
               }
            }
            return;
         }
         §§goto(addr100);
      }
      
      public function §`![§() : String
      {
         return this.§#@§.§;-§;
      }
      
      private function §"a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§&6§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§4!§);
                        if(_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    if(this.§'!1§.length <= 0)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§'!1§.pop().dispose();
                                    }
                                    addr70:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 addr102:
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr70);
                           }
                           else
                           {
                              addr98:
                              this.§4!§.removeChildAt(0,true);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr98);
                     }
                     continue loop0;
                  }
               }
               else
               {
                  §§push(this.§&6§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §2K§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§"_§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         if(_loc8_)
         {
            this.§#@§ = LevelThemeBackgroundManager.§#!W§(param1);
         }
         loop0:
         while(true)
         {
            if(this.§#@§ == null)
            {
               loop1:
               while(true)
               {
                  §§push(Log);
                  §§push("UNKNOWN LEVEL THEME! ");
                  if(_loc8_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(LevelModel.§9J§);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     loop3:
                     while(true)
                     {
                        this.§#@§ = LevelThemeBackgroundManager.§#!W§(param1);
                        while(_loc8_)
                        {
                           loop6:
                           while(_loc8_ || _loc3_)
                           {
                              if(!_loc8_)
                              {
                                 continue loop1;
                              }
                              this.§&6§.y = this.§"k§;
                              while(true)
                              {
                                 addr56:
                                 addr40:
                                 while(true)
                                 {
                                    this.§2!O§.y = this.§"k§;
                                    addr62:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            while(true)
            {
               this.§4!§.y = this.§"k§;
               §§goto(addr85);
            }
         }
      }
      
      private function §%Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6!Y§ = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§#@§);
            if(!_loc2_)
            {
               §§push(§§pop().§!P§);
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr40:
                           this.§3P§(this.§#@§.§!P§);
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr68);
                        }
                     }
                  }
               }
               §§goto(addr63);
            }
            addr63:
            if(this.§#@§.§%9§)
            {
               addr68:
               §§push(this);
               if(_loc3_ || _loc1_)
               {
                  §§push(uint(0));
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           addr101:
                           §§push(uint(this.§#@§.§%9§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(!_loc2_)
                  {
                     _loc1_.y = 0;
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr120);
                  }
                  this.§2!O§.addChild(_loc1_);
                  §§goto(addr120);
               }
               §§goto(addr101);
            }
            addr120:
            return;
         }
         §§goto(addr40);
      }
      
      protected function createGroundQuad(param1:uint) : §6!Y§
      {
         return new §6!Y§(4096,4096,param1);
      }
      
      private function §3P§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Starling.§7!+§);
            if(!_loc2_)
            {
               if(§§pop())
               {
               }
               §§goto(addr48);
            }
            §§pop().color = param1;
         }
         addr48:
         if(_loc3_ || _loc3_)
         {
            §§push(Starling.§7!+§);
         }
      }
      
      public function §%w§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"a§();
            while(true)
            {
               §§push(Log);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc2_ || this)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§2K§(param1,this.§<!_§);
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §^!D§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LevelBackgroundLayer = null;
         if(_loc6_ || this)
         {
            if(param1 == this.§1T§)
            {
               if(_loc6_ || param1)
               {
                  return;
               }
            }
            else
            {
               addr50:
               this.§1T§ = param1;
            }
            for each(_loc3_ in this.§'!1§)
            {
               if(_loc6_ || _loc3_)
               {
                  _loc3_.§^!D§(param1);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §8a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(SoundEngine.§'!'§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr104:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           addr68:
                           while(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 SoundEngine.§-!h§(this.§#@§.§ a§,"CHANNEL_AMBIENT",999);
                              }
                              break;
                           }
                           return;
                           addr66:
                        }
                        addr67:
                     }
                  }
                  addr117:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §^&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            SoundEngine.§]!&§("CHANNEL_AMBIENT");
         }
      }
      
      public function §2H§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(this.§4!§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr63);
                     }
                     else
                     {
                        addr88:
                        §§push(this.§&6§);
                        §§push(param1);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() - this.§4!§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || this)
                     {
                        addr84:
                        if(§§pop() - this.§4!§.numChildren < this.§&6§.numChildren)
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr84);
         }
         addr63:
         _loc2_ = this.§4!§.getChildAt(param1);
         if(!_loc3_)
         {
            addr115:
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
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
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.§12§ = param1;
            while(true)
            {
               this.§='§ = param2;
               addr84:
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§push(0);
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               addr96:
               if(_loc6_ && param1)
               {
                  for(; this.§'!1§ != null; §§goto(addr96))
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr84);
                  }
                  addr135:
                  §§push(this.§2!O§);
                  if(_loc5_)
                  {
                     if(§§pop() != null)
                     {
                        if(_loc5_)
                        {
                           §§push(this.§2!O§);
                           if(!(_loc6_ && param2))
                           {
                              §§push(this.§2!O§.scaleY = 1 / §[!,§.§ !7§);
                              if(!_loc6_)
                              {
                                 §§pop().scaleX = §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(this.§2!O§);
                                    loop13:
                                    while(true)
                                    {
                                       §§push(§[!,§.§[!^§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(-§§pop());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(1 / §[!,§.§ !7§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§2!O§);
                                                      if(!_loc5_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§"k§);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§='§);
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr220:
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr220);
                  addr118:
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        if(§§pop() >= this.§'!1§.length)
                        {
                           break loop3;
                        }
                        this.§'!1§[_loc3_].setSideScroll(this.§12§,this.§='§);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc5_ || param2))
                              {
                                 continue;
                              }
                           }
                           §§push(int(§§pop()));
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr135);
                     }
                     _loc3_ = §§pop();
                     if(!(_loc6_ && _loc3_))
                     {
                        if(false)
                        {
                           continue loop2;
                        }
                        continue;
                     }
                     §§goto(addr217);
                  }
                  if(!(_loc6_ && param2))
                  {
                     §§goto(addr135);
                  }
                  addr217:
                  return;
               }
            }
         }
         §§goto(addr118);
      }
      
      public function §>6§() : String
      {
         return this.§#@§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
