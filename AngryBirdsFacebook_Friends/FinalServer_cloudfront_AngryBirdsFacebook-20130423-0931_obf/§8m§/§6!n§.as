package §8m§
{
   import flash.events.Event;
   
   public class §6!n§
   {
       
      
      private var §=!w§:String = "";
      
      private var §!"V§:String = "";
      
      private var §6!q§:String = "";
      
      private var §&u§:Boolean = false;
      
      private var §>"-§:Vector.<§3!b§>;
      
      private var §'">§:§6§;
      
      public function §6!n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§'">§ = new §6§();
            while(true)
            {
               this.§>"-§ = new Vector.<§3!b§>();
               addr104:
               while(true)
               {
                  §@"M§.addEventListener(§!2§.§,3§,this.§^&§);
                  continue loop0;
               }
               addr64:
               if(_loc1_ || this)
               {
                  §@"M§.addEventListener(§&!e§.§=A§,this.§9"U§);
                  addr71:
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr60:
                  }
                  while(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr64);
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §#R§() : §7!>§
      {
         var _loc1_:§;!`§ = §@"M§.§^!5§(this.§!"V§);
         return _loc1_.§ "?§(this.§=!w§);
      }
      
      private function §+U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§'">§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§<+§);
               loop1:
               while(true)
               {
                  §§push(this.§'">§);
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§@!E§);
                     while(true)
                     {
                        §§push(this.§'">§);
                        if(_loc1_)
                        {
                           break;
                        }
                        if(!_loc1_)
                        {
                           §§pop().§7I§(this.§=!w§);
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §#J§(param1:String) : §3!b§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§>"-§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               while(!_loc4_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr54:
            }
            else if(param1 == this.§>"-§[_loc2_].songId)
            {
               if(!(_loc3_ && this))
               {
                  return this.§>"-§[_loc2_];
               }
               §§goto(addr78);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr54);
            }
         }
         return null;
      }
      
      private function §'!r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§@"M§.§^!5§(this.§!"V§) != null)
            {
               if(_loc2_)
               {
                  §@"M§.§]!n§(this.§!"V§);
               }
               return true;
            }
            else
            {
               addr30:
               §§push(false);
               if(!(_loc1_ && _loc1_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr30);
      }
      
      public function §>S§(param1:§3!b§, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            if(param2)
            {
               if(!(_loc4_ && this))
               {
                  _loc3_ = 0;
                  addr102:
                  loop6:
                  while(true)
                  {
                     if(_loc3_ >= this.§>"-§.length)
                     {
                        addr32:
                        if(_loc5_)
                        {
                           addr34:
                           while(true)
                           {
                              this.§>"-§.push(param1);
                           }
                           addr34:
                        }
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_ || param1)
                              {
                                 return;
                              }
                              addr85:
                              while(true)
                              {
                                 this.§>"-§.splice(_loc3_,1);
                                 addr90:
                                 while(true)
                                 {
                                    addr59:
                                    while(true)
                                    {
                                       _loc3_++;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop6;
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr32);
                        }
                        §§goto(addr34);
                     }
                     else if(param1.songId == this.§>"-§[_loc3_].songId)
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr59);
                  }
                  addr102:
               }
               §§goto(addr102);
            }
            §§goto(addr34);
         }
         §§goto(addr102);
      }
      
      public function § !Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§+U§();
            loop0:
            do
            {
               this.§'!r§();
               while(true)
               {
                  this.§=!w§ = "";
                  while(!_loc2_)
                  {
                     this.§!"V§ = "";
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
      }
      
      public function §3%§(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!>§ = null;
         if(!(_loc5_ && param2))
         {
            §§push(this.§=!w§ == param1);
            if(_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              §§push(!§§pop());
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                 }
                                 addr122:
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    this.§&u§ = param2;
                                    addr112:
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§6!q§ = param1;
                                          if(_loc4_ || param2)
                                          {
                                             if(_loc5_ && this)
                                             {
                                                addr124:
                                                if(_loc4_)
                                                {
                                                   return;
                                                }
                                                continue loop1;
                                             }
                                             §§push(§@"M§.§^!5§(this.§!"V§));
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(§§pop() == null);
                                                if(_loc5_ && _loc3_)
                                                {
                                                   addr152:
                                                   §§push(Boolean(§§pop()));
                                                }
                                                else
                                                {
                                                   addr152:
                                                }
                                                §§push(!§§pop());
                                                if(!(_loc4_ || param1))
                                                {
                                                   break loop1;
                                                }
                                                continue loop0;
                                                break loop1;
                                             }
                                             addr144:
                                             §§push(§§pop().§6",§());
                                             if(!(_loc5_ && param1))
                                             {
                                                §§goto(addr152);
                                             }
                                             break loop1;
                                             §§goto(addr152);
                                          }
                                          break;
                                       }
                                       return;
                                    }
                                 }
                              }
                              §§goto(addr124);
                           }
                        }
                        addr153:
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              _loc3_ = this.§#R§();
                              if(_loc4_)
                              {
                                 this.§+U§();
                              }
                              loop7:
                              while(true)
                              {
                                 addr187:
                                 addr206:
                                 while(true)
                                 {
                                    §§push(this.§'">§);
                                    addr190:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§<+§);
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.§<+§();
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr153);
         }
         §§goto(addr77);
      }
      
      public function §8!9§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            §§push(this.§=!w§ == param1);
            if(!(_loc8_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr87:
                     loop5:
                     while(true)
                     {
                        §§push(param3);
                        if(!(_loc8_ && param3))
                        {
                           if(!_loc7_)
                           {
                              continue;
                           }
                           addr61:
                           §§push(!§§pop());
                           while(true)
                           {
                              §§goto(addr61);
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              return;
                           }
                           while(true)
                           {
                              this.§&u§ = false;
                              do
                              {
                                 this.§ !Z§();
                              }
                              while(!_loc7_);
                              
                              if(_loc8_ && param1)
                              {
                                 if(_loc7_ || param2)
                                 {
                                    continue;
                                 }
                                 continue loop5;
                              }
                              if(!(_loc8_ && this))
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc4_:§3!b§;
                                 if((_loc4_ = this.§#J§(param1)) == null)
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    this.§=!w§ = _loc4_.songId;
                                 }
                                 addr127:
                                 this.§!"V§ = _loc4_.§0!e§;
                                 this.§6!q§ = "";
                                 addr137:
                                 if(_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr127);
                                       }
                                       var _loc5_:§;!`§;
                                       if(!(_loc5_ = §@"M§.§^!5§(this.§!"V§)))
                                       {
                                          if(_loc7_ || param3)
                                          {
                                             §@"M§.§set §(this.§!"V§,1,1);
                                          }
                                       }
                                       var _loc6_:§7!>§;
                                       if((_loc6_ = this.§8X§(_loc4_)) == null)
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          if(!param2)
                                          {
                                             _loc6_.volume = 1;
                                             if(!(_loc8_ && this))
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr230:
                                                      this.§'">§.addEventListener(Event.COMPLETE,this.§@!E§);
                                                      §§push(this.§'">§);
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr230);
                                                      }
                                                      §§pop().§@!p§(this.§=!w§,_loc6_,0.5);
                                                      addr235:
                                                      addr225:
                                                      addr228:
                                                   }
                                                   return;
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr137);
                                 }
                                 addr132:
                                 §§goto(addr132);
                              }
                           }
                           continue loop5;
                        }
                     }
                  }
                  addr86:
               }
               §§goto(addr62);
            }
            §§goto(addr86);
         }
         §§goto(addr87);
      }
      
      private function §8X§(param1:§3!b§) : §7!>§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!>§ = null;
         if(_loc4_ || _loc3_)
         {
            if(param1.§3O§ != "")
            {
               _loc2_ = §@"M§.§!8§(param1.§3O§,param1.songId,param1.§>;§,param1.§0!e§,param1.§6![§,param1.volume);
               addr41:
            }
            else
            {
               _loc2_ = §@"M§.§3"C§(param1.songId,param1.§0!e§,param1.§6![§,param1.volume);
            }
            return _loc2_;
         }
         §§goto(addr41);
      }
      
      private function §<+§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§8!9§(this.§6!q§,true,this.§&u§);
         }
      }
      
      private function §@!E§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'">§.removeEventListener(Event.COMPLETE,this.§@!E§);
         }
      }
      
      private function §^&§(param1:§!2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§+h§ == this.§=!w§)
            {
               if(!_loc3_)
               {
                  this.§ !Z§();
               }
            }
         }
      }
      
      private function §9"U§(param1:§&!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.type != §&!e§.§=A§)
            {
               this.§+U§();
               loop0:
               while(true)
               {
                  this.§=!w§ = "";
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        if(!(_loc3_ || _loc3_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        addr91:
                        break;
                     }
                     addr102:
                     while(true)
                     {
                        if(param1.§0!e§ != this.§!"V§)
                        {
                           break loop2;
                        }
                        if(_loc3_ || _loc3_)
                        {
                           this.§+U§();
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr20);
               }
            }
            §§goto(addr102);
         }
         §§goto(addr91);
      }
   }
}
