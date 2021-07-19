package §="2§
{
   import flash.events.Event;
   
   public class §@!a§
   {
       
      
      private var §8!§:String = null;
      
      private var §[C§:String = null;
      
      private var §%#a§:String = null;
      
      private var §#"Z§:Vector.<String>;
      
      private var §%=§:Vector.<§=#P§>;
      
      private var §=!O§:§2H§;
      
      public function §@!a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§#"Z§ = new Vector.<String>();
            while(true)
            {
               super();
               loop1:
               while(_loc2_)
               {
                  this.§=!O§ = new §2H§();
                  while(true)
                  {
                     this.§%=§ = new Vector.<§=#P§>();
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §;"Q§() : §4!5§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§[C§)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr38);
               }
            }
            var _loc1_:§="f§ = §?!r§.§2R§(this.§[C§);
            if(!_loc3_)
            {
               if(_loc1_)
               {
                  if(!_loc3_)
                  {
                     return _loc1_.§0<§(this.§8!§);
                  }
               }
            }
            return null;
         }
         addr38:
         return null;
      }
      
      private function §-L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§=!O§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'"^§);
               addr33:
               if(_loc2_)
               {
                  continue;
               }
               §§pop().§@!Z§(this.§8!§);
               if(!_loc2_)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     while(true)
                     {
                        §§push(this.§=!O§);
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§`"R§);
                           addr76:
                           while(true)
                           {
                              §§push(this.§=!O§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr33);
                           }
                        }
                     }
                     addr84:
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr84);
      }
      
      private function §6_§(param1:String) : §=#P§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§%=§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(param1 == this.§%=§[_loc2_].songId)
            {
               break;
            }
            _loc2_++;
         }
         return this.§%=§[_loc2_];
      }
      
      private function §'!S§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(this.§[C§));
            loop0:
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(§?!r§.§2R§(this.§[C§) == null);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                     loop2:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr43);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §?!r§.§9"4§(this.§[C§);
                        addr99:
                        while(true)
                        {
                        }
                        addr99:
                     }
                     §§goto(addr99);
                  }
                  else
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr36);
               }
               addr43:
               return §§pop();
            }
            while(_loc1_ && _loc1_);
            
            return §§pop();
         }
         §§goto(addr99);
      }
      
      public function §]V§(param1:§=#P§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%=§.push(param1);
         }
      }
      
      public function §!!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§-L§();
            while(true)
            {
               this.§2"S§();
               addr91:
               while(true)
               {
                  this.§'!S§();
                  addr87:
                  while(true)
                  {
                     this.§8!§ = null;
                  }
               }
            }
            addr94:
         }
         loop3:
         while(true)
         {
            this.§[C§ = null;
            for(; _loc2_; this.§%#a§ = null,if(!(_loc1_ && _loc1_))
            {
               continue loop3;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr94);
            }
            §§goto(addr87);
            if(_loc1_ && this)
            {
               continue;
            }
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr91);
         }
      }
      
      public function § c§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§="f§ = null;
         if(_loc4_ || param1)
         {
            if(this.§[C§)
            {
               if(_loc4_)
               {
                  addr31:
                  _loc3_ = §?!r§.§2R§(this.§[C§);
                  addr37:
                  §§push(Boolean(_loc3_));
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr60:
                           §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(_loc3_.§<"M§());
                              if(_loc5_ && param1)
                              {
                              }
                              addr116:
                              if(!§§pop())
                              {
                                 this.§,y§(param1,param2,false);
                                 if(_loc4_ || param1)
                                 {
                                    if(!(_loc4_ || param2))
                                    {
                                       addr117:
                                       this.§#"Z§.push(param1);
                                       addr121:
                                    }
                                    return;
                                 }
                                 §§goto(addr121);
                              }
                           }
                           §§goto(addr117);
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr60);
               }
               §§goto(addr117);
            }
            §§goto(addr37);
         }
         §§goto(addr31);
      }
      
      public function §2!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#"Z§ = new Vector.<String>();
         }
      }
      
      public function §3##§(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4!5§ = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§8!§ == param1);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr114:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              addr81:
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc4_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                return;
                                             }
                                             break;
                                          }
                                          addr130:
                                          addr27:
                                          while(true)
                                          {
                                             §§push(§?!r§.§2R§(this.§[C§));
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(§§pop() == null);
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             addr133:
                                             addr133:
                                             addr133:
                                             addr133:
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§push(§§pop().§<"M§());
                                          if(_loc4_)
                                          {
                                             §§goto(addr133);
                                          }
                                       }
                                       addr220:
                                       return;
                                       addr93:
                                    }
                                    addr134:
                                    if(§§pop())
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          addr142:
                                          _loc3_ = this.§;"Q§();
                                          if(_loc4_ || param1)
                                          {
                                             this.§-L§();
                                          }
                                          this.§%#a§ = param1;
                                          addr183:
                                          this.§=!O§.addEventListener(Event.COMPLETE,this.§'"^§);
                                          addr180:
                                          addr200:
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(this.§=!O§);
                                             if(_loc4_)
                                             {
                                                §§pop().§@y§(this.§8!§,_loc3_,0.5);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr183);
                                          }
                                          addr213:
                                          §§goto(addr213);
                                       }
                                    }
                                    else
                                    {
                                       this.§,y§(param1,true,param2);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr133);
                              }
                           }
                           addr125:
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §,y§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §§push(param1);
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr76);
               }
               loop1:
               while(true)
               {
                  §§push(this.§8!§);
                  if(_loc7_ && param1)
                  {
                     break;
                  }
                  §§push(§§pop() == param1);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              loop7:
                              while(_loc8_)
                              {
                                 while(true)
                                 {
                                    this.§!!?§();
                                    if(_loc7_ && this)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc7_)
                                    {
                                       addr76:
                                       return;
                                    }
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          §§push(param3);
                                          if(!_loc7_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(_loc8_)
                                          {
                                             continue loop2;
                                          }
                                          addr70:
                                          while(true)
                                          {
                                             §§pop();
                                             break loop7;
                                          }
                                       }
                                       continue loop2;
                                       addr34:
                                    }
                                    var _loc4_:§=#P§;
                                    if((_loc4_ = this.§6_§(param1)) == null)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          return;
                                       }
                                    }
                                    this.§8!§ = _loc4_.songId;
                                    if(_loc8_)
                                    {
                                       this.§[C§ = _loc4_.§+"#§;
                                    }
                                    var _loc5_:§="f§;
                                    if(!(_loc5_ = §?!r§.§2R§(this.§[C§)))
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          §?!r§.§,"d§(this.§[C§,1,1);
                                       }
                                    }
                                    var _loc6_:§4!5§;
                                    if((_loc6_ = this.§`#%§(_loc4_)) == null)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          return;
                                       }
                                       addr216:
                                       §§push(this.§=!O§);
                                       if(!_loc7_)
                                       {
                                          §§pop().§8#6§(this.§8!§,_loc6_,0.5);
                                          addr188:
                                          if(!(_loc8_ || this))
                                          {
                                             if(param2)
                                             {
                                                this.§=!O§.addEventListener(Event.COMPLETE,this.§`"R§);
                                                addr199:
                                                §§goto(addr216);
                                             }
                                             _loc6_.volume = 1;
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr188);
                                             addr223:
                                          }
                                          addr161:
                                          return;
                                       }
                                       §§goto(addr199);
                                    }
                                    else
                                    {
                                       _loc6_.addEventListener(Event.SOUND_COMPLETE,this.§%s§);
                                    }
                                    §§goto(addr223);
                                 }
                              }
                              while(_loc8_)
                              {
                                 §§goto(addr34);
                              }
                              continue loop1;
                           }
                           §§goto(addr20);
                        }
                        addr52:
                        return;
                        addr48:
                     }
                     §§goto(addr70);
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §`#%§(param1:§=#P§) : §4!5§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!5§ = null;
         if(_loc4_)
         {
            if(param1.§4#=§ != "")
            {
               _loc2_ = §?!r§.§3!,§(param1.§4#=§,param1.songId,param1.§]X§,param1.§+"#§,param1.§;#1§,param1.volume);
               addr26:
            }
            else
            {
               _loc2_ = §?!r§.§"#_§(param1.songId,param1.§+"#§,param1.§;#1§,param1.volume);
            }
            return _loc2_;
         }
         §§goto(addr26);
      }
      
      private function §'"^§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-L§();
         }
         while(true)
         {
            this.§2"S§();
            while(_loc3_)
            {
               this.§,y§(this.§%#a§,true,false);
               while(!_loc2_)
               {
                  this.§%#a§ = null;
                  if(_loc3_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §`"R§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§-L§();
         }
      }
      
      private function §%s§(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         if(_loc4_ || _loc3_)
         {
            this.§-L§();
            while(true)
            {
               this.§2"S§();
               loop1:
               for(; this.§#"Z§.length > 0; if(!(_loc4_ || _loc2_))
               {
                  continue;
               })
               {
                  loop2:
                  while(true)
                  {
                     _loc2_ = this.§#"Z§[0];
                     while(true)
                     {
                        this.§#"Z§.splice(0,1);
                        loop4:
                        while(_loc4_ || _loc3_)
                        {
                           continue loop1;
                           while(true)
                           {
                              this.§,y§(_loc2_,true,false);
                              if(_loc4_ || _loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      private function §2"S§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!§ = null;
         }
         var _loc1_:§4!5§ = this.§;"Q§();
         if(!(_loc2_ && this))
         {
            if(_loc1_)
            {
               if(_loc3_ || _loc1_)
               {
                  addr62:
                  _loc1_.removeEventListener(Event.SOUND_COMPLETE,this.§%s§);
               }
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
