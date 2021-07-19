package §#!V§
{
   public class §^P§ extends §[1§ implements §>!3§
   {
       
      
      private var §32§:Number;
      
      private var §'-§:Boolean;
      
      private var §=2§:Boolean;
      
      private var §2!C§:String;
      
      private var §`!^§:Object;
      
      private var §%[§:Object;
      
      private var § !;§:Object;
      
      public function §^P§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc6_ || param1)
               {
                  if(§§pop() <= 0)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc6_ || param2)
                        {
                           addr118:
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param4 = §§pop();
                              addr119:
                              while(true)
                              {
                              }
                           }
                           addr118:
                        }
                        §§goto(addr118);
                        addr45:
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        this.§'-§ = false;
                        if(!_loc7_)
                        {
                           addr25:
                           if(!(_loc7_ && param2))
                           {
                              addr32:
                              if(false)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    this.§=2§ = true;
                                    addr38:
                                    addr59:
                                    while(!(_loc7_ && param2))
                                    {
                                       §§goto(addr45);
                                    }
                                    addr73:
                                    while(true)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                continue loop9;
                                             }
                                             addr68:
                                          }
                                          else
                                          {
                                             §§goto(addr119);
                                          }
                                       }
                                       break;
                                       §§goto(addr38);
                                    }
                                    while(true)
                                    {
                                       §3-§ = 0;
                                       §§goto(addr59);
                                    }
                                 }
                              }
                              param2 = this.§5g§(param2,param1);
                              if(_loc6_)
                              {
                                 if(param3 != null)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       param3 = this.§5g§(param3,param2);
                                       if(_loc6_ || param3)
                                       {
                                          this.§@!U§(param2,param3);
                                          if(!_loc7_)
                                          {
                                             addr175:
                                             this.§`!^§ = param1;
                                             addr170:
                                          }
                                          return;
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 else
                                 {
                                    this.§@!U§(param2,param1);
                                 }
                              }
                              §§goto(addr175);
                           }
                           while(true)
                           {
                              this.§2!C§ = param5;
                              §§goto(addr73);
                              §§goto(addr25);
                           }
                           addr97:
                        }
                        §§goto(addr38);
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§32§ = §§pop();
                     §§goto(addr97);
                     §§goto(addr119);
                  }
               }
               §§goto(addr118);
            }
         }
         §§goto(addr68);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'-§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§=2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.stop();
            loop0:
            do
            {
               this.§`!^§ = null;
               while(true)
               {
                  this.§ !;§ = null;
                  while(_loc2_ || this)
                  {
                     this.§%[§ = null;
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc2_);
            
         }
      }
      
      public function § !R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3-§ = -§2K§;
            do
            {
               this.§'-§ = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §5g§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!(_loc8_ && param2))
            {
               §§push(param2[_loc4_] == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                    if(!(_loc8_ && this))
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                          addr115:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(param2[_loc4_] is Number);
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop8;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc7_ || this))
                                                         {
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc3_[_loc4_] = param1[_loc4_];
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            if(true)
                                                            {
                                                               break loop8;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             addr125:
                                          }
                                          §§goto(addr64);
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr125);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr115);
                     }
                  }
               }
            }
            §§goto(addr85);
         }
         return _loc3_;
      }
      
      private function §@!U§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc8_ || param2)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!(_loc8_ || this))
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc8_ || param1)
         {
            this.§ !;§ = _loc3_;
            do
            {
               this.§%[§ = _loc4_;
            }
            while(_loc9_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§'-§)
            {
               loop0:
               while(true)
               {
                  this.§'-§ = true;
                  addr81:
                  loop1:
                  while(true)
                  {
                     §='§ = null;
                     while(_loc1_ || _loc1_)
                     {
                        §3-§ = this.§32§;
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§'-§)
            {
               loop0:
               while(true)
               {
                  this.§'-§ = true;
                  addr75:
                  addr50:
                  while(true)
                  {
                     §3-§ = this.§32§;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §3J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=2§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§=2§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§=2§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && param1))
               {
                  addr161:
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr164:
                        loop11:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              addr129:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§goto(addr129);
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §3-§ += param1;
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop11;
                                       }
                                       if(§3-§ >= this.§32§)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             if(!§;m§)
                                             {
                                                §3-§ = 0;
                                                loop5:
                                                while(true)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         loop6:
                                                         while(!(_loc3_ && this))
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            this.§'-§ = true;
                                                            while(true)
                                                            {
                                                               §3-§ = this.§32§;
                                                               continue loop6;
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§=#§();
                                                         continue loop5;
                                                      }
                                                      return;
                                                      addr41:
                                                      §§goto(addr41);
                                                   }
                                                   addr84:
                                                   while(true)
                                                   {
                                                      §§goto(addr41);
                                                   }
                                                }
                                                §§goto(addr132);
                                             }
                                          }
                                          §§goto(addr99);
                                       }
                                       §§goto(addr41);
                                    }
                                    continue loop11;
                                 }
                              }
                              addr132:
                              return;
                           }
                        }
                     }
                     addr163:
                  }
                  §§goto(addr130);
               }
               §§goto(addr163);
            }
            §§goto(addr161);
         }
         §§goto(addr164);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §=#§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc1_)
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_)
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§"!<§());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  var _loc2_:int = 0;
                  if(!_loc5_)
                  {
                     var _loc3_:* = this.§ !;§;
                     if(!_loc4_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(_loc4_)
                        {
                           this.§`!^§[attribute] = this.§%[§[attribute] + this.§ !;§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(_loc4_ || this)
               {
                  §'-§ = true;
                  if(!_loc5_)
                  {
                     if(§^b§)
                     {
                     }
                  }
               }
               throw e;
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §0=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.isCompleted);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(§='§ == null);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr59);
                     }
                  }
                  §§goto(addr58);
               }
               §§push(!§§pop());
            }
            addr58:
            if(§§pop())
            {
               try
               {
                  addr59:
                  §='§();
                  if(!_loc3_)
                  {
                     §='§ = null;
                  }
               }
               catch(e:Error)
               {
                  var _loc2_:* = e;
                  if(!(_loc3_ && _loc2_))
                  {
                     §='§ = null;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr102);
                  }
                  if(!§^b§)
                  {
                     addr102:
                     throw e;
                  }
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      private function §"!<§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§32§);
            if(!_loc4_)
            {
               if(§§pop() <= 0)
               {
                  if(!(_loc4_ && this))
                  {
                     return 1;
                  }
                  addr34:
                  §§push(Number(Math.max(0,§3-§)));
               }
               §§goto(addr34);
            }
            var _loc1_:* = §§pop();
            if(_loc5_)
            {
               §§push(Number(Math.min(_loc1_,this.§32§)));
               if(_loc5_ || _loc1_)
               {
                  _loc1_ = §§pop();
                  §§goto(addr56);
               }
               §§goto(addr64);
            }
            addr56:
            §§push(_loc1_);
            if(_loc5_ || _loc1_)
            {
               addr64:
               §§push(§§pop() / this.§32§);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            §§push(this.§2!C§);
            loop0:
            while(true)
            {
               var _loc3_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  §§push(§';§.§!! §);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || _loc1_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(_loc5_ || _loc1_)
                              {
                              }
                           }
                           else
                           {
                              addr723:
                              §§push(1);
                              if(_loc4_)
                              {
                                 addr895:
                              }
                           }
                        }
                        else
                        {
                           §§push(§';§.§,!M§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr723);
                                    }
                                    else
                                    {
                                       addr805:
                                       §§push(4);
                                       if(!(_loc4_ && this))
                                       {
                                          addr918:
                                          loop1:
                                          while(true)
                                          {
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr920:
                                                   break loop1;
                                                case 1:
                                                case 2:
                                                   §§push(_loc2_);
                                                   §§push(this.§2!C§);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() == §';§.§[d§)
                                                      {
                                                         if(_loc4_ && _loc1_)
                                                         {
                                                            addr558:
                                                            §§push(_loc2_);
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr569);
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                            break loop1;
                                                         }
                                                         §§push(1);
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(§§pop() - _loc2_);
                                                            if(_loc5_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc5_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               §§goto(addr577);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         else
                                                         {
                                                            addr593:
                                                            §§push(§§pop() - Math.cos(_loc2_ * (Math.PI / 2)));
                                                         }
                                                         §§goto(addr602);
                                                         §§goto(addr377);
                                                      }
                                                      addr117:
                                                      §§push(_loc2_);
                                                   }
                                                   continue loop0;
                                                   if(_loc5_)
                                                   {
                                                      §§push(1);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(2.75);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(7.5625);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 addr308:
                                                                                 §§push(_loc2_);
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                 }
                                                                                 addr338:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr341:
                                                                                    _loc3_ = §§pop();
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       addr349:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr360:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr363:
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      addr635:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr569);
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr464:
                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                {
                                                                                                   addr472:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      addr480:
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr483:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            addr491:
                                                                                                            §§push(0.984375);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr494:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr497);
                                                                                                               }
                                                                                                               §§goto(addr585);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr604);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                   §§goto(addr604);
                                                                                                }
                                                                                                §§goto(addr494);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr463:
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr464);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr462:
                                                                                          _loc2_ = §§pop();
                                                                                       }
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr441:
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc5_ || _loc1_)
                                                                                    {
                                                                                       addr449:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       §§goto(addr464);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr462);
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr250:
                                                                              §§push(_loc2_);
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(0.75);
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§goto(addr491);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr297:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             §§push(7.5625);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr308);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr625:
                                                                                                §§push(_loc2_);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr635);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr920);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(7.5625);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(2.625);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr424:
                                                                                                   §§push(§§pop() / 2.75);
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      §§goto(addr494);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr441);
                                                                                             }
                                                                                             §§goto(addr494);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr569);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr569);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr497);
                                                                              }
                                                                           }
                                                                           §§push(2.25);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr319:
                                                                              §§push(2.75);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr322:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr424);
                                                                              }
                                                                           }
                                                                           §§goto(addr441);
                                                                        }
                                                                        §§goto(addr388);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr194:
                                                                        §§push(_loc2_);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(1.5);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(2.75);
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr233:
                                                                                                _loc2_ = §§pop();
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                         §§goto(addr250);
                                                                                                      }
                                                                                                      addr377:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(0.9375);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr388:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc5_ || _loc1_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr569:
                                                                                                         §§push(§§pop() - 1);
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            addr577:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc5_ || _loc3_))
                                                                                                            {
                                                                                                               addr602:
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr604:
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr585:
                                                                                                            _loc2_ = §§pop();
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr548:
                                                                                                               return Math.sqrt(1 - _loc2_ * _loc2_);
                                                                                                               addr588:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr920);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr655:
                                                                                                            §§push(_loc2_);
                                                                                                         }
                                                                                                      }
                                                                                                      return §§pop() * (§§pop() - 2);
                                                                                                   }
                                                                                                   §§goto(addr349);
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr449);
                                                                                          }
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    §§goto(addr472);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr294:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§goto(addr472);
                                                                     }
                                                                  }
                                                                  else if(true)
                                                                  {
                                                                     addr661:
                                                                     §§goto(addr920);
                                                                  }
                                                                  §§goto(addr548);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr175:
                                                                     §§push(2 / 2.75);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(7.5625);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr194);
                                                                              }
                                                                              §§goto(addr480);
                                                                           }
                                                                           §§goto(addr588);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr283:
                                                                              §§push(2.5);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(2.75);
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              §§goto(addr472);
                                                                           }
                                                                        }
                                                                        addr497:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   addr277:
                                                   return §§pop();
                                                case 5:
                                                   break loop0;
                                                default:
                                                   §§goto(addr661);
                                                case 3:
                                                   §§push(_loc2_);
                                                   if(!(_loc5_ || _loc1_))
                                                   {
                                                      break loop1;
                                                   }
                                                   §§goto(addr655);
                                                   return -§§pop();
                                                case 4:
                                                   §§push(_loc2_);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr625);
                                                   }
                                                   break;
                                                case 6:
                                                   §§push(1);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr593);
                                                   }
                                                   continue;
                                                case 7:
                                                   §§goto(addr558);
                                                case 8:
                                                   §§push(1);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() - Math.sqrt(1 - _loc2_ * _loc2_));
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr534:
                                                               return §§pop();
                                                            }
                                                            §§goto(addr569);
                                                         }
                                                         §§goto(addr577);
                                                      }
                                                      break loop1;
                                                   }
                                                   continue;
                                             }
                                             return §§pop();
                                          }
                                          return §§pop();
                                          addr813:
                                       }
                                       else
                                       {
                                          addr837:
                                          §§goto(addr918);
                                       }
                                       §§goto(addr918);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§';§.§[d§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr736:
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || _loc1_)
                                             {
                                                addr747:
                                                §§push(2);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr918);
                                                }
                                                else
                                                {
                                                   §§goto(addr813);
                                                }
                                             }
                                             else
                                             {
                                                addr829:
                                                §§push(5);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§goto(addr837);
                                                }
                                                else
                                                {
                                                   addr871:
                                                   §§goto(addr918);
                                                }
                                             }
                                             §§goto(addr918);
                                          }
                                          else
                                          {
                                             §§push(§';§.§3!P§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr760:
                                                §§push(_loc3_);
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(3);
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                         }
                                                         §§goto(addr918);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr805);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§';§.§#P§);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§goto(addr805);
                                                               }
                                                               else
                                                               {
                                                                  addr863:
                                                                  §§push(6);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§goto(addr871);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr895);
                                                                  }
                                                               }
                                                               §§goto(addr918);
                                                            }
                                                            else
                                                            {
                                                               §§push(§';§.§ j§);
                                                               if(!_loc4_)
                                                               {
                                                                  addr818:
                                                                  §§push(_loc3_);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr829);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr887:
                                                                           §§push(7);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§goto(addr895);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr913:
                                                                              §§goto(addr918);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§';§.§88§);
                                                                        if(_loc5_ || _loc1_)
                                                                        {
                                                                        }
                                                                        addr898:
                                                                        if(§§pop() === _loc3_)
                                                                        {
                                                                           addr900:
                                                                           §§push(8);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr913);
                                                                           }
                                                                           §§goto(addr918);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr918);
                                                                           §§push(9);
                                                                        }
                                                                     }
                                                                     §§goto(addr918);
                                                                  }
                                                                  addr884:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr887);
                                                                     }
                                                                     §§goto(addr918);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr898);
                                                                     §§push(§';§.§^!P§);
                                                                  }
                                                                  §§goto(addr900);
                                                               }
                                                               §§push(_loc3_);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr855:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_ || _loc1_)
                                                                     {
                                                                        §§goto(addr863);
                                                                     }
                                                                     §§goto(addr918);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§';§.§+!=§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr876:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§goto(addr884);
                                                                        }
                                                                     }
                                                                     §§goto(addr898);
                                                                  }
                                                               }
                                                               §§goto(addr884);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr898);
                                                   }
                                                   §§goto(addr918);
                                                }
                                                §§goto(addr855);
                                             }
                                             §§goto(addr818);
                                          }
                                       }
                                       §§goto(addr898);
                                    }
                                    §§goto(addr760);
                                 }
                                 §§goto(addr918);
                              }
                              §§goto(addr818);
                           }
                           §§goto(addr876);
                        }
                        §§goto(addr918);
                     }
                     §§goto(addr818);
                  }
                  §§goto(addr736);
               }
               §§goto(addr747);
            }
            return Math.sin(_loc2_ * (Math.PI / 2));
         }
         §§goto(addr34);
      }
   }
}
