package §3!Z§
{
   import §6;§.§%[§;
   import §9t§.§=!>§;
   import §^a§.§ !'§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §?!3§
   {
      
      public static const §-!b§:String = "CutScene_Type_Intro";
      
      public static const §'!d§:String = "CutScene_Type_Outro";
      
      public static const §!!J§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!b§ = "CutScene_Type_Intro";
            while(true)
            {
               §'!d§ = "CutScene_Type_Outro";
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §!!J§ = "CutScene_Type_Final_Outro";
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §>!K§:§=!>§;
      
      private var §+!T§:String;
      
      private var §=!,§:Vector.<§!'§>;
      
      private var §#!c§:Number;
      
      private var §,!I§:Number;
      
      private var §]>§:Number;
      
      private var §7w§:Number;
      
      private var §8!2§:Sprite;
      
      private var §;1§:Boolean = true;
      
      private var §7!-§:uint;
      
      private var §`!T§:Boolean;
      
      private var §5_§:§ !'§;
      
      private var §;-§:§ !'§;
      
      public function §?!3§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§!'§ = null;
         var _loc4_:Object = null;
         if(_loc7_)
         {
            this.§=!,§ = new Vector.<§!'§>();
            while(true)
            {
               super();
               addr73:
               if(_loc8_ && this)
               {
                  continue;
               }
               §§push(param2);
               while(true)
               {
                  if(§§pop().search("intro") != -1)
                  {
                     if(!(_loc8_ && param2))
                     {
                        this.§+!T§ = §-!b§;
                     }
                     break;
                     addr95:
                  }
                  §§push(param2);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(§§pop().search("complete") != -1)
                     {
                        if(_loc7_)
                        {
                           this.§+!T§ = §'!d§;
                        }
                        if(!(_loc8_ && param1))
                        {
                           if(_loc7_)
                           {
                              addr54:
                              if(!(_loc8_ && param2))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(param1)
                                 {
                                    while(_loc7_ || this)
                                    {
                                       §§goto(addr73);
                                    }
                                 }
                                 addr281:
                                 return;
                                 addr63:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§#!c§ = 0;
                                    §§goto(addr54);
                                 }
                                 addr104:
                              }
                              while(true)
                              {
                                 §§goto(addr63);
                                 §§goto(addr66);
                              }
                           }
                           §§goto(addr66);
                        }
                        else
                        {
                           §§goto(addr95);
                        }
                     }
                     break;
                  }
               }
               var _loc5_:int = 0;
               var _loc6_:* = param1;
               addr154:
               §§push(§§hasnext(_loc6_,_loc5_));
               if(_loc7_ || this)
               {
                  if(§§pop())
                  {
                     _loc4_ = §§nextvalue(_loc5_,_loc6_);
                     _loc3_ = this.§,!P§(_loc4_);
                     if(_loc7_ || this)
                     {
                        if(_loc3_)
                        {
                           if(!_loc8_)
                           {
                              addr150:
                              this.§=!,§.push(_loc3_);
                           }
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr150);
                  }
                  if(_loc7_)
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        if(!_loc8_)
                        {
                           _loc5_ = 0;
                           if(_loc7_)
                           {
                              addr180:
                              _loc6_ = this.§=!,§;
                              addr277:
                              for each(_loc3_ in _loc6_)
                              {
                                 if(_loc7_ || this)
                                 {
                                    addr250:
                                    if(_loc3_ is §3p§)
                                    {
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          (_loc3_ as §3p§).§?<§(this.§]>§,this.§7w§);
                                          (_loc3_ as §3p§).§%0§ = this.§;1§;
                                          addr221:
                                          §§goto(addr277);
                                          addr276:
                                          addr246:
                                       }
                                       §§goto(addr276);
                                    }
                                    §§push(_loc3_ is §+M§);
                                    if(_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          addr230:
                                          (_loc3_ as §+M§).§?<§(this.§]>§,this.§7w§);
                                          (_loc3_ as §+M§).§-+§ = this.§;1§;
                                          if(!_loc8_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr230);
                                          }
                                          addr238:
                                          §§goto(addr238);
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr221);
                              }
                           }
                        }
                        §§goto(addr281);
                     }
                  }
                  §§goto(addr180);
               }
               §§goto(addr277);
            }
         }
         §§goto(addr104);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!2§;
      }
      
      private function §,!P§(param1:Object) : §!'§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!(_loc5_ && this))
         {
            §§push(§!'§.§7!H§);
            if(_loc6_ || param1)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                     }
                  }
                  else
                  {
                     addr276:
                     §§push(1);
                     if(!(_loc6_ || param1))
                     {
                        addr429:
                     }
                  }
               }
               else
               {
                  §§push(§!'§.§4!D§);
                  if(!_loc5_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr276);
                        }
                        else
                        {
                           addr376:
                           §§push(6);
                           if(_loc5_)
                           {
                              addr406:
                           }
                        }
                     }
                     else
                     {
                        §§push(§!'§.§-!%§);
                        if(_loc6_ || this)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§goto(addr429);
                                 }
                              }
                              else
                              {
                                 §§goto(addr376);
                              }
                           }
                           else
                           {
                              §§push(§!'§.§@!$§);
                              if(!_loc5_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(3);
                                       if(_loc5_ && _loc3_)
                                       {
                                          addr345:
                                       }
                                       §§goto(addr434);
                                    }
                                    else
                                    {
                                       addr398:
                                       §§push(7);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr406);
                                       }
                                       else
                                       {
                                          §§goto(addr429);
                                       }
                                    }
                                    §§goto(addr434);
                                 }
                                 else
                                 {
                                    §§push(§!'§.END);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(4);
                                             if(_loc6_)
                                             {
                                                §§goto(addr345);
                                             }
                                             §§goto(addr434);
                                          }
                                          else
                                          {
                                             §§goto(addr376);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§!'§.§!?§);
                                          if(!_loc5_)
                                          {
                                             addr350:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(5);
                                                   if(!_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr434);
                                                }
                                                else
                                                {
                                                   §§goto(addr376);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§!'§.§0!V§);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr367:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§goto(addr376);
                                                      }
                                                      else
                                                      {
                                                         addr411:
                                                         §§push(8);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§goto(addr429);
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§!'§.§ Y§);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§goto(addr398);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr411);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§!'§.§ !c§);
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                   }
                                                   §§goto(addr411);
                                                }
                                             }
                                             §§goto(addr434);
                                          }
                                          if(§§pop() === _loc4_)
                                          {
                                             §§goto(addr411);
                                          }
                                          else
                                          {
                                             addr434:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   return new §+M§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                case 1:
                                                   _loc2_ = param1.scroll_target;
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      if(_loc2_.type == "sprite")
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            return new §3p§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                         }
                                                      }
                                                   }
                                                   break;
                                                case 2:
                                                   _loc3_ = param1.zoom_target;
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc3_.type != "sprite")
                                                      {
                                                         addr179:
                                                         break;
                                                      }
                                                   }
                                                   return new §+!G§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                   addr205:
                                                case 3:
                                                   return new §%5§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                case 5:
                                                   this.§]>§ = param1.width;
                                                   addr161:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         this.§7w§ = param1.height;
                                                         addr151:
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                   else if(_loc6_)
                                                   {
                                                      addr171:
                                                      this.§,!I§ = param1.time * 1000;
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr205);
                                                   }
                                                   break;
                                                case 8:
                                                   this.§7!-§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr134:
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      else
                                                      {
                                                         addr145:
                                                      }
                                                   }
                                                   break;
                                                case 4:
                                                   §§goto(addr171);
                                                case 6:
                                                   this.§;1§ = false;
                                                   §§goto(addr145);
                                                case 7:
                                                   this.§;1§ = true;
                                                   §§goto(addr134);
                                             }
                                             return null;
                                             §§push(9);
                                          }
                                          §§goto(addr434);
                                       }
                                       §§goto(addr434);
                                    }
                                 }
                                 §§goto(addr434);
                              }
                              §§goto(addr350);
                           }
                        }
                        §§goto(addr367);
                     }
                  }
                  §§goto(addr367);
               }
               §§goto(addr434);
            }
            §§goto(addr367);
         }
         §§goto(addr411);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§8!2§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr76:
                     this.§8!2§.dispose();
                  }
                  while(true)
                  {
                     this.§8!2§ = null;
                     addr44:
                     while(!_loc2_)
                     {
                     }
                  }
               }
               while(true)
               {
                  this.§=!,§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr44);
               }
               return;
               addr29:
            }
            §§goto(addr76);
         }
         §§goto(addr29);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!this.§8!2§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§8!2§ = new Sprite();
                  if(!(_loc3_ && param1))
                  {
                     addr45:
                     §§push(this);
                     §§push(this.§#!c§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§#!c§ = §§pop();
                  }
                  var _loc2_:* = int(this.§=!,§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              do
                              {
                                 this.§<!8§();
                                 do
                                 {
                                    this.§1!J§();
                                 }
                                 while(_loc3_);
                                 
                              }
                              while(!(_loc4_ || _loc3_));
                              
                              if(!_loc3_)
                              {
                                 break;
                              }
                              loop4:
                              while(!(_loc4_ || _loc3_))
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue;
                              addr114:
                           }
                           else if(!this.§=!,§[_loc2_].update(this.§#!c§,this.§8!2§,this.§>!K§))
                           {
                              if(!(_loc3_ && this))
                              {
                                 this.§=!,§.splice(_loc2_,1);
                              }
                              §§goto(addr158);
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr114);
                     }
                  }
                  return this.§#!c§ < this.§,!I§;
               }
            }
         }
         §§goto(addr45);
      }
      
      private function §1!J§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §%[§.§^'§.height;
         §§push(§@!Z§.§<X§);
         if(_loc6_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§@!Z§.§5I§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_ || _loc1_)
         {
            §§push(this.§7w§);
            if(_loc6_ || this)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc5_ && this))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§8!2§);
            §§push(_loc4_);
            if(!_loc5_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §<!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §%[§.§`1§.color = this.§7!-§;
         }
      }
      
      public function clone(param1:§=!>§) : §?!3§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§!'§ = null;
         var _loc2_:§?!3§ = new §?!3§(null,null);
         for each(_loc3_ in this.§=!,§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.§=!,§.push(_loc3_.clone());
            }
         }
         if(_loc7_)
         {
            _loc2_.§#!c§ = this.§#!c§;
            loop1:
            while(true)
            {
               _loc2_.§,!I§ = this.§,!I§;
               loop2:
               while(true)
               {
                  _loc2_.§]>§ = this.§]>§;
                  addr119:
                  if(!(_loc7_ || param1))
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     continue loop1;
                  }
                  _loc2_.§+!T§ = this.§+!T§;
                  loop7:
                  while(_loc7_ || _loc3_)
                  {
                     _loc2_.§>!K§ = param1;
                     if(!_loc7_)
                     {
                        continue;
                     }
                     addr69:
                     if(!(_loc6_ && _loc3_))
                     {
                        addr86:
                        if(_loc6_ && param1)
                        {
                           while(true)
                           {
                              _loc2_.§;1§ = this.§;1§;
                              break loop7;
                              §§goto(addr86);
                           }
                           addr140:
                        }
                        return _loc2_;
                     }
                     loop6:
                     while(true)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           §§goto(addr119);
                        }
                        else
                        {
                           while(true)
                           {
                              _loc2_.§7w§ = this.§7w§;
                              §§goto(addr140);
                              continue loop6;
                           }
                           addr146:
                        }
                     }
                     continue loop2;
                     addr112:
                  }
                  while(true)
                  {
                     _loc2_.§7!-§ = this.§7!-§;
                     §§goto(addr112);
                     §§goto(addr99);
                  }
                  addr99:
               }
            }
         }
         §§goto(addr146);
      }
      
      public function get §9!L§() : String
      {
         return this.§+!T§;
      }
      
      public function set §9!L§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!T§ = param1;
         }
      }
   }
}
