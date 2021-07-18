package §,M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@-§ extends EventDispatcher implements §6!G§
   {
       
      
      private var §'Q§:Object;
      
      private var §6!J§:String;
      
      private var §3j§:Vector.<String>;
      
      private var §7!3§:Vector.<Number>;
      
      private var §"!3§:Vector.<Number>;
      
      private var §2'§:Function;
      
      private var §7p§:Function;
      
      private var §,3§:Function;
      
      private var §7v§:Array;
      
      private var §with§:Array;
      
      private var §@!U§:Array;
      
      private var §1!S§:Number;
      
      private var §?!'§:Number;
      
      private var §]A§:Number;
      
      private var §[S§:Boolean;
      
      public function §@-§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§'Q§ = param1;
            }
            addr157:
         }
         while(true)
         {
            this.§?!'§ = 0;
            loop2:
            while(true)
            {
               this.§1!S§ = Math.max(0.0001,param2);
               loop3:
               while(true)
               {
                  this.§]A§ = 0;
                  loop4:
                  while(true)
                  {
                     this.§6!J§ = param3;
                     while(true)
                     {
                        this.§[S§ = false;
                        while(_loc5_ || this)
                        {
                           continue loop2;
                           if(_loc5_ || param1)
                           {
                              if(_loc5_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            while(_loc5_ || param2)
            {
               this.§7!3§ = new Vector.<Number>(0);
               do
               {
                  this.§"!3§ = new Vector.<Number>(0);
               }
               while(!_loc5_);
               
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr42);
            }
         }
      }
      
      public function §-!6§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§'Q§ == null)
            {
               if(_loc4_)
               {
                  return;
               }
               while(true)
               {
                  addr60:
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  loop4:
                  while(true)
                  {
                     this.§"!3§.push(param2);
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     addr83:
                     while(!_loc3_)
                     {
                        §§goto(addr60);
                        continue loop4;
                     }
                     while(true)
                     {
                        this.§7!3§.push(Number.NaN);
                        §§goto(addr58);
                     }
                     addr58:
                  }
                  return;
                  addr67:
               }
               addr91:
            }
            while(true)
            {
               this.§3j§.push(param1);
               §§goto(addr83);
               §§goto(addr91);
            }
         }
         §§goto(addr67);
      }
      
      public function §+!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!6§("scaleX",param1);
         }
         do
         {
            this.§-!6§("scaleY",param1);
         }
         while(_loc3_ && param1);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-!6§("x",param1);
         }
         do
         {
            this.§-!6§("y",param2);
         }
         while(!(_loc3_ || param2));
         
      }
      
      public function §0!'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!6§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc12_ && _loc3_))
            {
               if(§§pop() == 0)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§?!'§);
               if(_loc11_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc12_)
            {
               §§push(this);
               §§push(this.§?!'§);
               if(_loc11_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§?!'§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§?!'§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() >= this.§1!S§);
                                          addr71:
                                          if(!(_loc11_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(_loc12_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(0);
                                          if(_loc11_)
                                          {
                                             addr83:
                                             §§push(§§pop() >= §§pop());
                                             if(_loc11_ || _loc2_)
                                             {
                                                if(_loc11_)
                                                {
                                                   loop23:
                                                   while(§§pop())
                                                   {
                                                      if(!(_loc12_ && _loc3_))
                                                      {
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            §§push(this.§!'§);
                                                            if(!(_loc12_ && _loc2_))
                                                            {
                                                               §§push(null);
                                                               if(_loc11_)
                                                               {
                                                                  §§pop().apply(§§pop(),this.§7v§);
                                                                  addr124:
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break loop23;
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc12_ && this)
                                                                           {
                                                                              break;
                                                                              addr143:
                                                                           }
                                                                           §§push(0);
                                                                           while(_loc11_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr153:
                                                                                    if(!(_loc12_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  addr210:
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               §§push(this.§?!'§);
                                                                                                               if(_loc11_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr71);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr244:
                                                                                                                  var _loc3_:* = §§pop();
                                                                                                                  var _loc4_:int = this.§7!3§.length;
                                                                                                                  var _loc5_:int = 0;
                                                                                                                  loop25:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ >= _loc4_)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(this.§&!7§);
                                                                                                                           if(_loc11_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr487:
                                                                                                                                 }
                                                                                                                                 addr568:
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 loop36:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§1!S§);
                                                                                                                                    addr570:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             loop38:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop39:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      dispatchEvent(new Event(Event.§9Y§));
                                                                                                                                                      loop40:
                                                                                                                                                      while(_loc11_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.onComplete);
                                                                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr502:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(null);
                                                                                                                                                               if(!_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  addr505:
                                                                                                                                                                  while(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.onComplete);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(null);
                                                                                                                                                                           addr513:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§@!U§);
                                                                                                                                                                              addr515:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().apply(§§pop(),§§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           addr518:
                                                                                                                                                                           break loop38;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop39;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  break loop38;
                                                                                                                                                                  addr505:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr513);
                                                                                                                                                            }
                                                                                                                                                            addr502:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr512);
                                                                                                                                                      }
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() >= §§pop());
                                                                                                                                                addr533:
                                                                                                                                                break;
                                                                                                                                                if(!(_loc12_ && param1))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr575:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   continue loop36;
                                                                                                                                                }
                                                                                                                                                addr575:
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                             addr541:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr575);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr568:
                                                                                                                              }
                                                                                                                              §§goto(addr505);
                                                                                                                           }
                                                                                                                           addr467:
                                                                                                                           §§push(null);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(this.§with§);
                                                                                                                              if(_loc11_ || this)
                                                                                                                              {
                                                                                                                                 §§pop().apply(§§pop(),§§pop());
                                                                                                                                 if(!(_loc12_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr487);
                                                                                                                                 }
                                                                                                                                 §§goto(addr518);
                                                                                                                              }
                                                                                                                              §§goto(addr515);
                                                                                                                           }
                                                                                                                           §§goto(addr505);
                                                                                                                        }
                                                                                                                        §§goto(addr576);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        if(isNaN(this.§7!3§[_loc5_]))
                                                                                                                        {
                                                                                                                           if(!(_loc12_ && _loc2_))
                                                                                                                           {
                                                                                                                              this.§7!3§[_loc5_] = this.§'Q§[this.§3j§[_loc5_]] as Number;
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 loop26:
                                                                                                                                 do
                                                                                                                                 {
                                                                                                                                    §§push(Number(this.§7!3§[_loc5_]));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          break loop25;
                                                                                                                                       }
                                                                                                                                       §§push(Number(this.§"!3§[_loc5_]));
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                if(_loc12_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!_loc12_)
                                                                                                                                                   {
                                                                                                                                                      addr290:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr568);
                                                                                                                                                   }
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   if(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr487);
                                                                                                                                                }
                                                                                                                                                §§goto(addr570);
                                                                                                                                             }
                                                                                                                                             §§goto(addr568);
                                                                                                                                          }
                                                                                                                                          §§goto(addr533);
                                                                                                                                       }
                                                                                                                                       §§goto(addr290);
                                                                                                                                    }
                                                                                                                                    §§goto(addr502);
                                                                                                                                 }
                                                                                                                                 while(false);
                                                                                                                                 
                                                                                                                                 _loc9_ = §0!J§.§`!;§(this.§6!J§);
                                                                                                                                 if(_loc11_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                                                    }
                                                                                                                                    loop28:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop29:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(this.§[S§)
                                                                                                                                             {
                                                                                                                                                while(_loc11_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(Math.round(_loc10_)));
                                                                                                                                                      if(!(_loc11_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         continue loop28;
                                                                                                                                                      }
                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr368:
                                                                                                                                                   if(_loc11_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§'Q§[this.§3j§[_loc5_]] = _loc10_;
                                                                                                                                                            while(_loc11_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               _loc5_++;
                                                                                                                                                               if(_loc12_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr368);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr419);
                                                                                                                                                         }
                                                                                                                                                         addr377:
                                                                                                                                                      }
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr377);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr405);
                                                                                                                                 addr303:
                                                                                                                              }
                                                                                                                              §§goto(addr518);
                                                                                                                           }
                                                                                                                           §§goto(addr556);
                                                                                                                        }
                                                                                                                        §§goto(addr303);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(this.§&!7§);
                                                                                                                  if(_loc11_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr467);
                                                                                                                  }
                                                                                                                  §§goto(addr502);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr186:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§!'§);
                                                                                                                  addr189:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(null);
                                                                                                                     addr190:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(!(_loc12_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr199:
                                                                                                                           §§push(!§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              §§goto(addr153);
                                                                                                                           }
                                                                                                                           addr199:
                                                                                                                        }
                                                                                                                        §§goto(addr199);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr186:
                                                                                                            }
                                                                                                            §§goto(addr124);
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                         addr179:
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                      §§goto(addr83);
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                   addr176:
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr202:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       addr209:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§goto(addr186);
                                                                                          }
                                                                                          §§goto(addr210);
                                                                                       }
                                                                                       §§goto(addr186);
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr201);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr244);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr131:
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§push(Math.min(this.§1!S§,this.§?!'§) / this.§1!S§);
                                                   if(_loc11_)
                                                   {
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr209);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr131);
         }
         addr46:
      }
      
      public function get §5@§() : Boolean
      {
         return this.§?!'§ >= this.§1!S§;
      }
      
      public function get target() : Object
      {
         return this.§'Q§;
      }
      
      public function get §#!O§() : String
      {
         return this.§6!J§;
      }
      
      public function get §2c§() : Number
      {
         return this.§1!S§;
      }
      
      public function get §7-§() : Number
      {
         return this.§?!'§;
      }
      
      public function get delay() : Number
      {
         return this.§]A§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§?!'§);
            if(_loc2_)
            {
               §§push(this.§]A§);
               if(_loc2_)
               {
                  addr74:
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§push(param1);
                  }
                  §§pop().§?!'§ = §§pop();
                  do
                  {
                     this.§]A§ = param1;
                  }
                  while(_loc3_ && param1);
                  
                  return;
                  addr44:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr74);
         }
         §§goto(addr44);
      }
      
      public function get §2p§() : Boolean
      {
         return this.§[S§;
      }
      
      public function set §2p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[S§ = param1;
         }
      }
      
      public function get §!'§() : Function
      {
         return this.§2'§;
      }
      
      public function set §!'§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2'§ = param1;
         }
      }
      
      public function get §&!7§() : Function
      {
         return this.§7p§;
      }
      
      public function set §&!7§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7p§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§,3§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,3§ = param1;
         }
      }
      
      public function get §7i§() : Array
      {
         return this.§7v§;
      }
      
      public function set §7i§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§7v§ = param1;
         }
      }
      
      public function get §+!D§() : Array
      {
         return this.§with§;
      }
      
      public function set §+!D§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§with§ = param1;
         }
      }
      
      public function get §`2§() : Array
      {
         return this.§@!U§;
      }
      
      public function set §`2§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@!U§ = param1;
         }
      }
   }
}
