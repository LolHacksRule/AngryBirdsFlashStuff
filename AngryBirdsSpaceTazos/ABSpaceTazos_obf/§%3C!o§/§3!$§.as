package §<!o§
{
   import §+!a§.§2!a§;
   import §+!a§.§@!_§;
   import §0N§.§2!@§;
   import §3"#§.§3![§;
   import §3"#§.§<!O§;
   import §4&§.§,C§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   
   public class §3!$§
   {
      
      public static const §,"5§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,"5§ = true;
         }
      }
      
      private var §7!T§:§,C§;
      
      private var §="4§:§@!_§;
      
      private var §<M§:Vector.<§!!q§>;
      
      private var §`!p§:Sprite;
      
      private var §!5§:Sprite;
      
      private var §9F§:Sprite;
      
      private var §`!?§:Number;
      
      private var §+!?§:Number;
      
      private var §4J§:Number;
      
      private var §4"&§:Boolean = true;
      
      private var §5!_§:Boolean = true;
      
      private var §7!7§:§3![§;
      
      private var §9!`§:Number;
      
      private var §>v§:Boolean = true;
      
      private var §-"@§:int = 0;
      
      private var §=T§:Number = 1.0;
      
      public function §3!$§(param1:§@!_§, param2:Number, param3:§,C§, param4:Number, param5:Boolean = true)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§<M§ = new Vector.<§!!q§>();
            while(true)
            {
               super();
               addr133:
               while(true)
               {
                  this.§7!T§ = param3;
                  addr119:
                  while(true)
                  {
                     this.§+!?§ = 0;
                  }
               }
            }
            addr140:
         }
         loop3:
         while(true)
         {
            this.§4J§ = 0;
            loop4:
            while(true)
            {
               this.§`!?§ = param2;
               while(true)
               {
                  this.§`!p§ = new Sprite();
                  loop6:
                  for(; !_loc6_; if(!(_loc6_ && param3))
                  {
                     return;
                  })
                  {
                     if(!_loc7_)
                     {
                        continue loop3;
                     }
                     this.§!5§ = new Sprite();
                     loop7:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           this.§9F§ = new Sprite();
                           do
                           {
                              this.§9!`§ = param4;
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       break loop7;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr119);
                           }
                           while(!_loc7_);
                           
                           if(!_loc6_)
                           {
                              continue loop6;
                           }
                           continue;
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr133);
                  }
               }
            }
         }
      }
      
      public function get §@!6§() : Boolean
      {
         return this.§4"&§;
      }
      
      public function get §'^§() : Sprite
      {
         return this.§9F§;
      }
      
      public function get §3!_§() : Sprite
      {
         return this.§`!p§;
      }
      
      public function get §>!y§() : Sprite
      {
         return this.§!5§;
      }
      
      public function get skyColor() : int
      {
         return this.§-"@§;
      }
      
      protected function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=!a§();
            loop0:
            while(true)
            {
               this.stopAmbientSound();
               while(true)
               {
                  §§push(this.§`!p§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§`!p§);
                           addr105:
                           while(true)
                           {
                              §§pop().dispose();
                              addr116:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 this.§`!p§ = null;
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr103:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§!5§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       addr90:
                                       this.§!5§.dispose();
                                       while(true)
                                       {
                                          this.§!5§ = null;
                                          while(true)
                                          {
                                             §§goto(addr35);
                                          }
                                       }
                                       addr91:
                                    }
                                    else
                                    {
                                       §§goto(addr103);
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr91);
                           }
                           addr35:
                           while(true)
                           {
                              §§push(this.§9F§);
                              if(!_loc1_)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(!(_loc1_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    addr62:
                                    this.§9F§.dispose();
                                 }
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr62);
                              continue loop10;
                           }
                           return;
                        }
                        §§goto(addr90);
                     }
                     continue loop0;
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr90);
      }
      
      public function isVisible() : Boolean
      {
         return this.§5!_§;
      }
      
      public function §0!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§5!_§);
            loop0:
            for(; §§pop() != param1; while(true)
            {
               §§push(param1);
               if(!(_loc2_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§=!a§();
                        break;
                     }
                     break;
                  }
                  this.§59§(this.§="4§,this.§9!`§);
                  if(_loc2_ && param1)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            },return)
            {
               while(true)
               {
                  this.§5!_§ = param1;
                  continue loop0;
               }
               if(_loc2_ && _loc2_)
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §#!<§() : String
      {
         return this.§="4§.§=t§;
      }
      
      private function §=!a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§!5§);
            if(!(_loc1_ && this))
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§`!p§);
                        if(_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              loop3:
                              while(_loc2_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    if(this.§<M§.length <= 0)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          if(_loc2_ || _loc2_)
                                          {
                                             break loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    else
                                    {
                                       this.§<M§.pop().dispose();
                                    }
                                    continue loop1;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr104:
                           this.§`!p§.removeChildAt(0,true);
                           continue;
                        }
                        §§goto(addr104);
                     }
                     return;
                  }
               }
               else
               {
                  §§push(this.§!5§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §>I§(param1:§@!_§) : void
      {
      }
      
      protected function §59§(param1:§@!_§, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§2!a§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§!!q§ = null;
         if(_loc8_ || this)
         {
            this.§="4§ = param1;
            loop0:
            while(true)
            {
               this.§>I§(this.§="4§);
               while(true)
               {
                  this.§`!p§.y = this.§`!?§;
                  while(!(_loc7_ && param2))
                  {
                     this.§!5§.y = this.§`!?§;
                     loop3:
                     for(; !(_loc7_ && param2); while(true)
                     {
                        this.§"i§();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        if(!_loc8_)
                        {
                           continue loop3;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr43);
                     },var _loc3_:int = 0,loop6:
                     while(_loc3_ < this.§="4§.§[!$§)
                     {
                        _loc4_ = this.§="4§.§0'§(_loc3_);
                        if(_loc8_)
                        {
                           §§push(this.§>v§);
                           if(!_loc7_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(_loc4_.optional);
                                          if(!(_loc7_ && param2))
                                          {
                                             addr146:
                                             if(!§§pop())
                                             {
                                                if(!(_loc8_ || param2))
                                                {
                                                   this.§!i§(parseInt(_loc4_.color,16));
                                                   addr239:
                                                   _loc3_++;
                                                   continue;
                                                   addr222:
                                                }
                                             }
                                             else if(_loc4_.color)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§goto(addr222);
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr146);
                                       }
                                       _loc5_ = new Sprite();
                                       _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
                                       if(!(_loc8_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       this.§<M§.push(_loc6_);
                                       do
                                       {
                                          while(true)
                                          {
                                             if(_loc6_.§2a§)
                                             {
                                                if(!_loc7_)
                                                {
                                                   this.§!5§.addChild(_loc5_);
                                                   break;
                                                }
                                                break;
                                             }
                                             this.§`!p§.addChild(_loc5_);
                                             if(_loc7_ && this)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr216:
                                             §§goto(addr239);
                                          }
                                       }
                                       while(_loc7_ && param1);
                                       
                                       §§goto(addr216);
                                    }
                                 }
                              }
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr239);
                     },return)
                     {
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§9F§.y = this.§`!?§;
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function createLayer(param1:§2!a§, param2:Sprite, param3:§,C§, param4:Number) : §!!q§
      {
         return new §!!q§(param1,param2,param3,param4);
      }
      
      private function §"i§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!D§ = null;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§="4§);
            if(_loc2_)
            {
               §§push(§§pop().§9!h§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this.§!i§(this.§="4§.§9!h§);
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr62);
                  }
               }
            }
            §§goto(addr58);
         }
         addr58:
         if(this.§="4§.colorGround)
         {
            addr62:
            §§push(this);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(uint(§§pop()));
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           §§pop();
                           addr84:
                           §§push(uint(this.§="4§.colorGround));
                        }
                     }
                  }
                  _loc1_ = §§pop().§!M§(§§pop());
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.y = 30;
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr114);
                  }
                  this.§9F§.addChild(_loc1_);
                  §§goto(addr114);
               }
            }
            §§goto(addr84);
         }
         addr114:
      }
      
      protected function §!M§(param1:uint) : §&!D§
      {
         return new §&!D§(4096,4096,param1);
      }
      
      private function §!i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-"@§ = param1;
         }
      }
      
      public function §0!2§(param1:§@!_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§=!a§();
            while(true)
            {
               §2!@§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§59§(param1,this.§9!`§);
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
         §§goto(addr66);
      }
      
      public function §]i§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§!!q§ = null;
         if(!(_loc7_ && param1))
         {
            if(param1 == this.§4"&§)
            {
               if(!_loc7_)
               {
                  §§goto(addr32);
               }
            }
            this.§4"&§ = param1;
            for each(_loc3_ in this.§<M§)
            {
               if(_loc6_)
               {
                  _loc3_.§]i§(param1);
               }
            }
            return;
         }
         addr32:
      }
      
      public function playAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§<!O§.§4d§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr106:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr108:
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
                              if(_loc2_ || _loc2_)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 §<!O§.playSound(this.§break§,"CHANNEL_AMBIENT",999);
                                 addr90:
                              }
                              §§goto(addr90);
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
         §§goto(addr90);
      }
      
      public function stopAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §<!O§.§,!z§("CHANNEL_AMBIENT");
         }
      }
      
      public function get §break§() : String
      {
         return this.§="4§.§break§;
      }
      
      public function §3!I§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(this.§`!p§);
               if(_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_ || param1)
                     {
                        addr42:
                        _loc2_ = this.§`!p§.getChildAt(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr94);
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        addr77:
                        §§push(this.§!5§);
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() - this.§`!p§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr73:
                        if(§§pop() - this.§`!p§.numChildren < this.§!5§.numChildren)
                        {
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr73);
                  }
                  addr94:
                  if(_loc2_)
                  {
                     if(!_loc4_)
                     {
                        addr98:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(_loc3_ || param1)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr73);
         }
         §§goto(addr42);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc8_:int = 0;
         if(!_loc11_)
         {
            this.§+!?§ = param1;
            while(true)
            {
               this.§4J§ = param2;
            }
            addr74:
         }
         loop1:
         while(this.§<M§ != null)
         {
            if(!_loc11_)
            {
               _loc8_ = 0;
            }
            if(_loc11_)
            {
               continue;
            }
            if(!_loc11_)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc8_ >= this.§<M§.length)
                     {
                        break loop2;
                     }
                     this.§<M§[_loc8_].setScreenOffset(this.§+!?§,this.§4J§,param5,param3,param4,param6,param7);
                     if(_loc10_)
                     {
                        _loc8_++;
                        if(!(_loc10_ || param1))
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§9F§);
                              if(!(_loc11_ && this))
                              {
                                 break;
                              }
                              addr178:
                              while(true)
                              {
                                 §§pop().x = 0;
                                 continue loop5;
                              }
                           }
                           §§push(this.§`!?§);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - this.§4J§);
                           }
                        }
                        else
                        {
                           addr175:
                           addr157:
                        }
                        if(false)
                        {
                           break;
                        }
                        continue;
                        while(true)
                        {
                           §§pop().y = §§pop();
                           if(!(_loc11_ && param1))
                           {
                              break;
                           }
                           §§goto(addr180);
                        }
                        addr180:
                        return;
                     }
                     break loop1;
                  }
               }
               if(_loc10_ || param2)
               {
                  break;
               }
               §§goto(addr175);
            }
            else
            {
               §§goto(addr74);
            }
         }
         §§push(this.§9F§);
         if(!_loc11_)
         {
            if(§§pop() != null)
            {
               if(_loc10_)
               {
                  §§push(this.§9F§);
                  if(_loc10_ || param2)
                  {
                     addr114:
                     §§push(this.§9F§.scaleY = 1 / §9!,§.§8"4§);
                     if(!(_loc11_ && param2))
                     {
                        §§pop().scaleX = §§pop();
                        if(!_loc11_)
                        {
                           §§goto(addr178);
                           §§push(this.§9F§);
                           addr135:
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr178);
               }
               §§goto(addr135);
            }
            §§goto(addr175);
         }
         §§goto(addr114);
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§="4§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
