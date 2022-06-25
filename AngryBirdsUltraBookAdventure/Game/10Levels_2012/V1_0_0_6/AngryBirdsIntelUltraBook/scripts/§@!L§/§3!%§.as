package §@!L§
{
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §3!%§ extends §9N§
   {
      
      public static const §"!c§:Number = 1024;
      
      public static const §%g§:Number = 658;
      
      public static const §#!v§:Number = 55;
      
      public static const §@%§:String = "cubic_in_out";
      
      public static const §,!+§:String = "sin_in_out";
      
      public static const §[I§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"!c§ = 1024;
            loop0:
            while(true)
            {
               §%g§ = 658;
               while(true)
               {
                  §#!v§ = 55;
                  while(_loc1_)
                  {
                     §@%§ = "cubic_in_out";
                     if(_loc1_ || §3!%§)
                     {
                        return;
                        addr51:
                     }
                  }
                  continue loop0;
                  addr73:
                  if(!(_loc2_ && §3!%§))
                  {
                     §[I§ = "none";
                     if(!(_loc2_ && §3!%§))
                     {
                        §§goto(addr34);
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc2_ && §3!%§))
                        {
                           §§goto(addr73);
                        }
                        else
                        {
                           while(true)
                           {
                              §,!+§ = "sin_in_out";
                              continue loop4;
                           }
                           §§goto(addr51);
                           addr85:
                        }
                     }
                     addr80:
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private var §1!T§:String;
      
      private var §#!u§:Number;
      
      private var §<h§:Number;
      
      private var §2!d§:Number;
      
      private var §@@§:Number;
      
      private var §9!u§:Boolean = true;
      
      private var §4g§:String = "cubic_in_out";
      
      public function §3!%§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            super(param1,param2);
            while(true)
            {
               this.§1!T§ = param3;
               loop1:
               while(!_loc8_)
               {
                  this.§#!u§ = param4;
                  loop2:
                  do
                  {
                     this.§<h§ = param5;
                     while(!_loc8_)
                     {
                        this.§4g§ = param6;
                        if(!(_loc8_ && this))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc8_ && param3);
                  
               }
            }
         }
      }
      
      public function set §8?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!u§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_ || param3)
                     {
                        addr43:
                        param1 = §§pop();
                        if(!(_loc6_ && this))
                        {
                           addr51:
                           §§push(param1);
                           if(!(_loc6_ && param2))
                           {
                              addr59:
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    addr69:
                                    if(_loc4_ = param2.getChildByName(this.§1!T§))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc4_.name == § M§.§;!_§)
                                          {
                                             if(_loc5_)
                                             {
                                                if(this.§9!u§)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr106:
                                                      §§push(_loc4_);
                                                      §§push(this.§@m§());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(§§pop() * this.§]h§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(_loc6_ && param1)
                                                      {
                                                         do
                                                         {
                                                            §§push(_loc4_);
                                                            §§push(_loc4_.y);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() - this.§<h§);
                                                            }
                                                            §§pop().y = §§pop();
                                                         }
                                                         while(_loc6_ && param1);
                                                         
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            if(false)
                                                            {
                                                            }
                                                            addr197:
                                                            if(param1 >= this.time + duration)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr205:
                                                                  §§push(false);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr214:
                                                                  return true;
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         else
                                                         {
                                                            addr196:
                                                         }
                                                         addr174:
                                                      }
                                                      else
                                                      {
                                                         addr131:
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§@m§());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() * this.§]h§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                             }
                                             §§goto(addr196);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(§§pop() - this.§#!u§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr205);
                              }
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr69);
               }
               §§goto(addr51);
            }
            §§goto(addr43);
         }
         §§goto(addr214);
      }
      
      private function §]h§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               §§push(§§pop() / duration);
               if(_loc5_ && this)
               {
               }
               addr39:
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§4g§;
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§@%§);
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || param1)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_ || param1)
                           {
                              addr246:
                              §§push(0);
                              if(_loc5_)
                              {
                                 addr261:
                              }
                           }
                           else
                           {
                              addr253:
                              §§push(1);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§goto(addr261);
                              }
                           }
                           §§goto(addr266);
                        }
                        else
                        {
                           §§goto(addr252);
                        }
                     }
                     §§goto(addr252);
                  }
                  addr252:
                  if(§,!+§ === _loc3_)
                  {
                     §§goto(addr253);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr266:
                  loop8:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(_loc2_);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr201:
                           §§push(§§pop() * 2);
                        }
                        loop0:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop1:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    break loop8;
                                 }
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(1);
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(Math.pow(_loc2_,3) / 2);
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§push(_loc2_);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(2);
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr155:
                                                }
                                                while(_loc4_ || _loc2_)
                                                {
                                                   _loc2_ = §§pop();
                                                   return (Math.pow(_loc2_,3) + 2) / 2;
                                                }
                                                break loop3;
                                                addr156:
                                             }
                                             continue loop3;
                                          }
                                          addr150:
                                       }
                                       §§goto(addr155);
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              break loop8;
                           }
                        }
                        return §§pop();
                     case 1:
                        §§push(Math.cos(Math.PI * _loc2_) - 1);
                        if(_loc4_ || param1)
                        {
                           §§push(-§§pop());
                           if(!(_loc5_ && this))
                           {
                              if(!_loc5_)
                              {
                                 §§push(2);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       addr84:
                                       if(_loc4_ || _loc2_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr201);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr156);
                           }
                           break;
                        }
                        §§goto(addr84);
                  }
                  return _loc2_;
               }
               §§goto(addr246);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr39);
      }
      
      protected function §@m§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§9!u§)
            {
               if(!_loc2_)
               {
                  addr43:
                  §§push(this.§2!d§);
                  if(!_loc2_)
                  {
                     §§push(§"!c§);
                     if(_loc1_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc1_ || this)
                        {
                           return §§pop();
                        }
                        addr68:
                        §§push(§%g§);
                     }
                     return §§pop() - §§pop();
                  }
               }
               else
               {
                  addr59:
                  §§push(this.§@@§);
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr68);
                  }
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr43);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§2!d§ = param1;
         }
         do
         {
            this.§@@§ = param2;
         }
         while(!_loc4_);
         
      }
      
      override public function clone() : §9N§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3!%§ = new §3!%§(time,duration,this.§1!T§,this.§#!u§,this.§<h§,this.§4g§);
         if(_loc3_)
         {
            _loc1_.§2!d§ = this.§2!d§;
            while(true)
            {
               _loc1_.§@@§ = this.§@@§;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            _loc1_.§9!u§ = this.§9!u§;
            if(_loc3_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
