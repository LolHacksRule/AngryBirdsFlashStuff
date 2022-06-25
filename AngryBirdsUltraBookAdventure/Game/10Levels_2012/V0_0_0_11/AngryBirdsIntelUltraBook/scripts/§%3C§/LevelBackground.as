package §<§
{
   import §"L§.LevelModel;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §<!j§.§%!-§;
   import §=?§.§7[§;
   import §=?§.SoundEngine;
   import §[m§.§#c§;
   import §[m§.LevelThemeBackground;
   import §[m§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §'G§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'G§ = true;
         }
      }
      
      private var §6! §:TextureManager;
      
      private var § !!§:LevelThemeBackground;
      
      private var §1!,§:Vector.<LevelBackgroundLayer>;
      
      private var § J§:Sprite;
      
      private var §%%§:Sprite;
      
      private var §"N§:Sprite;
      
      private var §44§:Number;
      
      private var §5v§:Number;
      
      private var §-!N§:Number;
      
      private var §6!]§:Boolean = true;
      
      private var §8!J§:Boolean = true;
      
      private var § !$§:§7[§;
      
      private var §5!4§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§1!,§ = new Vector.<LevelBackgroundLayer>();
            while(true)
            {
               super();
               addr151:
               while(true)
               {
                  this.§6! § = param3;
                  addr147:
                  while(true)
                  {
                     this.§5v§ = 0;
                  }
               }
            }
            addr160:
         }
         loop3:
         while(true)
         {
            this.§-!N§ = 0;
            loop4:
            while(true)
            {
               this.§44§ = param2;
               while(true)
               {
                  this.§ J§ = new Sprite();
                  continue loop3;
                  addr85:
                  if(!(_loc5_ || param3))
                  {
                     continue;
                  }
                  this.§5!4§ = param4;
                  loop9:
                  while(true)
                  {
                     if(!(_loc6_ && param1))
                     {
                        addr55:
                        if(!(_loc5_ || param3))
                        {
                           break;
                        }
                        continue;
                     }
                     addr78:
                     while(!(_loc6_ && param2))
                     {
                        §§goto(addr85);
                        continue loop9;
                     }
                     continue loop3;
                  }
                  while(true)
                  {
                     if(_loc6_)
                     {
                        continue loop4;
                     }
                     if(!_loc6_)
                     {
                        this.§"N§ = new Sprite();
                        §§goto(addr78);
                     }
                     else
                     {
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr147);
               }
            }
         }
      }
      
      public function get §99§() : Boolean
      {
         return this.§6!]§;
      }
      
      public function get §@![§() : Sprite
      {
         return this.§"N§;
      }
      
      public function get §4a§() : Sprite
      {
         return this.§ J§;
      }
      
      public function get §1!g§() : Sprite
      {
         return this.§%%§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§8A§();
         }
         while(true)
         {
            §§push(this.§ J§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§ J§);
                        addr148:
                        while(true)
                        {
                           §§pop().dispose();
                           addr150:
                           while(true)
                           {
                              this.§ J§ = null;
                              addr133:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr146:
                  }
                  while(true)
                  {
                     §§push(this.§%%§);
                     if(_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(this.§%%§);
                                 while(true)
                                 {
                                    §§pop().dispose();
                                 }
                                 addr109:
                              }
                              while(!(_loc2_ && this))
                              {
                                 this.§%%§ = null;
                                 loop6:
                                 while(true)
                                 {
                                    addr42:
                                    while(true)
                                    {
                                       §§push(this.§"N§);
                                       if(_loc1_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          if(_loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(this.§"N§);
                                                      while(true)
                                                      {
                                                         §§pop().dispose();
                                                         continue loop6;
                                                      }
                                                      addr72:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr146);
                                                   }
                                                }
                                                addr53:
                                             }
                                             return;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr72);
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr42);
                        }
                     }
                     §§goto(addr109);
                  }
               }
            }
            §§goto(addr148);
         }
      }
      
      public function §5>§() : Boolean
      {
         return this.§8!J§;
      }
      
      public function §,>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8!J§);
            loop0:
            for(; §§pop() != param1; if(_loc2_ && _loc3_)
            {
               continue;
            },§§goto(addr67),§§push(!§§pop()))
            {
               loop1:
               while(true)
               {
                  this.§8!J§ = param1;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        addr67:
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              this.§8A§();
                           }
                        }
                        else
                        {
                           this.§;^§(this.§ !!§.mName,this.§5!4§);
                           if(!(_loc2_ && this))
                           {
                              if(_loc3_)
                              {
                                 addr20:
                                 return;
                                 addr54:
                              }
                              break loop0;
                           }
                        }
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr20);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function § #§() : String
      {
         return this.§ !!§.§>!F§;
      }
      
      private function §8A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§%%§);
            if(_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§ J§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(this.§1!,§.length <= 0)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§1!,§.pop().dispose();
                                    }
                                    addr81:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 addr98:
                                 continue;
                              }
                              §§goto(addr81);
                           }
                           else
                           {
                              addr94:
                              this.§ J§.removeChildAt(0,true);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr94);
                     }
                  }
               }
               else
               {
                  §§push(this.§%%§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §;^§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§#c§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         if(!_loc7_)
         {
            this.§ !!§ = LevelThemeBackgroundManager.§]!0§(param1);
            loop0:
            while(true)
            {
               if(this.§ !!§ == null)
               {
                  addr124:
                  while(true)
                  {
                     §§push(Log);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(_loc8_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     loop7:
                     while(true)
                     {
                        §§push(LevelModel.§-!Q§);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        addr118:
                        while(true)
                        {
                           this.§ !!§ = LevelThemeBackgroundManager.§]!0§(param1);
                           addr102:
                           while(_loc8_)
                           {
                           }
                           continue loop7;
                        }
                     }
                  }
                  addr124:
               }
               while(true)
               {
                  this.§ J§.y = this.§44§;
                  loop2:
                  while(_loc8_)
                  {
                     this.§%%§.y = this.§44§;
                     loop3:
                     while(true)
                     {
                        addr58:
                        while(true)
                        {
                           this.§"N§.y = this.§44§;
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr124);
      }
      
      private function §+@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3x§ = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§ !!§);
            if(!_loc2_)
            {
               §§push(§§pop().§52§);
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this.§ !R§(this.§ !!§.§52§);
                           addr45:
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr73);
                        }
                     }
                  }
               }
               §§goto(addr68);
            }
            addr68:
            if(this.§ !!§.§ V§)
            {
               addr73:
               §§push(this);
               if(!_loc2_)
               {
                  §§push(uint(0));
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           addr101:
                           §§push(uint(this.§ !!§.§ V§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(_loc3_)
                  {
                     _loc1_.y = 0;
                     if(_loc3_)
                     {
                        this.§"N§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr101);
            }
            addr120:
            return;
         }
         §§goto(addr45);
      }
      
      protected function createGroundQuad(param1:uint) : §3x§
      {
         return new §3x§(4096,4096,param1);
      }
      
      private function § !R§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Starling.§!!F§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr46:
                     Starling.§!!F§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function § ![§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8A§();
            while(true)
            {
               §§push(Log);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               loop1:
               while(_loc3_ || _loc2_)
               {
                  while(true)
                  {
                     this.§;^§(param1,this.§5!4§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §^!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LevelBackgroundLayer = null;
         if(_loc7_ || _loc3_)
         {
            if(param1 == this.§6!]§)
            {
               if(_loc7_ || this)
               {
                  return;
               }
            }
            else
            {
               addr51:
               this.§6!]§ = param1;
            }
            for each(_loc3_ in this.§1!,§)
            {
               if(!(_loc6_ && param2))
               {
                  _loc3_.§^!Y§(param1);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §5T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(SoundEngine.§!_§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!_loc1_)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc1_ && _loc1_))
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
                              if(_loc2_)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 SoundEngine.§9!X§(this.§ !!§.§?!R§,"CHANNEL_AMBIENT",999);
                              }
                              break;
                           }
                           return;
                           addr66:
                        }
                     }
                     addr39:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§goto(addr66);
                        }
                        else
                        {
                           addr117:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr117:
                        }
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr117);
            }
         }
         §§goto(addr78);
      }
      
      public function §"d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            SoundEngine.§'!B§("CHANNEL_AMBIENT");
         }
      }
      
      public function §;!c§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(this.§ J§);
               if(_loc4_ || this)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = this.§ J§.getChildAt(param1);
                        if(_loc4_)
                        {
                           addr110:
                           if(_loc2_)
                           {
                              if(_loc4_ || param1)
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
                        return;
                     }
                     addr83:
                     §§push(this.§%%§);
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - this.§ J§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr77:
                        §§push(§§pop() - this.§ J§.numChildren);
                     }
                     if(§§pop() < this.§%%§.numChildren)
                     {
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr77);
         }
         §§goto(addr83);
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc6_)
         {
            this.§5v§ = param1;
            loop0:
            while(true)
            {
               this.§-!N§ = param2;
               loop1:
               while(this.§1!,§ != null)
               {
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  addr84:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        §§push(_loc3_);
                        while(true)
                        {
                           if(§§pop() >= this.§1!,§.length)
                           {
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                              return;
                           }
                           addr196:
                           this.§1!,§[_loc3_].setSideScroll(this.§5v§,this.§-!N§);
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc5_ && param1)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    if(false)
                                    {
                                       break loop9;
                                    }
                                    continue loop9;
                                 }
                                 continue;
                              }
                              addr217:
                              loop6:
                              while(true)
                              {
                                 §§push(this.§"N§);
                                 if(!_loc5_)
                                 {
                                    §§push(this.§44§);
                                    if(_loc6_ || param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(this.§-!N§);
                                          if(!_loc5_)
                                          {
                                             addr171:
                                             §§push(§§pop() - §§pop());
                                             if(_loc6_ || this)
                                             {
                                                §§pop().y = §§pop();
                                                if(!(_loc5_ && param2))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§push(1 / §%!-§.§?!I§);
                                             }
                                             addr210:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop6;
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 else
                                 {
                                    addr199:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§%!-§.§^6§);
                                       if(!(_loc5_ && param2))
                                       {
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                          addr209:
                                       }
                                    }
                                    addr199:
                                 }
                                 §§goto(addr210);
                              }
                           }
                        }
                     }
                  }
               }
               §§push(this.§"N§);
               if(_loc6_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc6_)
                     {
                        §§push(this.§"N§);
                        if(!_loc5_)
                        {
                           §§push(this.§"N§.scaleY = 1 / §%!-§.§?!I§);
                           if(_loc6_ || this)
                           {
                              §§pop().scaleX = §§pop();
                              if(_loc6_)
                              {
                                 §§goto(addr199);
                                 §§push(this.§"N§);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr196);
               }
               §§goto(addr199);
            }
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         _loc3_ = §§pop();
         §§goto(addr84);
      }
      
      public function §=z§() : String
      {
         return this.§ !!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
