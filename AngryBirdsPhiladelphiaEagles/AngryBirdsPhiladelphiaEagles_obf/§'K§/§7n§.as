package §'K§
{
   public class §7n§ extends §%!4§ implements §>#§
   {
       
      
      private var §+t§:Number;
      
      private var §@h§:Boolean;
      
      private var §4@§:Boolean;
      
      private var §[S§:String;
      
      private var §8S§:Object;
      
      private var §4!L§:Object;
      
      private var §1c§:Object;
      
      public function §7n§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc7_ || param3)
               {
                  if(§§pop() <= 0)
                  {
                     §§push(0);
                     if(_loc7_)
                     {
                        addr89:
                        param4 = §§pop();
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                        }
                        addr90:
                     }
                     §§goto(addr89);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§+t§ = §§pop();
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     this.§[S§ = param5;
                     §-!9§ = 0;
                     do
                     {
                        this.§4@§ = true;
                        do
                        {
                           this.§@h§ = false;
                        }
                        while(_loc6_);
                        
                     }
                     while(false);
                     
                     param2 = this.§0!K§(param2,param1);
                     if(!_loc6_)
                     {
                        if(param3 != null)
                        {
                           if(_loc7_)
                           {
                              param3 = this.§0!K§(param3,param2);
                              if(_loc7_)
                              {
                                 this.§ !3§(param2,param3);
                                 if(_loc7_ || this)
                                 {
                                    addr143:
                                    this.§8S§ = param1;
                                 }
                              }
                              return;
                           }
                        }
                        else
                        {
                           this.§ !3§(param2,param1);
                        }
                     }
                     §§goto(addr143);
                  }
                  continue;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr37);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§@h§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§4@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
            loop0:
            while(true)
            {
               this.§8S§ = null;
               while(true)
               {
                  this.§1c§ = null;
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§4!L§ = null;
                        if(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §7!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!9§ = -§'!D§;
            do
            {
               this.§@h§ = false;
            }
            while(_loc2_);
            
         }
      }
      
      private function §0!K§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!(_loc8_ && _loc3_))
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr131:
                              while(true)
                              {
                                 addr92:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                    addr108:
                                    while(!(_loc8_ && param2))
                                    {
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           addr130:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(param2[_loc4_] is Number);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(_loc7_)
                                             {
                                                loop11:
                                                while(§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc3_[_loc4_] = param1[_loc4_];
                                                      }
                                                      addr80:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop11;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr92);
                                                   }
                                                }
                                                continue loop0;
                                                addr76:
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr130);
                                          §§goto(addr131);
                                       }
                                       break;
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr76);
                        }
                     }
                  }
               }
            }
            §§goto(addr80);
         }
         return _loc3_;
      }
      
      private function § !3§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc9_ || _loc3_)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc8_ && this)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc9_)
         {
            this.§1c§ = _loc3_;
            do
            {
               this.§4!L§ = _loc4_;
            }
            while(_loc8_ && _loc3_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§@h§)
            {
               loop0:
               while(true)
               {
                  this.§@h§ = true;
                  loop1:
                  while(true)
                  {
                     §1A§ = null;
                     addr75:
                     while(true)
                     {
                        §-!9§ = this.§+t§;
                        if(!(_loc1_ && _loc1_))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function set() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§@h§)
            {
               if(_loc2_)
               {
                  this.§@h§ = true;
               }
               do
               {
                  §-!9§ = this.§+t§;
                  do
                  {
                     this.§`!E§();
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(!_loc2_);
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4@§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4@§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§4@§);
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.isCompleted);
                     if(_loc3_)
                     {
                        if(!(_loc3_ || this))
                        {
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           return;
                        }
                        loop3:
                        do
                        {
                           §-!9§ += param1;
                           if(§-!9§ >= this.§+t§)
                           {
                              loop4:
                              while(true)
                              {
                                 if(!§<!,§)
                                 {
                                    §-!9§ = 0;
                                    loop5:
                                    while(true)
                                    {
                                       addr47:
                                       loop8:
                                       while(true)
                                       {
                                          this.§`!E§();
                                          if(!(_loc2_ && param1))
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                             addr96:
                                             while(true)
                                             {
                                                §-!9§ = this.§+t§;
                                                this.§@h§ = true;
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr47);
                        }
                        while(_loc2_ && this);
                        
                        if(_loc3_ || this)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr133);
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.update(0);
         }
      }
      
      private function §`!E§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_ || _loc1_)
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§^!8§());
               if(!(_loc5_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || this)
               {
                  var _loc2_:int = 0;
                  if(!(_loc5_ && this))
                  {
                     var _loc3_:* = this.§1c§;
                     if(_loc5_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           this.§8S§[attribute] = this.§4!L§[attribute] + this.§1c§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!_loc5_)
               {
                  §@h§ = true;
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr149);
               }
               if(!§!y§)
               {
                  addr149:
                  throw e;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §"r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.isCompleted);
            if(_loc4_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr54:
                        §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§1A§ == null);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        try
                        {
                           addr69:
                           §1A§();
                           if(_loc4_)
                           {
                              §1A§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           if(!_loc3_)
                           {
                              §1A§ = null;
                              if(_loc3_ && _loc1_)
                              {
                              }
                              §§goto(addr112);
                           }
                           if(!§!y§)
                           {
                              addr112:
                              throw e;
                           }
                        }
                        §§goto(addr117);
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr69);
                  }
                  addr117:
                  return;
               }
            }
            §§goto(addr54);
         }
         §§goto(addr69);
      }
      
      private function §^!8§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§+t§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() <= 0)
               {
                  if(!(_loc4_ && this))
                  {
                     return 1;
                  }
                  addr39:
                  §§push(Number(Math.max(0,§-!9§)));
               }
               §§goto(addr39);
            }
            var _loc1_:* = §§pop();
            if(!_loc4_)
            {
               §§push(Number(Math.min(_loc1_,this.§+t§)));
               if(_loc5_)
               {
                  _loc1_ = §§pop();
                  addr56:
                  §§push(_loc1_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() / this.§+t§);
                     if(_loc4_ && this)
                     {
                     }
                     addr75:
                     var _loc2_:* = §§pop();
                     §§push(this.§[S§);
                     loop0:
                     while(true)
                     {
                        var _loc3_:* = §§pop();
                        §§push(§3C§.§5t§);
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              §§push(0);
                           }
                           else
                           {
                              §§push(§3C§.§ !1§);
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop() === _loc3_)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§goto(addr664);
                                    }
                                    addr579:
                                    addr664:
                                    §§push(1);
                                    loop1:
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             addr666:
                                             break loop1;
                                          case 1:
                                          case 2:
                                             §§push(_loc2_);
                                             §§push(this.§[S§);
                                             if(_loc5_)
                                             {
                                                if(§§pop() == §3C§.§'!7§)
                                                {
                                                   §§push(1);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§§pop() - _loc2_);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            §§goto(addr113);
                                                         }
                                                         §§goto(addr518);
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   else
                                                   {
                                                      addr481:
                                                      §§push(§§pop() - Math.cos(_loc2_ * (Math.PI / 2)));
                                                   }
                                                   §§goto(addr490);
                                                }
                                                addr113:
                                                §§push(_loc2_);
                                                §§push(1);
                                                if(_loc5_)
                                                {
                                                   §§push(2.75);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      if(§§pop() >= §§pop() / §§pop())
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            §§goto(addr159);
                                                         }
                                                         break loop1;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         §§push(7.5625 * _loc2_);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr139:
                                                            §§push(_loc2_);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               return §§pop() * §§pop();
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr229);
                                                            }
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr516:
                                                      §§goto(addr518);
                                                      §§push(_loc2_);
                                                      §§goto(addr518);
                                                      §§goto(addr529);
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                             continue loop0;
                                             addr159:
                                             if(§§pop() < 2 / 2.75)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(7.5625);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(1.5);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(2.75);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr192:
                                                                     _loc3_ = §§pop();
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc4_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    addr229:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(0.75);
                                                                                    if(_loc5_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                       addr463:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr518:
                                                                                             §§push(-§§pop());
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§goto(addr526);
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          _loc2_ = §§pop();
                                                                                          addr441:
                                                                                          return Math.sqrt(1 - _loc2_ * _loc2_);
                                                                                          addr476:
                                                                                       }
                                                                                       break loop1;
                                                                                    }
                                                                                    addr341:
                                                                                    §§push(§§pop() * §§pop() + 0.9375);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    addr526:
                                                                                    §§push(_loc2_);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr529:
                                                                                       §§push(§§pop() - 2);
                                                                                    }
                                                                                    return §§pop() * §§pop();
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 addr241:
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr526);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr312:
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr376:
                                                                                       §§push(_loc3_ = §§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr380:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             addr388:
                                                                                             _loc2_ = §§pop();
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() + 0.984375);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr412);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                       §§goto(addr388);
                                                                                    }
                                                                                 }
                                                                                 addr351:
                                                                                 return §§pop();
                                                                              }
                                                                           }
                                                                           §§goto(addr341);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr304:
                                                                           §§push(_loc3_);
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§goto(addr312);
                                                                           }
                                                                        }
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr276:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc3_ = §§pop());
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr304);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                        §§goto(addr380);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr365:
                                                                        §§push(2.625 / 2.75);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§goto(addr376);
                                                                           }
                                                                           §§goto(addr513);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               else
                                                               {
                                                                  addr272:
                                                                  §§push(2.75);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr276);
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr463);
                                                }
                                                else if(true)
                                                {
                                                   addr534:
                                                   §§goto(addr666);
                                                }
                                                §§goto(addr441);
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(2.5);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() / 2.75);
                                                      if(!_loc4_)
                                                      {
                                                         addr257:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(7.5625);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  §§push(2.25);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr380);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr476);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(7.5625);
                                                            if(!(_loc5_ || _loc1_))
                                                            {
                                                               addr490:
                                                               return §§pop();
                                                            }
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr365);
                                                            }
                                                         }
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr365);
                                                   }
                                                   §§goto(addr257);
                                                }
                                             }
                                             addr412:
                                             return §§pop();
                                          case 3:
                                             §§goto(addr516);
                                          default:
                                             §§goto(addr534);
                                          case 4:
                                             break;
                                          case 5:
                                             _loc2_;
                                             return Math.sin(_loc2_ * (Math.PI / 2));
                                          case 6:
                                             §§push(1);
                                             if(_loc5_)
                                             {
                                                §§goto(addr481);
                                             }
                                             continue;
                                          case 7:
                                             §§goto(addr463);
                                          case 8:
                                             §§push(_loc2_ - 1);
                                             §§push(1);
                                             if(_loc5_ || _loc1_)
                                             {
                                                return §§pop() - Math.sqrt(1 - _loc2_ * _loc2_);
                                             }
                                             continue;
                                       }
                                       addr513:
                                       return §§pop() * §§pop();
                                    }
                                    return §§pop();
                                    §§push(2);
                                    §§goto(addr664);
                                 }
                                 else
                                 {
                                    §§push(§3C§.§'!7§);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr579);
                                       }
                                       else
                                       {
                                          §§push(§3C§.§,k§);
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(§§pop() === _loc3_)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(3);
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr627:
                                                   §§push(6);
                                                   if(_loc4_)
                                                   {
                                                      addr646:
                                                   }
                                                }
                                             }
                                             else if(§3C§.§!p§ === _loc3_)
                                             {
                                                §§goto(addr664);
                                                §§push(4);
                                             }
                                             else
                                             {
                                                addr611:
                                                if(§3C§.§4Z§ === _loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(5);
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                      §§goto(addr664);
                                                   }
                                                   else
                                                   {
                                                      addr645:
                                                      §§goto(addr646);
                                                      §§push(7);
                                                   }
                                                   §§goto(addr664);
                                                }
                                                else
                                                {
                                                   §§push(§3C§.§9!M§);
                                                   if(_loc5_)
                                                   {
                                                      addr623:
                                                      if(§§pop() === _loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr627);
                                                         }
                                                         §§goto(addr664);
                                                      }
                                                      else if(§3C§.§[!-§ === _loc3_)
                                                      {
                                                         §§goto(addr645);
                                                      }
                                                      else
                                                      {
                                                         addr649:
                                                         if(§3C§.§%l§ !== _loc3_)
                                                         {
                                                            §§goto(addr664);
                                                            §§push(9);
                                                         }
                                                         §§goto(addr664);
                                                      }
                                                      §§push(8);
                                                      if(_loc5_ || this)
                                                      {
                                                      }
                                                      §§goto(addr664);
                                                   }
                                                }
                                                §§goto(addr664);
                                             }
                                             §§goto(addr664);
                                          }
                                          §§goto(addr649);
                                       }
                                    }
                                    §§goto(addr623);
                                 }
                              }
                              §§goto(addr611);
                           }
                           §§goto(addr664);
                        }
                        §§goto(addr611);
                     }
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr75);
            }
            §§goto(addr56);
         }
         §§goto(addr39);
      }
   }
}
