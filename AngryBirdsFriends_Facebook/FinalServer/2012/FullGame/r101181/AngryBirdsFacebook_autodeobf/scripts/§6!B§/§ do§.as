package §6!B§
{
   import flash.events.Event;
   
   public class § do§
   {
       
      
      private var §!v§:String = "";
      
      private var §--§:String = "";
      
      private var §8!'§:String = "";
      
      private var §@!J§:Boolean = false;
      
      private var §]S§:Vector.<§@k§>;
      
      private var §!";§:§7!L§;
      
      public function § do§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§!";§ = new §7!L§();
               loop1:
               while(_loc2_)
               {
                  this.§]S§ = new Vector.<§@k§>();
                  while(true)
                  {
                     §>!E§.addEventListener(§`!p§.§5!Q§,this.§'[§);
                     loop3:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           §>!E§.addEventListener(§33§.§=!C§,this.§2!4§);
                           do
                           {
                              §>!E§.addEventListener(§33§.§<!B§,this.§2!4§);
                           }
                           while(!(_loc2_ || _loc2_));
                           
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §&g§() : §,!p§
      {
         var _loc1_:§7M§ = §>!E§.§"h§(this.§--§);
         return _loc1_.§?"+§(this.§!v§);
      }
      
      private function §3K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§!";§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§#!i§);
               loop2:
               for(; _loc1_ || this; §§push(this.§!";§),if(!_loc1_)
               {
                  continue;
               },§§goto(addr28))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§!9§);
                  while(_loc1_)
                  {
                     continue loop2;
                     §§pop().§]!n§(this.§!v§);
                     if(_loc1_ || this)
                     {
                        return;
                     }
                  }
                  while(true)
                  {
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §5!$§(param1:String) : §@k§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§]S§.length)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  if(!(_loc4_ && this))
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(param1 == this.§]S§[_loc2_].songId)
            {
               break;
            }
            _loc2_++;
         }
         return this.§]S§[_loc2_];
      }
      
      private function §-I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§>!E§.§"h§(this.§--§) != null)
            {
               if(_loc1_ || _loc1_)
               {
                  §>!E§.§1!;§(this.§--§);
               }
               return true;
            }
            else
            {
               addr29:
               §§push(false);
               if(_loc1_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr29);
      }
      
      public function §9!U§(param1:§@k§, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            if(param2)
            {
               if(!(_loc5_ && param2))
               {
                  addr104:
                  _loc3_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc3_ >= this.§]S§.length)
                  {
                     if(!(_loc5_ && param2))
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§]S§.push(param1);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(_loc4_)
                           {
                              break loop0;
                           }
                           addr89:
                           while(true)
                           {
                              this.§]S§.splice(_loc3_,1);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                  }
                  else if(param1.songId == this.§]S§[_loc3_].songId)
                  {
                     §§goto(addr89);
                  }
                  while(true)
                  {
                     _loc3_++;
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr104);
      }
      
      public function §%"7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3K§();
         }
         loop0:
         while(true)
         {
            this.§-I§();
            while(true)
            {
               this.§!v§ = "";
               while(!(_loc2_ && _loc1_))
               {
                  continue loop0;
                  this.§--§ = "";
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §"!r§(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,!p§ = null;
         if(!_loc5_)
         {
            §§push(this.§!v§ == param1);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                                 addr98:
                              }
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       return;
                                    }
                                 }
                                 this.§@!J§ = param2;
                                 if(_loc4_)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§8!'§ = param1;
                                       while(true)
                                       {
                                          §§push(§>!E§.§"h§(this.§--§));
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(§§pop() == null);
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(!§§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr48:
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§pop();
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(true)
                                                            {
                                                               §§push(§>!E§.§"h§(this.§--§));
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue;
                                                         addr199:
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break loop1;
                                                   }
                                                   addr199:
                                                   return;
                                                }
                                                this.§#!i§();
                                                §§goto(addr199);
                                                §§goto(addr199);
                                             }
                                             §§goto(addr48);
                                          }
                                          break;
                                       }
                                       §§push(§§pop().§5%§());
                                       if(_loc4_)
                                       {
                                          addr137:
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 break;
                              }
                           }
                           _loc3_ = this.§&g§();
                           if(!_loc5_)
                           {
                              this.§3K§();
                              addr187:
                              this.§!";§.addEventListener(Event.COMPLETE,this.§#!i§);
                              addr184:
                              addr195:
                              addr192:
                              §§push(this.§!";§);
                              if(_loc4_ || this)
                              {
                                 §§pop().§8W§(this.§!v§,_loc3_,0.5);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr182:
                                       if(false)
                                       {
                                          §§goto(addr184);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr182);
                        }
                        addr126:
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr199);
      }
      
      public function §5b§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(this.§!v§ == param1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr77:
                     do
                     {
                        §§push(param3);
                        if(!(_loc8_ && this))
                        {
                           if(!_loc7_)
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                        }
                     }
                     while(!_loc8_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.§@!J§ = false;
                        while(_loc7_ || param3)
                        {
                           this.§%"7§();
                           if(!_loc8_)
                           {
                              if(!(_loc8_ && param2))
                              {
                                 if(true)
                                 {
                                    break loop4;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                     var _loc4_:§@k§;
                     if((_loc4_ = this.§5!$§(param1)) == null)
                     {
                        if(_loc7_ || param1)
                        {
                           return;
                        }
                     }
                     this.§!v§ = _loc4_.songId;
                     addr120:
                     this.§--§ = _loc4_.§%!5§;
                     if(!(_loc8_ && param3))
                     {
                        this.§8!'§ = "";
                        if(!_loc8_)
                        {
                           if(false)
                           {
                              §§goto(addr120);
                           }
                           var _loc5_:§7M§;
                           if(!(_loc5_ = §>!E§.§"h§(this.§--§)))
                           {
                              if(!(_loc8_ && param2))
                              {
                                 §>!E§.§0I§(this.§--§,1,1);
                              }
                           }
                           var _loc6_:§,!p§;
                           if((_loc6_ = this.§&x§(_loc4_)) == null)
                           {
                              if(_loc7_ || param2)
                              {
                                 return;
                              }
                              addr245:
                              §§push(this.§!";§);
                              if(!(_loc7_ || param1))
                              {
                                 addr240:
                                 §§pop().addEventListener(Event.COMPLETE,this.§!9§);
                                 §§goto(addr245);
                              }
                              §§pop().§2!9§(this.§!v§,_loc6_,0.5);
                           }
                           else if(param2)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§goto(addr240);
                                 §§push(this.§!";§);
                              }
                              §§goto(addr245);
                           }
                           else
                           {
                              _loc6_.volume = 1;
                              if(!_loc8_)
                              {
                                 if(_loc8_ && param3)
                                 {
                                    §§goto(addr245);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           addr183:
                           return;
                        }
                        §§goto(addr120);
                     }
                     addr137:
                     §§goto(addr137);
                  }
                  if(_loc7_ || param3)
                  {
                     break;
                  }
                  §§goto(addr77);
               }
            }
         }
      }
      
      private function §&x§(param1:§@k§) : §,!p§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,!p§ = null;
         if(!(_loc3_ && param1))
         {
            if(param1.§@!c§ != "")
            {
               _loc2_ = §>!E§.§;!0§(param1.§@!c§,param1.songId,param1.§2d§,param1.§%!5§,param1.§&!a§,param1.volume);
               addr41:
            }
            else
            {
               _loc2_ = §>!E§.§7N§(param1.songId,param1.§%!5§,param1.§&!a§,param1.volume);
            }
            return _loc2_;
         }
         §§goto(addr41);
      }
      
      private function §#!i§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5b§(this.§8!'§,true,this.§@!J§);
         }
      }
      
      private function §!9§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!";§.removeEventListener(Event.COMPLETE,this.§!9§);
         }
      }
      
      private function §'[§(param1:§`!p§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§"4§ == this.§!v§)
            {
               if(!_loc3_)
               {
                  this.§%"7§();
               }
            }
         }
      }
      
      private function §2!4§(param1:§33§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.type != §33§.§<!B§)
            {
               this.§3K§();
               loop0:
               for(; _loc3_; while(true)
               {
                  if(_loc3_ || this)
                  {
                     continue;
                  }
                  continue loop0;
               },§§goto(addr101))
               {
                  if(!(_loc2_ && param1))
                  {
                     if(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           this.§!v§ = "";
                           continue loop0;
                        }
                        addr91:
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           this.§!v§ = "";
                           addr114:
                           while(true)
                           {
                              this.§3K§();
                              continue loop1;
                           }
                        }
                        addr25:
                        return;
                        addr60:
                     }
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§--§ = "";
                        break loop0;
                     }
                     addr109:
                     while(true)
                     {
                        if(param1.§%!5§ == this.§--§)
                        {
                           §§goto(addr114);
                        }
                        else
                        {
                           §§goto(addr60);
                        }
                     }
                  }
               }
               §§goto(addr25);
            }
            §§goto(addr109);
         }
         §§goto(addr91);
      }
   }
}
