package §"[§
{
   import §"$§.Starling;
   import §#!X§.LevelModel;
   import §#y§.§0!D§;
   import §'N§.Log;
   import §1!&§.§!!9§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!j§.§%[§;
   import §3!j§.SoundEngine;
   import §8!?§.TextureManager;
   import §[a§.§#d§;
   import §[a§.LevelThemeBackground;
   import §[a§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §[!j§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §[!j§ = true;
         }
      }
      
      private var §`_§:TextureManager;
      
      private var §%&§:LevelThemeBackground;
      
      private var §<!3§:Vector.<LevelBackgroundLayer>;
      
      private var §@M§:Sprite;
      
      private var § j§:Sprite;
      
      private var §7!<§:Sprite;
      
      private var §%!>§:Number;
      
      private var §`0§:Number;
      
      private var §!!,§:Number;
      
      private var §`-§:Boolean = true;
      
      private var §`2§:Boolean = true;
      
      private var §]!E§:§%[§;
      
      private var §0!`§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§<!3§ = new Vector.<LevelBackgroundLayer>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§`_§ = param3;
                  while(true)
                  {
                     this.§`0§ = 0;
                     while(_loc5_)
                     {
                        this.§!!,§ = 0;
                        while(_loc5_ || param1)
                        {
                           this.§%!>§ = param2;
                           while(_loc5_ || param2)
                           {
                              this.§@M§ = new Sprite();
                              while(true)
                              {
                                 this.§ j§ = new Sprite();
                                 continue loop1;
                                 addr43:
                                 if(!(_loc6_ && param1))
                                 {
                                    return;
                                 }
                              }
                              if(_loc5_ || this)
                              {
                                 this.§0!`§ = param4;
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§7!<§ = new Sprite();
            §§goto(addr68);
         }
      }
      
      public function get §<$§() : Boolean
      {
         return this.§`-§;
      }
      
      public function get §0I§() : Sprite
      {
         return this.§7!<§;
      }
      
      public function get §+!I§() : Sprite
      {
         return this.§@M§;
      }
      
      public function get § -§() : Sprite
      {
         return this.§ j§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8S§();
            loop0:
            while(true)
            {
               §§push(this.§@M§);
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§ j§);
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
                                       §§push(this.§ j§);
                                       addr102:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                          addr114:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             this.§ j§ = null;
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr100:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§7!<§);
                                    if(_loc1_ || this)
                                    {
                                       continue loop4;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       while(_loc1_)
                                       {
                                          this.§7!<§ = null;
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue;
                                          }
                                          addr34:
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   break loop6;
                                                }
                                                addr129:
                                                while(true)
                                                {
                                                   §§push(this.§@M§);
                                                   addr131:
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(this.§7!<§);
                                                      continue loop8;
                                                   }
                                                   §§goto(addr100);
                                                }
                                                break;
                                                §§goto(addr34);
                                             }
                                             §§goto(addr114);
                                             addr72:
                                          }
                                          §§goto(addr92);
                                       }
                                       addr121:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr19:
                                 return;
                              }
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr92);
      }
      
      public function §=m§() : Boolean
      {
         return this.§`2§;
      }
      
      public function §@!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`2§);
            loop0:
            while(true)
            {
               if(§§pop() == param1)
               {
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr107:
               }
               while(true)
               {
                  this.§`2§ = param1;
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_)
                           {
                              addr86:
                              this.§8S§();
                              break;
                           }
                           §§goto(addr107);
                        }
                        break;
                     }
                     this.§>k§(this.§%&§.mName,this.§0!`§);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr19);
                     }
                  }
                  addr19:
                  return;
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function §[!O§() : String
      {
         return this.§%&§.§9j§;
      }
      
      private function §8S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§ j§);
            if(_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  do
                  {
                     while(true)
                     {
                        §§push(this.§@M§);
                        if(!(_loc2_ && this))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!(_loc1_ || _loc1_))
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 while(this.§<!3§.length <= 0)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                 }
                                 break;
                                 continue loop0;
                                 addr17:
                              }
                              addr113:
                              continue;
                           }
                           addr109:
                           this.§@M§.removeChildAt(0,true);
                           §§goto(addr113);
                        }
                        §§goto(addr109);
                     }
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        §§goto(addr17);
                     }
                  }
                  while(_loc2_ && _loc1_);
                  
                  return;
               }
               §§push(this.§ j§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §>k§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§#d§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         if(!_loc8_)
         {
            this.§%&§ = LevelThemeBackgroundManager.§"!f§(param1);
         }
         loop0:
         while(true)
         {
            if(this.§%&§ == null)
            {
               continue;
            }
            loop5:
            while(true)
            {
               this.§@M§.y = this.§%!>§;
               addr74:
               loop6:
               while(_loc7_ || _loc3_)
               {
                  this.§ j§.y = this.§%!>§;
                  while(_loc7_)
                  {
                     loop8:
                     while(true)
                     {
                        this.§7!<§.y = this.§%!>§;
                        while(_loc7_)
                        {
                           addr51:
                           if(_loc7_ || param1)
                           {
                              this.§`+§();
                              if(_loc7_ || param1)
                              {
                                 continue loop8;
                              }
                              continue;
                           }
                           addr127:
                           while(true)
                           {
                              §§push(LevelModel.§!Z§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                              }
                              param1 = §§pop();
                              break loop6;
                              §§goto(addr51);
                           }
                        }
                        continue loop6;
                     }
                  }
                  while(_loc7_ || this)
                  {
                     continue loop5;
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§%&§ = LevelThemeBackgroundManager.§"!f§(param1);
                  §§goto(addr89);
                  §§goto(addr74);
               }
            }
         }
      }
      
      private function §`+§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§!!9§ = null;
         if(!(_loc2_ && this))
         {
            §§push(this.§%&§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop().§2U§);
               if(_loc3_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr70:
                           this.§#!O§(this.§%&§.§2U§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr83);
                           }
                        }
                        §§goto(addr88);
                     }
                  }
               }
               §§goto(addr83);
            }
            addr83:
            if(this.§%&§.§0#§)
            {
               addr88:
               §§push(this);
               if(_loc3_ || this)
               {
                  §§push(uint(0));
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc1_)
                        {
                           §§pop();
                           addr121:
                           §§push(uint(this.§%&§.§0#§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.y = 0;
                     if(!_loc2_)
                     {
                        this.§7!<§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr121);
            }
            addr145:
            return;
         }
         §§goto(addr70);
      }
      
      protected function createGroundQuad(param1:uint) : §!!9§
      {
         return new §!!9§(4096,4096,param1);
      }
      
      private function §#!O§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Starling.§'!A§);
            if(_loc3_)
            {
               if(§§pop())
               {
               }
               §§goto(addr48);
            }
            §§pop().color = param1;
         }
         addr48:
         if(!(_loc2_ && _loc3_))
         {
            §§push(Starling.§'!A§);
         }
      }
      
      public function § >§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8S§();
            while(true)
            {
               §§push(Log);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§>k§(param1,this.§0!`§);
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §]z§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LevelBackgroundLayer = null;
         if(_loc6_ || this)
         {
            if(param1 == this.§`-§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         this.§`-§ = param1;
         for each(_loc3_ in this.§<!3§)
         {
            if(_loc6_ || param2)
            {
               _loc3_.§]z§(param1);
            }
         }
      }
      
      public function §9J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(SoundEngine.§while§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr100:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr101:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc1_ || this)
                           {
                              SoundEngine.§`B§(this.§%&§.§2!"§,"CHANNEL_AMBIENT",999);
                           }
                           if(!_loc2_)
                           {
                              addr93:
                              break;
                           }
                           continue loop0;
                        }
                        return;
                        addr63:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §1r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            SoundEngine.§5v§("CHANNEL_AMBIENT");
         }
      }
      
      public function §]!!§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               §§push(this.§@M§);
               if(_loc4_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_)
                     {
                        addr53:
                        _loc2_ = this.§@M§.getChildAt(param1);
                        if(!_loc3_)
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr105);
                     }
                     else
                     {
                        addr73:
                        §§push(this.§ j§);
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - this.§@M§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        addr69:
                        if(§§pop() - this.§@M§.numChildren < this.§ j§.numChildren)
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr69);
                  }
                  addr95:
                  if(_loc2_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr105:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(_loc4_)
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
         §§goto(addr53);
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc6_ && param1))
         {
            this.§`0§ = param1;
         }
         loop0:
         while(true)
         {
            this.§!!,§ = param2;
            loop1:
            while(this.§<!3§ != null)
            {
               if(_loc5_ || this)
               {
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               addr108:
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        if(§§pop() >= this.§<!3§.length)
                        {
                           break loop11;
                        }
                        this.§<!3§[_loc3_].setSideScroll(this.§`0§,this.§!!,§);
                        if(_loc5_ || this)
                        {
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              §§push(int(§§pop()));
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                           }
                           _loc3_ = §§pop();
                           if(_loc5_ || param1)
                           {
                              if(false)
                              {
                                 continue loop10;
                              }
                              continue loop11;
                           }
                           addr179:
                           §§push(this.§7!<§);
                           loop2:
                           while(true)
                           {
                              §§push(§0!D§.§#`§);
                              addr243:
                              while(true)
                              {
                                 §§push(-§§pop());
                                 addr244:
                                 while(true)
                                 {
                                    §§push(1 / §0!D§.§4M§);
                                    addr249:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr250:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr237);
                     }
                  }
                  if(_loc5_)
                  {
                     break loop1;
                  }
                  §§goto(addr251);
               }
            }
            §§push(this.§7!<§);
            if(!_loc6_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(this.§7!<§);
                     if(!_loc6_)
                     {
                        §§push(this.§7!<§.scaleY = 1 / §0!D§.§4M§);
                        if(_loc5_ || _loc3_)
                        {
                           §§pop().scaleX = §§pop();
                           if(_loc5_ || param2)
                           {
                              §§goto(addr179);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr237);
               }
               §§goto(addr181);
            }
            §§goto(addr194);
         }
      }
      
      public function §-!^§() : String
      {
         return this.§%&§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
