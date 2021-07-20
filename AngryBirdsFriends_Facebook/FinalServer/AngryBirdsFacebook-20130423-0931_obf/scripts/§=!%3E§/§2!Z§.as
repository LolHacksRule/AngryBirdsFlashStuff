package §=!>§
{
   import §@!"§.§?l§;
   
   public class §2!Z§
   {
      
      private static const §@!y§:Boolean = true;
      
      public static var §25§:Object = null;
      
      public static var §'!n§:String = "30% OFF";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@!y§ = true;
         }
         while(true)
         {
            §25§ = null;
            while(_loc2_)
            {
               §'!n§ = "30% OFF";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §2!Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:* = NaN;
         if(!(_loc7_ && §2!Z§))
         {
            §§push(§?l§.§#V§);
            if(_loc6_)
            {
               §§push(Boolean(§§pop()));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || §2!Z§)
                     {
                        §§pop();
                        if(_loc6_ || §2!Z§)
                        {
                           addr52:
                           §§push(§@!y§);
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr64);
                     }
                  }
                  addr56:
                  §§goto(addr55);
               }
               addr55:
               if(§§pop())
               {
                  if(_loc6_ || §2!Z§)
                  {
                     §25§ = {
                        "id":"MightyEagle",
                        "prices":[{
                           "q":20,
                           "p":10
                        },{
                           "q":50,
                           "p":20
                        },{
                           "q":150,
                           "p":50
                        },{
                           "q":400,
                           "p":100
                        },{
                           "q":1000,
                           "p":200,
                           "cp":100,
                           "cs":1357560687759,
                           "ce":1357565687759
                        }]
                     };
                     addr64:
                  }
               }
               loop0:
               for each(_loc2_ in param1)
               {
                  if(_loc6_)
                  {
                     §§push(§%"S§.§!C§.§9"%§.§ Y§.§?!;§);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr185:
                        while(true)
                        {
                           _loc3_ = §§pop();
                        }
                     }
                     addr184:
                  }
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop5:
                        while(!_loc7_)
                        {
                           §§push(§§pop() > _loc2_.cs);
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    addr176:
                                    while(!_loc7_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() < _loc2_.ce);
                                          if(!_loc6_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr184);
                                       }
                                       continue loop8;
                                    }
                                    continue loop3;
                                 }
                                 addr175:
                              }
                              while(§§pop())
                              {
                                 if(_loc6_ || §2!Z§)
                                 {
                                    §25§ = _loc2_;
                                 }
                                 if(!_loc7_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr176);
                              }
                              continue loop0;
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr185);
                     }
                  }
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      public static function §&9§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§25§ == null);
            if(_loc1_ || _loc2_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr50:
                        §§pop();
                        return §5"S§() > 0;
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public static function §5"S§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = NaN;
         var _loc2_:* = 0;
         if(_loc4_ || §2!Z§)
         {
            if(!§25§)
            {
               §§push(0);
               if(_loc4_ || _loc2_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
                  loop0:
                  while(true)
                  {
                     if(_loc3_ && _loc1_)
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr131:
                     while(true)
                     {
                        §§push(§%"S§.§!C§.§9"%§.§ Y§.§?!;§);
                        if(_loc4_ || _loc1_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop2:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr145:
                           while(true)
                           {
                              §§push(§25§["prices"][4]["ce"] - _loc1_);
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              addr126:
                              §§push(int(§§pop()));
                              continue loop0;
                           }
                        }
                     }
                  }
                  return _loc2_;
               }
            }
            §§goto(addr131);
         }
         §§goto(addr145);
      }
      
      public static function §2"I§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = Number(§5"S§());
         var _loc2_:* = Math.floor(_loc1_ / 3600);
         if(_loc5_)
         {
            §§push(_loc1_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() - _loc2_ * 3600);
               if(!(_loc6_ && §2!Z§))
               {
                  addr48:
                  §§push(Number(§§pop()));
               }
               _loc1_ = §§pop();
               addr50:
               var _loc3_:* = Math.floor(_loc1_ / 60);
               if(!_loc6_)
               {
                  §§push(_loc1_);
                  if(_loc5_)
                  {
                     §§push(§§pop() - _loc3_ * 60);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
               }
               var _loc4_:* = Math.floor(_loc1_);
               if(!_loc6_)
               {
                  if(_loc2_ < 10)
                  {
                     if(_loc5_)
                     {
                        addr92:
                        §§push("0");
                        if(_loc5_ || _loc1_)
                        {
                           §§push(§§pop() + _loc2_);
                           if(_loc5_ || §2!Z§)
                           {
                              _loc2_ = §§pop();
                              addr111:
                              if(_loc3_ < 10)
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    addr121:
                                    §§push("0");
                                    if(_loc5_ || §2!Z§)
                                    {
                                       §§push(§§pop() + _loc3_);
                                       if(_loc5_ || _loc2_)
                                       {
                                          _loc3_ = §§pop();
                                          addr140:
                                          if(_loc4_ < 10)
                                          {
                                             addr143:
                                             §§push("0");
                                             if(!(_loc6_ && _loc1_))
                                             {
                                                addr151:
                                                §§push(§§pop() + _loc4_);
                                                if(_loc5_)
                                                {
                                                   addr165:
                                                   _loc4_ = §§pop();
                                                }
                                                addr192:
                                                return §§pop() + _loc4_;
                                                addr190:
                                             }
                                             §§goto(addr165);
                                          }
                                          §§push(_loc2_ + ":");
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + _loc3_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(§§pop() + ":");
                                                if(_loc5_ || §2!Z§)
                                                {
                                                   §§goto(addr190);
                                                }
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr111);
               }
               §§goto(addr92);
            }
            §§goto(addr48);
         }
         §§goto(addr50);
      }
   }
}
