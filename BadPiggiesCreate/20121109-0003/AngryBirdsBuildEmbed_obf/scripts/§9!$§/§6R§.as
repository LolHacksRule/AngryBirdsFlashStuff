package §9!$§
{
   import §-!`§.§8!p§;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   
   public class §6R§
   {
      
      public static const §#!§:String = "CutScene_Type_Intro";
      
      public static const §4!0§:String = "CutScene_Type_Outro";
      
      public static const §!!J§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#!§ = "CutScene_Type_Intro";
            if(_loc2_)
            {
               §4!0§ = "CutScene_Type_Outro";
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr52);
            }
            §!!J§ = "CutScene_Type_Final_Outro";
         }
         addr52:
      }
      
      private var §>!S§:§3p§;
      
      private var §<7§:String;
      
      private var §0!P§:Vector.<§&!W§>;
      
      private var §8!N§:Number;
      
      private var §&!G§:Number;
      
      private var §4!L§:Number;
      
      private var §"!C§:Number;
      
      private var §>E§:Sprite;
      
      private var §;!O§:Boolean = true;
      
      private var §8D§:uint;
      
      private var §8!5§:Boolean;
      
      private var §"I§:§8!p§;
      
      private var §+!C§:§8!p§;
      
      public function §6R§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§&!W§ = null;
         var _loc4_:Object = null;
         this.§0!P§ = new Vector.<§&!W§>();
         super();
         if(!_loc7_)
         {
            this.§8!N§ = 0;
         }
         if(param1)
         {
            if(_loc8_)
            {
               §§push(param2);
               if(_loc8_ || param1)
               {
                  §§push("intro");
                  if(_loc8_)
                  {
                     if(§§pop().search(§§pop()) != -1)
                     {
                        this.§<7§ = §#!§;
                        addr57:
                     }
                     else
                     {
                        addr60:
                        if(param2.search("complete") != -1)
                        {
                           if(!(_loc7_ && this))
                           {
                              this.§<7§ = §4!0§;
                           }
                        }
                     }
                     var _loc5_:int = 0;
                     var _loc6_:* = param1;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              _loc3_ = this.§9!M§(_loc4_);
                              if(!_loc7_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                              }
                              this.§0!P§.push(_loc3_);
                              continue;
                           }
                           if(!(_loc7_ && param2))
                           {
                              if(_loc8_ || param2)
                              {
                                 if(_loc8_)
                                 {
                                    _loc5_ = 0;
                                    if(_loc8_)
                                    {
                                       _loc6_ = this.§0!P§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc6_,_loc5_));
                                          break loop0;
                                       }
                                       addr217:
                                       addr215:
                                    }
                                 }
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr217);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr217);
                        }
                        else
                        {
                           _loc3_ = §§nextvalue(_loc5_,_loc6_);
                           §§push(_loc3_ is §%!k§);
                           if(_loc8_ || this)
                           {
                              if(§§pop())
                              {
                                 (_loc3_ as §%!k§).setSize(this.§4!L§,this.§"!C§);
                                 if(!(_loc7_ && param2))
                                 {
                                    (_loc3_ as §%!k§).§#!O§ = this.§;!O§;
                                    if(_loc7_ && this)
                                    {
                                       addr209:
                                       (_loc3_ as §!!N§).§#@§ = this.§;!O§;
                                       continue;
                                    }
                                 }
                                 continue;
                              }
                              addr200:
                              if(!(_loc3_ is §!!N§))
                              {
                                 continue;
                              }
                              (_loc3_ as §!!N§).setSize(this.§4!L§,this.§"!C§);
                              §§goto(addr209);
                           }
                           §§goto(addr200);
                        }
                     }
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr57);
         }
         addr219:
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      private function §9!M§(param1:Object) : §&!W§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!(_loc6_ && this))
         {
            if(§&!W§.§][§ === _loc4_)
            {
               §§push(0);
               if(!_loc5_)
               {
               }
            }
            else if(§&!W§.§5!u§ === _loc4_)
            {
               §§push(1);
               if(_loc6_ && this)
               {
                  addr266:
               }
            }
            else
            {
               §§push(§&!W§.§9J§);
               if(_loc5_)
               {
                  if(§§pop() === _loc4_)
                  {
                     §§goto(addr266);
                     §§push(2);
                  }
                  else
                  {
                     §§push(§&!W§.§]V§);
                     if(!_loc6_)
                     {
                        addr271:
                        if(§§pop() === _loc4_)
                        {
                           §§goto(addr337);
                        }
                        else
                        {
                           §§push(§&!W§.END);
                        }
                        §§goto(addr337);
                     }
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc6_)
                        {
                           addr281:
                           addr337:
                           switch(3)
                           {
                              case 0:
                                 return new §!!N§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                              case 1:
                                 _loc2_ = param1.scroll_target;
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc2_.type == "sprite")
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr72);
                                       }
                                    }
                                    break;
                                 }
                                 addr72:
                                 return new §%!k§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                              case 2:
                                 _loc3_ = param1.zoom_target;
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(_loc3_.type == "sprite")
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          return new §0?§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                       }
                                       addr198:
                                       break;
                                    }
                                    break;
                                 }
                                 addr225:
                                 break;
                              case 3:
                                 return new §+!-§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                              case 4:
                                 this.§&!G§ = param1.time * 1000;
                                 break;
                              case 5:
                                 this.§4!L§ = param1.width;
                                 if(_loc5_)
                                 {
                                    this.§"!C§ = param1.height;
                                    break;
                                 }
                                 §§goto(addr225);
                                 break;
                              case 6:
                                 this.§;!O§ = false;
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    addr205:
                                    break;
                                 }
                                 §§goto(addr198);
                                 break;
                              case 7:
                                 this.§;!O§ = true;
                                 if(_loc5_)
                                 {
                                    §§goto(addr205);
                                 }
                                 else
                                 {
                                    §§goto(addr225);
                                 }
                              case 8:
                                 this.§8D§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                 §§goto(addr225);
                           }
                           return null;
                           §§push(4);
                        }
                        else
                        {
                           addr295:
                           §§goto(addr337);
                           §§push(6);
                        }
                     }
                     else if(§&!W§.§5b§ === _loc4_)
                     {
                        §§goto(addr337);
                        §§push(5);
                     }
                     else
                     {
                        §§push(§&!W§.§%E§);
                        if(_loc5_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr295);
                           }
                           else
                           {
                              if(§&!W§.§+!f§ === _loc4_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(7);
                                    if(_loc6_ && _loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 addr329:
                                 if(§&!W§.§#Y§ !== _loc4_)
                                 {
                                    §§goto(addr337);
                                    §§push(9);
                                 }
                              }
                              §§goto(addr337);
                              §§push(8);
                           }
                           §§goto(addr337);
                        }
                        §§goto(addr329);
                     }
                     §§goto(addr337);
                  }
                  §§goto(addr337);
               }
               §§goto(addr271);
            }
            §§goto(addr337);
         }
         §§goto(addr281);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§>E§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr62:
                     this.§>E§.dispose();
                     if(!_loc2_)
                     {
                        this.§>E§ = null;
                        if(_loc1_ || this)
                        {
                        }
                        §§goto(addr78);
                     }
                  }
               }
               this.§0!P§ = null;
               §§goto(addr78);
            }
            §§goto(addr62);
         }
         addr78:
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(!this.§>E§)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr33:
                  this.§>E§ = new Sprite();
                  if(!(_loc4_ && _loc3_))
                  {
                     addr44:
                     §§push(this);
                     §§push(this.§8!N§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§8!N§ = §§pop();
                  }
                  var _loc2_:int = this.§0!P§.length - 1;
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     while(true)
                     {
                        if(§§pop() < 0)
                        {
                           if(!_loc4_)
                           {
                              this.§&%§();
                           }
                           this.§^!W§();
                           this.§]$§();
                           break;
                        }
                        if(!this.§0!P§[_loc2_].update(this.§8!N§,this.§>E§,this.§>!S§))
                        {
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           this.§0!P§.splice(_loc2_,1);
                        }
                        §§push(_loc2_);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() - 1);
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr134:
                     return this.§8!N§ < this.§&!G§;
                  }
               }
            }
            §§goto(addr44);
         }
         §§goto(addr33);
      }
      
      private function §]$§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §7j§.§else§.§84§.height;
         §§push(§'!V§.§9r§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§'!V§.§'A§);
         if(_loc6_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_ || _loc2_)
         {
            §§push(this.§"!C§);
            if(_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc6_ || _loc1_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§>E§);
            §§push(_loc4_);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §&%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7j§.§else§.color = this.§8D§;
         }
      }
      
      private function §^!W§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§8!5§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§>E§.getChildByName(§!!N§.§!6§) as Sprite;
         if(!(_loc2_ && _loc3_))
         {
            if(_loc1_)
            {
               if(_loc3_ || _loc3_)
               {
               }
               §§goto(addr78);
            }
            this.§8!5§ = true;
         }
         addr78:
      }
      
      public function clone(param1:§3p§) : §6R§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§&!W§ = null;
         var _loc2_:§6R§ = new §6R§(null,null);
         for each(_loc3_ in this.§0!P§)
         {
            if(_loc7_ || this)
            {
               _loc2_.§0!P§.push(_loc3_.clone());
            }
         }
         if(!_loc6_)
         {
            _loc2_.§8!N§ = this.§8!N§;
            _loc2_.§&!G§ = this.§&!G§;
            if(_loc7_ || _loc2_)
            {
               _loc2_.§4!L§ = this.§4!L§;
               if(!_loc6_)
               {
                  _loc2_.§"!C§ = this.§"!C§;
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc2_.§;!O§ = this.§;!O§;
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc2_.§8D§ = this.§8D§;
                     }
                  }
                  _loc2_.§<7§ = this.§<7§;
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc2_.§>!S§ = param1;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §+G§() : String
      {
         return this.§<7§;
      }
      
      public function set §+G§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<7§ = param1;
         }
      }
   }
}
