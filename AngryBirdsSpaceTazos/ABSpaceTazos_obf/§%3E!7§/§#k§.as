package §>!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#k§ extends EventDispatcher implements §`B§
   {
       
      
      private var §?!<§:Object;
      
      private var §-!w§:String;
      
      private var §,2§:Vector.<String>;
      
      private var §7U§:Vector.<Number>;
      
      private var §89§:Vector.<Number>;
      
      private var §;4§:Function;
      
      private var §@!n§:Function;
      
      private var §6!s§:Function;
      
      private var §'!U§:Array;
      
      private var §-+§:Array;
      
      private var §#!0§:Array;
      
      private var §,!c§:Number;
      
      private var §7"8§:Number;
      
      private var §9"#§:Number;
      
      private var §^"-§:Boolean;
      
      public function §#k§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
         }
         while(true)
         {
            this.§?!<§ = param1;
            loop1:
            while(!_loc5_)
            {
               this.§7"8§ = 0;
               loop2:
               while(true)
               {
                  this.§,!c§ = Math.max(0.0001,param2);
                  loop3:
                  for(; _loc4_; if(!(_loc4_ || param1))
                  {
                     continue;
                  },this.§,2§ = new Vector.<String>(0),loop7:
                  while(true)
                  {
                     this.§7U§ = new Vector.<Number>(0);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop7;
                     }
                     §§goto(addr90);
                  })
                  {
                     this.§9"#§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§-!w§ = param3;
                        while(_loc4_)
                        {
                           this.§^"-§ = false;
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop3;
                           if(_loc4_ || param1)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §&b§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§?!<§ != null)
            {
               while(true)
               {
                  this.§,2§.push(param1);
                  loop1:
                  while(!_loc4_)
                  {
                     this.§7U§.push(Number.NaN);
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §3!3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&b§("scaleX",param1);
         }
         do
         {
            this.§&b§("scaleY",param1);
         }
         while(!_loc3_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&b§("x",param1);
            do
            {
               this.§&b§("y",param2);
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public function §&!P§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&b§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_)
         {
            §§push(param1);
            if(_loc11_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_)
                  {
                     §§goto(addr41);
                  }
               }
               §§push(this.§7"8§);
               if(_loc11_ || _loc3_)
               {
                  addr51:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc11_)
               {
                  §§push(this);
                  §§push(this.§7"8§);
                  if(!_loc12_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§7"8§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(this.§7"8§);
                     if(_loc11_ || _loc2_)
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() < §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       addr212:
                                       addr238:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc11_ || this))
                                          {
                                             break;
                                             addr175:
                                          }
                                          §§push(§§pop() >= this.§,!c§);
                                          while(_loc11_)
                                          {
                                             if(!(_loc11_ || _loc2_))
                                             {
                                                continue loop2;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       addr238:
                                       var _loc3_:Number = §§pop();
                                       var _loc4_:int = this.§7U§.length;
                                       var _loc5_:int = 0;
                                       addr428:
                                       if(_loc5_ < _loc4_)
                                       {
                                          if(isNaN(this.§7U§[_loc5_]))
                                          {
                                             if(!_loc12_)
                                             {
                                                this.§7U§[_loc5_] = this.§?!<§[this.§,2§[_loc5_]] as Number;
                                                if(_loc11_ || param1)
                                                {
                                                   addr309:
                                                   _loc6_ = this.§7U§[_loc5_];
                                                   addr303:
                                                   if(!_loc12_)
                                                   {
                                                      §§push(Number(this.§89§[_loc5_]));
                                                      if(_loc11_)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc11_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr303);
                                                                              }
                                                                              _loc9_ = §7I§.§<!C§(this.§-!w§);
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 addr426:
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc12_ && _loc3_))
                                                                                 {
                                                                                    addr425:
                                                                                    §§push(Number(§§pop() + _loc9_(_loc3_) * _loc8_));
                                                                                 }
                                                                                 _loc10_ = §§pop();
                                                                                 addr427:
                                                                                 if(this.§^"-§)
                                                                                 {
                                                                                    addr388:
                                                                                    §§push(Number(Math.round(_loc10_)));
                                                                                    if(_loc11_ || this)
                                                                                    {
                                                                                       if(!(_loc12_ && this))
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr407:
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr374:
                                                                                             this.§?!<§[this.§,2§[_loc5_]] = _loc10_;
                                                                                             _loc5_++;
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   §§goto(addr388);
                                                                                                }
                                                                                                §§goto(addr407);
                                                                                             }
                                                                                             addr383:
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                          §§goto(addr427);
                                                                                       }
                                                                                       §§goto(addr425);
                                                                                    }
                                                                                    §§goto(addr426);
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           addr478:
                                                                           return;
                                                                           addr513:
                                                                        }
                                                                        addr519:
                                                                        §§push(this.§,!c§);
                                                                        if(_loc11_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(!(_loc12_ && this))
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 addr538:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr540:
                                                                                    dispatchEvent(new Event(Event.§^m§));
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(this.onComplete);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr490:
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(!(_loc12_ && _loc3_))
                                                                                                {
                                                                                                   addr503:
                                                                                                   this.onComplete.apply(null,this.§#!0§);
                                                                                                   addr501:
                                                                                                }
                                                                                                if(!(_loc12_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§goto(addr540);
                                                                                                   }
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                                §§goto(addr540);
                                                                                             }
                                                                                             §§goto(addr478);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr501);
                                                                                    }
                                                                                    §§push(this.§7"8§);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§goto(addr519);
                                                                                    }
                                                                                    addr566:
                                                                                    §§push(§§pop() < this.§,!c§);
                                                                                    if(§§pop() < this.§,!c§)
                                                                                    {
                                                                                       addr565:
                                                                                       §§pop();
                                                                                       §§goto(addr566);
                                                                                    }
                                                                                    §§goto(addr538);
                                                                                 }
                                                                                 §§goto(addr478);
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr565);
                                                                        }
                                                                        §§goto(addr566);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr519);
                                                   }
                                                   §§goto(addr501);
                                                }
                                             }
                                             §§goto(addr540);
                                          }
                                          §§goto(addr309);
                                       }
                                       if(!_loc12_)
                                       {
                                          §§push(this.§<V§);
                                          if(!(_loc12_ && _loc2_))
                                          {
                                             §§push(null);
                                             if(_loc11_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      §§push(this.§<V§);
                                                      if(_loc11_ || this)
                                                      {
                                                         addr457:
                                                         §§push(null);
                                                         if(_loc11_)
                                                         {
                                                            §§push(this.§-+§);
                                                            if(_loc11_ || this)
                                                            {
                                                               §§pop().apply(§§pop(),§§pop());
                                                               if(_loc11_ || this)
                                                               {
                                                                  addr559:
                                                                  §§goto(addr566);
                                                                  §§push(_loc2_);
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr503);
                                                   }
                                                   §§goto(addr478);
                                                }
                                                §§goto(addr559);
                                             }
                                             §§goto(addr490);
                                          }
                                          §§goto(addr457);
                                       }
                                       §§goto(addr503);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§""E§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(null);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc12_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(!(_loc12_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop14:
                                                            while(true)
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(0);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              break;
                                                                              addr135:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc12_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr140:
                                                                                 while(_loc11_)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§7"8§);
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr238);
                                                                                       addr103:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc12_ && _loc2_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             if(_loc12_ && _loc2_)
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr222:
                                                                                             §§push(Math.min(this.§,!c§,this.§7"8§) / this.§,!c§);
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop11;
                                                                                 addr140:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr79:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§""E§);
                                                                                          if(!(_loc11_ || _loc3_))
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§push(null);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§pop().apply(§§pop(),this.§'!U§);
                                                                                       }
                                                                                       addr88:
                                                                                    }
                                                                                    §§goto(addr103);
                                                                                 }
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr212);
                                                                              §§goto(addr238);
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr140);
                                                                     }
                                                                     §§goto(addr175);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          addr196:
                                       }
                                    }
                                    addr186:
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr238);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr51);
         }
         addr41:
      }
      
      public function get §6!^§() : Boolean
      {
         return this.§7"8§ >= this.§,!c§;
      }
      
      public function get target() : Object
      {
         return this.§?!<§;
      }
      
      public function get §9",§() : String
      {
         return this.§-!w§;
      }
      
      public function get §#F§() : Number
      {
         return this.§,!c§;
      }
      
      public function get §+V§() : Number
      {
         return this.§7"8§;
      }
      
      public function get delay() : Number
      {
         return this.§9"#§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.§7"8§);
            if(_loc3_ || param1)
            {
               §§push(this.§9"#§);
               if(_loc3_)
               {
                  addr80:
                  §§push(§§pop() + §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(param1);
                  }
                  §§pop().§7"8§ = §§pop();
                  do
                  {
                     this.§9"#§ = param1;
                  }
                  while(!_loc3_);
                  
                  return;
                  addr45:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr80);
         }
         §§goto(addr45);
      }
      
      public function get §<!'§() : Boolean
      {
         return this.§^"-§;
      }
      
      public function set §<!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^"-§ = param1;
         }
      }
      
      public function get §""E§() : Function
      {
         return this.§;4§;
      }
      
      public function set §""E§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;4§ = param1;
         }
      }
      
      public function get §<V§() : Function
      {
         return this.§@!n§;
      }
      
      public function set §<V§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@!n§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§6!s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6!s§ = param1;
         }
      }
      
      public function get §`!N§() : Array
      {
         return this.§'!U§;
      }
      
      public function set §`!N§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'!U§ = param1;
         }
      }
      
      public function get §]"G§() : Array
      {
         return this.§-+§;
      }
      
      public function set §]"G§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-+§ = param1;
         }
      }
      
      public function get §1!t§() : Array
      {
         return this.§#!0§;
      }
      
      public function set §1!t§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#!0§ = param1;
         }
      }
   }
}
