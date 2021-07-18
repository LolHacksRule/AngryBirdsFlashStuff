package §4;§
{
   import §"a§.§!"J§;
   import §'!6§.§5T§;
   import §'!6§.Sprite;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   
   public class §0!'§
   {
      
      public static const §<=§:String = "CutScene_Type_Intro";
      
      public static const §6"7§:String = "CutScene_Type_Outro";
      
      public static const §#!Y§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<=§ = "CutScene_Type_Intro";
            while(true)
            {
               §6"7§ = "CutScene_Type_Outro";
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     §#!Y§ = "CutScene_Type_Final_Outro";
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §=!2§:§`m§;
      
      private var §]J§:String;
      
      private var §#"K§:Vector.<§^g§>;
      
      private var §"!M§:Number;
      
      private var §0!=§:Number;
      
      private var §,>§:Number;
      
      private var §`;§:Number;
      
      private var §?!T§:Sprite;
      
      private var §,!M§:Boolean = true;
      
      private var §5"I§:uint;
      
      private var §<"I§:Boolean;
      
      private var §2h§:§5T§;
      
      private var §9"B§:§5T§;
      
      public function §0!'§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§^g§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§#"K§ = new Vector.<§^g§>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§"!M§ = 0;
                  addr86:
                  while(!_loc7_)
                  {
                  }
               }
               addr59:
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               if(false)
               {
                  while(param1)
                  {
                     if(_loc8_)
                     {
                        §§push(param2);
                        loop5:
                        while(true)
                        {
                           §§push("intro");
                           addr75:
                           while(§§pop().search(§§pop()) == -1)
                           {
                              continue loop5;
                           }
                        }
                     }
                     §§goto(addr78);
                  }
                  return;
                  addr68:
               }
               §§goto(addr55);
            }
         }
         while(true)
         {
            §§goto(addr68);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      private function §!"5§(param1:Object) : §^g§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§^g§.§^!V§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr381:
                     §§push(6);
                     if(_loc6_)
                     {
                        addr384:
                     }
                     else
                     {
                        addr411:
                     }
                  }
               }
               else
               {
                  §§push(§^g§.§9;§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§push(1);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr424);
                        }
                        else
                        {
                           §§goto(addr381);
                        }
                     }
                     else
                     {
                        §§push(§^g§.§-a§);
                        if(!_loc5_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_ || param1)
                              {
                                 addr298:
                                 §§push(2);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr424);
                                 }
                                 else
                                 {
                                    §§goto(addr411);
                                 }
                              }
                              §§goto(addr424);
                           }
                           else
                           {
                              §§push(§^g§.§[Q§);
                              if(_loc6_ || _loc2_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(3);
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          addr350:
                                       }
                                    }
                                    §§goto(addr424);
                                 }
                                 else
                                 {
                                    §§push(§^g§.END);
                                    if(!_loc5_)
                                    {
                                       addr338:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(4);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr350);
                                             }
                                             else
                                             {
                                                §§goto(addr411);
                                             }
                                          }
                                          else
                                          {
                                             addr364:
                                             §§push(5);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr424);
                                             }
                                             else
                                             {
                                                §§goto(addr384);
                                             }
                                          }
                                          §§goto(addr424);
                                       }
                                       else
                                       {
                                          §§push(§^g§.§%!c§);
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr364);
                                                }
                                                else
                                                {
                                                   §§goto(addr381);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§^g§.§`!E§);
                                                if(_loc6_)
                                                {
                                                   addr372:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§goto(addr381);
                                                      }
                                                      else
                                                      {
                                                         addr416:
                                                         §§push(8);
                                                         if(_loc6_)
                                                         {
                                                            addr419:
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§^g§.§4e§);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr414:
                                                      if(§§pop() === _loc4_)
                                                      {
                                                         §§goto(addr416);
                                                      }
                                                      else
                                                      {
                                                         addr424:
                                                         loop2:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               return new §+!$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                            case 1:
                                                               _loc2_ = param1.scroll_target;
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc2_.type == "sprite")
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr63);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               addr63:
                                                               return new §8"%§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                            case 2:
                                                               _loc3_ = param1.zoom_target;
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(_loc3_.type == "sprite")
                                                                  {
                                                                     §§goto(addr230);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr247:
                                                               }
                                                               break;
                                                            case 3:
                                                               return new §-W§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                            case 5:
                                                               this.§,>§ = param1.width;
                                                               this.§`;§ = param1.height;
                                                               addr163:
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               else
                                                               {
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        break loop2;
                                                                        addr195:
                                                                     }
                                                                     addr181:
                                                                     while(true)
                                                                     {
                                                                        this.§0!=§ = param1.time * 1000;
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                               }
                                                               break;
                                                               addr180:
                                                            case 7:
                                                               this.§,!M§ = true;
                                                               addr141:
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr163);
                                                               break;
                                                            case 8:
                                                               this.§5"I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr180);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr150:
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        addr230:
                                                                        return new §0!7§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr141);
                                                               §§goto(addr163);
                                                            case 4:
                                                               §§goto(addr181);
                                                            case 6:
                                                               this.§,!M§ = false;
                                                               §§goto(addr150);
                                                         }
                                                         return null;
                                                         §§push(9);
                                                      }
                                                      §§goto(addr424);
                                                   }
                                                   §§goto(addr416);
                                                }
                                             }
                                             §§goto(addr424);
                                          }
                                          if(§§pop() === _loc4_)
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(7);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr411);
                                                }
                                                else
                                                {
                                                   §§goto(addr419);
                                                }
                                             }
                                             §§goto(addr424);
                                          }
                                          else
                                          {
                                             §§goto(addr414);
                                             §§push(§^g§.§2!'§);
                                          }
                                       }
                                       §§goto(addr424);
                                    }
                                    §§goto(addr372);
                                 }
                              }
                              §§goto(addr372);
                           }
                        }
                        §§goto(addr414);
                     }
                     §§goto(addr424);
                  }
                  §§goto(addr372);
               }
               §§goto(addr424);
            }
            §§goto(addr338);
         }
         §§goto(addr298);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!T§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr77:
                     this.§?!T§.dispose();
                  }
                  while(true)
                  {
                     this.§?!T§ = null;
                     addr62:
                     while(true)
                     {
                     }
                  }
                  addr78:
               }
               while(true)
               {
                  this.§#"K§ = null;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!this.§?!T§)
            {
               if(_loc4_ || param1)
               {
                  addr34:
                  this.§?!T§ = new Sprite();
                  if(!(_loc3_ && this))
                  {
                     addr45:
                     §§push(this);
                     §§push(this.§"!M§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§"!M§ = §§pop();
                  }
               }
               var _loc2_:* = int(this.§#"K§.length - 1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc4_ || param1)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           this.§0]§();
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              this.§#"K§.splice(_loc2_,1);
                           }
                           else
                           {
                              addr153:
                           }
                           this.§7`§();
                           if(_loc4_ || this)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 break loop0;
                              }
                              break;
                           }
                        }
                     }
                     else if(!this.§#"K§[_loc2_].update(this.§"!M§,this.§?!T§,this.§=!2§))
                     {
                        §§goto(addr153);
                     }
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                  }
                  _loc2_ = §§pop();
               }
               return this.§"!M§ < this.§0!=§;
            }
            §§goto(addr45);
         }
         §§goto(addr34);
      }
      
      private function §7`§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §!"J§.§8N§.height;
         §§push(§?l§.§+!9§);
         if(_loc6_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§?l§.§0!S§);
         if(_loc6_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc5_)
         {
            §§push(this.§`;§);
            if(_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc6_ || this)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || _loc1_)
         {
            §§push(this.§?!T§);
            §§push(_loc4_);
            if(!_loc5_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §0]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!"J§.§1&§.color = this.§5"I§;
         }
      }
      
      public function clone(param1:§`m§) : §0!'§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§^g§ = null;
         var _loc2_:§0!'§ = new §0!'§(null,null);
         for each(_loc3_ in this.§#"K§)
         {
            if(_loc7_ || _loc2_)
            {
               _loc2_.§#"K§.push(_loc3_.clone());
            }
         }
         if(!_loc6_)
         {
            _loc2_.§"!M§ = this.§"!M§;
            while(true)
            {
               _loc2_.§0!=§ = this.§0!=§;
               loop3:
               for(; !(_loc6_ && param1); if(_loc6_ && this)
               {
                  continue;
               },_loc2_.§]J§ = this.§]J§,§§goto(addr87))
               {
                  _loc2_.§`;§ = this.§`;§;
                  loop4:
                  while(true)
                  {
                     _loc2_.§,!M§ = this.§,!M§;
                     loop5:
                     while(true)
                     {
                        _loc2_.§5"I§ = this.§5"I§;
                        continue loop4;
                        addr87:
                        addr157:
                        while(true)
                        {
                           if(_loc7_ || param1)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           _loc2_.§,>§ = this.§,>§;
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      public function get §'!G§() : String
      {
         return this.§]J§;
      }
      
      public function set §'!G§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§]J§ = param1;
         }
      }
   }
}
