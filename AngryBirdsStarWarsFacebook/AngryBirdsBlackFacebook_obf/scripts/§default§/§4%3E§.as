package §default§
{
   import §#f§.§3@§;
   import §,;§.§8#,§;
   import §6=§.§+!,§;
   import §6Z§.§>"K§;
   import §>!c§.§?!;§;
   import §]!"§.§+"d§;
   import §]"U§.§ !X§;
   import com.furusystems.dconsole2.DConsole;
   
   public final class §4>§
   {
       
      
      private var §#L§:DConsole;
      
      private var §!!1§:§?!;§;
      
      private var §`#E§:Vector.<§`#O§>;
      
      private var §-"_§:§+"d§;
      
      private const §[!E§:Vector.<§2!n§>;
      
      private var §5"F§:§ !X§;
      
      public function §4>§(param1:DConsole, param2:§?!;§, param3:§+"d§, param4:§ !X§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§[!E§ = new Vector.<§2!n§>();
            while(true)
            {
               super();
            }
            addr99:
         }
         loop1:
         while(true)
         {
            this.§5"F§ = param4;
            loop2:
            while(true)
            {
               this.§!!1§ = param2;
               while(true)
               {
                  if(!_loc6_)
                  {
                     continue loop2;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  this.§#L§ = param1;
                  loop4:
                  while(true)
                  {
                     this.§-"_§ = param3;
                     while(true)
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                     continue loop1;
                  }
               }
               §§goto(addr99);
            }
         }
      }
      
      public function §%C§(param1:§`#O§, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§`#E§.length)
            {
               do
               {
                  param1.includeInHistory = param2;
                  do
                  {
                     this.§`#E§.push(param1);
                     do
                     {
                        if(!_loc5_)
                        {
                           throw new ArgumentError("Duplicate command trigger phrase: " + param1.trigger + " already in use");
                        }
                        addr107:
                        this.§`#E§.sort(this.§5!d§);
                     }
                     while(!(_loc5_ || param1));
                     
                  }
                  while(_loc4_ && _loc3_);
                  
               }
               while(!(_loc5_ || _loc3_));
               
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(_loc5_ || _loc3_)
               {
                  break;
               }
            }
            else if(this.§`#E§[_loc3_].trigger == param1.trigger)
            {
               §§goto(addr107);
            }
            _loc3_++;
         }
      }
      
      public function §=#I§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§`#E§.length)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
               addr92:
               loop1:
               while(true)
               {
                  if(_loc4_)
                  {
                     continue loop0;
                  }
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  if(_loc3_ && _loc2_)
                  {
                     break loop0;
                  }
                  addr46:
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               return;
            }
            if(this.§`#E§[_loc2_].trigger != param1)
            {
               §§goto(addr46);
            }
            break;
            §§goto(addr46);
         }
         this.§`#E§.splice(_loc2_,1);
         §§goto(addr92);
      }
      
      private function §5!d§(param1:§`#O§, param2:§`#O§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1.grouping == param2.grouping)
            {
               if(!_loc4_)
               {
                  addr45:
                  §§push(-1);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  return 1;
               }
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr45);
      }
      
      public function §else §(param1:String, param2:Function = null, param3:Boolean = false) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[5] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[7] = undefined;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(!_loc7_)
                        {
                           §§push(null);
                           if(!(_loc7_ && param3))
                           {
                              §§pop().§§slot[10] = §§pop();
                              loop6:
                              while(!(_loc7_ && this))
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr106:
                                    while(true)
                                    {
                                       §§pop().§§slot[1] = §§pop();
                                       loop9:
                                       while(_loc6_ || param2)
                                       {
                                          §§push(§§newactivation());
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().§§slot[2] = param2;
                                             addr95:
                                             while(!(_loc7_ && param3))
                                             {
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop10;
                                                   addr61:
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   try
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§8#,§.slice(cmdStr));
                                                         if(_loc6_ || this)
                                                         {
                                                            §§pop().§§slot[5] = §§pop();
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc6_)
                                                               {
                                                                  addr194:
                                                                  §§pop().§§slot[6] = args.shift().toLowerCase();
                                                                  if(_loc6_)
                                                                  {
                                                                     addr383:
                                                                     var commandObject:§`#O§ = null;
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           §§pop().§§slot[9] = int(this.§`#E§.length);
                                                                           addr381:
                                                                           §§push(§§newactivation());
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop().§§slot[9]);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 var i:int = §§pop();
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc6_ || param3)
                                                                                 {
                                                                                    addr255:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[8]);
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             if(§§pop() != null)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr272:
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[8]);
                                                                                                         if(_loc6_ || param3)
                                                                                                         {
                                                                                                            addr290:
                                                                                                            §§push(§§pop() is §4!<§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     addr302:
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr320:
                                                                                                                        §§pop().§§slot[10] = this.§]+§(args);
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ || param2))
                                                                                                                           {
                                                                                                                              §§goto(addr381);
                                                                                                                           }
                                                                                                                           try
                                                                                                                           {
                                                                                                                              addr394:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr397:
                                                                                                                                 §§pop().§§slot[7] = this.§;#@§(commandObject,commandArgs,sub);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       addr412:
                                                                                                                                       §§push(§§pop().§§slot[3]);
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(!(_loc7_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr436:
                                                                                                                                                   §§push(§§pop().§§slot[8].includeInHistory);
                                                                                                                                                   if(!(_loc7_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr453:
                                                                                                                                                            this.§!!1§.§&!4§(input);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr513);
                                                                                                                                                            }
                                                                                                                                                            addr460:
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr486:
                                                                                                                                                               §§push(§§pop().§§slot[3]);
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr492:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc6_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc7_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr508:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr602:
                                                                                                                                                                                 §§push(val == null);
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr618:
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr620:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       §§push(val == undefined);
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc7_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr620);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr618);
                                                                                                                                                                                       addr621:
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr595:
                                                                                                                                                                                       this.§#L§.§""W§(val);
                                                                                                                                                                                       addr600:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                    if(!(_loc7_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ || param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr602);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr547);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr618);
                                                                                                                                                                                 addr511:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr621);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr618);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr508);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr620);
                                                                                                                                                            addr460:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr600);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr460);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr492);
                                                                                                                                                }
                                                                                                                                                §§goto(addr486);
                                                                                                                                             }
                                                                                                                                             §§goto(addr595);
                                                                                                                                          }
                                                                                                                                          §§goto(addr460);
                                                                                                                                       }
                                                                                                                                       §§goto(addr620);
                                                                                                                                    }
                                                                                                                                    §§goto(addr436);
                                                                                                                                 }
                                                                                                                                 §§goto(addr595);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           catch(e:Error)
                                                                                                                           {
                                                                                                                              throw e;
                                                                                                                           }
                                                                                                                           addr547:
                                                                                                                           return §§pop().§§slot[7];
                                                                                                                        }
                                                                                                                        §§goto(addr460);
                                                                                                                     }
                                                                                                                     §§goto(addr412);
                                                                                                                  }
                                                                                                                  §§goto(addr453);
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc7_ && param2))
                                                                                                               {
                                                                                                                  addr212:
                                                                                                                  §§pop().§§slot[10] = this.§[E§(args,commandObject is §=W§);
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        addr231:
                                                                                                                        §§goto(addr255);
                                                                                                                     }
                                                                                                                     §§goto(addr394);
                                                                                                                  }
                                                                                                                  §§goto(addr595);
                                                                                                               }
                                                                                                               §§goto(addr412);
                                                                                                            }
                                                                                                            §§goto(addr620);
                                                                                                         }
                                                                                                         §§goto(addr436);
                                                                                                      }
                                                                                                      §§goto(addr412);
                                                                                                   }
                                                                                                   §§goto(addr231);
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             addr513:
                                                                                             §§push(§§findproperty(§>"K§));
                                                                                             §§push("\'" + str);
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() + "\' is not a command.");
                                                                                             }
                                                                                             throw new §§pop().§>"K§(§§pop());
                                                                                          }
                                                                                          §§goto(addr290);
                                                                                       }
                                                                                       §§goto(addr383);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                              if(this.§`#E§[i].trigger.toLowerCase() == str)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr359:
                                                                                       §§pop().§§slot[8] = this.§`#E§[i];
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    §§goto(addr486);
                                                                                 }
                                                                                 §§goto(addr511);
                                                                              }
                                                                              §§goto(addr381);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr486);
                                                                        addr393:
                                                                     }
                                                                     §§goto(addr602);
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   catch(e:Error)
                                                   {
                                                      throw e;
                                                   }
                                                   §§goto(addr359);
                                                }
                                                continue loop6;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                           if(!(_loc7_ && this))
                           {
                              §§pop().§§slot[3] = param3;
                              while(true)
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc7_ && param2))
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(§3@§.§6""§(input));
                                          if(_loc7_ && param2)
                                          {
                                             continue;
                                          }
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(§§pop());
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr105);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr67);
                                 }
                                 §§goto(addr95);
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §?!u§(param1:Vector.<§2!n§>) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§2!n§ = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + (_loc3_.data + ", "));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §]+§(param1:Array) : Vector.<§2!n§>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§2!n§ = null;
         var _loc2_:Vector.<§2!n§> = new Vector.<§2!n§>();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            (_loc4_ = new §2!n§("",this,this.§-"_§,this.§5"F§,false)).data = param1[_loc3_];
            if(!(_loc6_ && _loc3_))
            {
               _loc2_.push(_loc4_);
               if(!(_loc5_ || this))
               {
                  continue;
               }
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §[E§(param1:Array, param2:Boolean = false) : Vector.<§2!n§>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§2!n§> = new Vector.<§2!n§>();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= param1.length)
            {
               if(_loc6_)
               {
                  continue;
               }
               if(_loc5_ || param1)
               {
                  break;
               }
            }
            else
            {
               _loc3_.push(new §2!n§(param1[_loc4_],this,this.§-"_§,this.§5"F§,param2 && _loc4_ == 0));
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §+A§(param1:Function, param2:Array) : *
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§2!n§ = null;
         var _loc3_:§7#,§ = new §7#,§("",param1);
         var _loc4_:Vector.<§2!n§> = new Vector.<§2!n§>();
         var _loc5_:int = 0;
         while(_loc5_ < param2.length)
         {
            (_loc6_ = new §2!n§("",this,this.§-"_§,this.§5"F§,false)).data = param2[_loc5_];
            if(_loc7_ || param1)
            {
               _loc4_.push(_loc6_);
               if(!(_loc8_ && this))
               {
                  _loc5_++;
               }
            }
         }
         return this.§;#@§(_loc3_,_loc4_,true);
      }
      
      public function §;#@§(param1:§`#O§, param2:Vector.<§2!n§> = null, param3:Boolean = false) : *
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[6] = undefined;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(null);
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[7] = §§pop();
                              loop7:
                              while(_loc7_ || param1)
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(§§newactivation());
                                    loop8:
                                    for(; !_loc8_; while(!(_loc8_ && this))
                                    {
                                       §§pop().§§slot[1] = param1;
                                       §§goto(addr245);
                                       §§goto(addr190);
                                    })
                                    {
                                       §§push(null);
                                       if(!(_loc7_ || param2))
                                       {
                                          continue loop6;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       §§pop().§§slot[8] = §§pop();
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop8;
                                          loop13:
                                          while(_loc7_ || param1)
                                          {
                                             §§push(§§newactivation());
                                             loop14:
                                             for(; _loc7_; if(!(_loc8_ && param2))
                                             {
                                                §§pop().§§slot[5] = 0;
                                                if(_loc8_ && param3)
                                                {
                                                   §§goto(addr161);
                                                }
                                                if(_loc8_ && param3)
                                                {
                                                   continue loop7;
                                                }
                                                addr21:
                                             },continue,§§push(§§newactivation()),if(!(_loc8_ && this))
                                             {
                                                §§push(§§pop().§§slot[5]);
                                                if(_loc7_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop() >= §§pop().§§slot[2].length)
                                                      {
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop().§§slot[1] is §7#,§)
                                                               {
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc7_)
                                                                     {
                                                                        addr63:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§pop().§§slot[7] = §§pop().§§slot[1] as §7#,§;
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc7_ || param3)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr84:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[5]);
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             addr103:
                                                                                             var i:int = §§pop() + 1;
                                                                                             addr105:
                                                                                             §§goto(addr21);
                                                                                             addr102:
                                                                                          }
                                                                                          §§goto(addr102);
                                                                                       }
                                                                                       §§pop().§§slot[6] = func.callback.apply(this,args);
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    try
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr312:
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    catch(e:ArgumentError)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          try
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   §§pop().§§slot[8] = §§pop().§§slot[4].join(" ");
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         if(§§pop().§§slot[8].length > 0)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr411:
                                                                                                            §§push(_loc4_);
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[7]);
                                                                                                               if(!(_loc8_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop().callback);
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     §§pop().§§slot[6] = §§pop().call(this);
                                                                                                                     addr371:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc7_ || param3)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr450:
                                                                                                                           §§push(func.callback);
                                                                                                                        }
                                                                                                                        return §§pop().§§slot[6];
                                                                                                                     }
                                                                                                                     §§goto(addr411);
                                                                                                                     addr434:
                                                                                                                  }
                                                                                                                  §§pop().§§slot[6] = §§pop().call(this,joint);
                                                                                                                  §§goto(addr371);
                                                                                                               }
                                                                                                               §§goto(addr450);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr411);
                                                                                                      }
                                                                                                      §§goto(addr450);
                                                                                                   }
                                                                                                   §§goto(addr434);
                                                                                                }
                                                                                                §§goto(addr450);
                                                                                             }
                                                                                             §§goto(addr411);
                                                                                          }
                                                                                          catch(e:Error)
                                                                                          {
                                                                                             §#L§.§""W§(e.message,§+!,§.ERROR);
                                                                                             return null;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    catch(e:Error)
                                                                                    {
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          §#L§.§""W§(e.getStackTrace(),§+!,§.ERROR);
                                                                                       }
                                                                                       return null;
                                                                                    }
                                                                                    §§goto(addr538);
                                                                                 }
                                                                                 addr125:
                                                                                 §§goto(addr84);
                                                                              }
                                                                              §§goto(addr105);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                     }
                                                                     §§goto(addr84);
                                                                  }
                                                                  return;
                                                               }
                                                               this.§#L§.§""W§("Abstract command, no action",§+!,§.ERROR);
                                                               addr538:
                                                               return null;
                                                            }
                                                            §§goto(addr63);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      §§push(§§newactivation());
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§pop().§§slot[4].push(commandArgs[i].data);
                                                         §§goto(addr125);
                                                      }
                                                      §§goto(addr84);
                                                   }
                                                }
                                                §§goto(addr103);
                                             },addr324:,return val)
                                             {
                                                §§pop().§§slot[3] = param3;
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop().§§slot[2])
                                                   {
                                                      if(_loc7_ || param2)
                                                      {
                                                         continue;
                                                      }
                                                      addr205:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr207:
                                                         if(!(_loc7_ || param1))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               break loop14;
                                                               §§goto(addr207);
                                                            }
                                                            addr245:
                                                         }
                                                         else
                                                         {
                                                            addr214:
                                                         }
                                                      }
                                                      addr205:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[4] = [];
                                                         addr161:
                                                         while(!(_loc8_ && param2))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break loop15;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop17;
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   continue loop13;
                                                }
                                                while(true)
                                                {
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§pop().§§slot[2] = this.§[!E§;
                                                   §§goto(addr205);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().§§slot[2] = param2;
                                                continue loop13;
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §0#]§(param1:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:String = "Available commands: ";
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr44:
                     addr34:
                     §§push(_loc2_);
                     §§push(" (search for \'" + param1);
                     if(_loc5_)
                     {
                        §§push(§§pop() + "\')");
                     }
                     _loc2_ = §§pop() + §§pop();
                     addr45:
                     this.§#L§.§""W§(_loc2_,§+!,§.§>y§);
                  }
                  var _loc3_:int = 0;
                  while(true)
                  {
                     if(_loc3_ >= this.§`#E§.length)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc5_)
                           {
                              if(!(_loc6_ && this))
                              {
                                 break;
                              }
                              addr110:
                              §§push(this.§`#E§[_loc3_].grouping + this.§`#E§[_loc3_].trigger + this.§`#E§[_loc3_].helpText + this.§`#E§[_loc3_].returnType);
                              if(!_loc6_)
                              {
                                 addr136:
                                 §§push(_loc4_ = §§pop());
                              }
                              if(§§pop().toLowerCase().indexOf(param1) == -1)
                              {
                                 addr143:
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_++;
                                    addr81:
                                    while(true)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue;
                                 addr79:
                              }
                              else
                              {
                                 addr144:
                                 §§push(this.§#L§);
                                 §§push("\t--> " + this.§`#E§[_loc3_].grouping);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + " : ");
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() + this.§`#E§[_loc3_].trigger);
                                    }
                                 }
                                 §§pop().§""W§(§§pop(),§+!,§.§>y§);
                              }
                              while(true)
                              {
                                 §§goto(addr79);
                              }
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr81);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              §§goto(addr110);
                           }
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr136);
                  }
                  return;
               }
               §§goto(addr45);
            }
            §§goto(addr44);
         }
         §§goto(addr34);
      }
      
      public function § `§(param1:String) : §`#O§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§`#E§.length);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               §§push(§§pop());
               if(_loc3_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            if(this.§`#E§[_loc2_].trigger.toLowerCase() == param1.split(" ")[0].toLowerCase())
            {
               if(_loc3_ || _loc3_)
               {
                  return this.§`#E§[_loc2_];
               }
               break;
            }
         }
         throw new Error("No command found");
      }
      
      public function §["K§(param1:String) : *
      {
         return param1;
      }
      
      public function §==§(param1:String) : Vector.<String>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§`#O§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         §§push(param1);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop().toLowerCase());
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         while(_loc4_ < this.§`#E§.length)
         {
            if((_loc5_ = this.§`#E§[_loc4_]).trigger.toLowerCase().indexOf(_loc3_,0) > -1)
            {
               if(!_loc7_)
               {
                  continue;
               }
               _loc2_.push(_loc5_.trigger);
               if(!(_loc7_ || param1))
               {
                  continue;
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
