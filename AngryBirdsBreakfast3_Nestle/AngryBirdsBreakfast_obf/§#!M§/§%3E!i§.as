package §#!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>!i§ extends EventDispatcher implements §,!Y§
   {
       
      
      private var §!N§:Object;
      
      private var §@"+§:String;
      
      private var §1p§:Vector.<String>;
      
      private var §`"4§:Vector.<Number>;
      
      private var §="7§:Vector.<Number>;
      
      private var §^=§:Function;
      
      private var §2L§:Function;
      
      private var §;!h§:Function;
      
      private var §]!Z§:Array;
      
      private var §5j§:Array;
      
      private var §0"0§:Array;
      
      private var §2!X§:Number;
      
      private var §=",§:Number;
      
      private var §,y§:Number;
      
      private var §break§:Boolean;
      
      public function §>!i§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§!N§ = param1;
               loop1:
               while(true)
               {
                  this.§=",§ = 0;
                  loop2:
                  do
                  {
                     this.§2!X§ = Math.max(0.0001,param2);
                     addr117:
                     while(!_loc4_)
                     {
                        this.§,y§ = 0;
                        do
                        {
                           this.§@"+§ = param3;
                           continue loop1;
                        }
                        while(_loc4_ && param1);
                        
                        continue loop2;
                     }
                     continue loop0;
                  }
                  while(!_loc5_);
                  
               }
            }
         }
      }
      
      public function §!!6§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§!N§ != null)
            {
               loop0:
               while(true)
               {
                  this.§1p§.push(param1);
                  while(!(_loc3_ && param2))
                  {
                     this.§`"4§.push(Number.NaN);
                     while(_loc4_ || this)
                     {
                        if(_loc4_)
                        {
                           this.§="7§.push(param2);
                           if(!_loc3_)
                           {
                              return;
                              addr46:
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §'!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§!!6§("scaleX",param1);
         }
         do
         {
            this.§!!6§("scaleY",param1);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!!6§("x",param1);
            do
            {
               this.§!!6§("y",param2);
            }
            while(_loc4_);
            
         }
      }
      
      public function §>!,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!6§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc12_ || _loc2_)
         {
            §§push(param1);
            if(!(_loc11_ && _loc3_))
            {
               if(§§pop() == 0)
               {
                  if(!_loc11_)
                  {
                     return;
                  }
                  addr48:
                  §§push(this.§=",§);
                  if(!(_loc11_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr48);
            }
            var _loc2_:* = §§pop();
            if(!(_loc11_ && _loc2_))
            {
               §§push(this);
               §§push(this.§=",§);
               if(!(_loc11_ && param1))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§=",§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§=",§);
                  if(!(_loc11_ && _loc2_))
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr226:
                                    while(_loc12_)
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          §§push(§§pop() >= this.§2!X§);
                                          addr198:
                                          while(_loc12_)
                                          {
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr225:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§>!R§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(null);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc11_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr225);
                                                }
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(!(_loc11_ && this))
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            addr143:
                                                            addr260:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc11_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(0);
                                                               loop17:
                                                               while(_loc12_)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  while(_loc12_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc12_ || _loc2_))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(§§pop())
                                                                           {
                                                                              if(_loc12_ || _loc2_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc11_ && param1)
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(_loc11_ && this)
                                                                                 {
                                                                                    §§goto(addr202);
                                                                                 }
                                                                                 §§push(this.§>!R§);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§push(null);
                                                                                 if(!(_loc12_ || this))
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§pop().apply(§§pop(),this.§]!Z§);
                                                                              }
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                           addr243:
                                                                           §§push(Math.min(this.§2!X§,this.§=",§) / this.§2!X§);
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              break loop16;
                                                                           }
                                                                           break loop16;
                                                                           addr94:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§=",§);
                                                                           if(!_loc12_)
                                                                           {
                                                                              break loop16;
                                                                           }
                                                                           if(!_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(0);
                                                                           if(_loc11_ && _loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc12_)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 if(_loc11_ && param1)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§goto(addr94);
                                                                              }
                                                                              §§goto(addr151);
                                                                           }
                                                                           §§goto(addr170);
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop1;
                                                            }
                                                            var _loc3_:* = §§pop();
                                                            var _loc4_:int = this.§`"4§.length;
                                                            var _loc5_:int = 0;
                                                            addr464:
                                                            if(_loc5_ < _loc4_)
                                                            {
                                                               if(isNaN(this.§`"4§[_loc5_]))
                                                               {
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     this.§`"4§[_loc5_] = this.§!N§[this.§1p§[_loc5_]] as Number;
                                                                     addr334:
                                                                     addr385:
                                                                     §§push(Number(this.§`"4§[_loc5_]));
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           §§push(Number(this.§="7§[_loc5_]));
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr306:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                             addr322:
                                                                                             _loc8_ = §§pop();
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                   _loc9_ = §<"§.§case§(this.§@"+§);
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr447:
                                                                                                      addr462:
                                                                                                      §§push(_loc6_ + _loc9_(_loc3_) * _loc8_);
                                                                                                      if(_loc12_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      _loc10_ = §§pop();
                                                                                                      addr463:
                                                                                                      if(this.§break§)
                                                                                                      {
                                                                                                         addr424:
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            §§push(Number(Math.round(_loc10_)));
                                                                                                            if(!(_loc11_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  addr410:
                                                                                                                  this.§!N§[this.§1p§[_loc5_]] = _loc10_;
                                                                                                                  _loc5_++;
                                                                                                                  addr445:
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr410);
                                                                                                                           }
                                                                                                                           §§goto(addr464);
                                                                                                                        }
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                     §§goto(addr445);
                                                                                                                  }
                                                                                                                  addr419:
                                                                                                                  §§goto(addr419);
                                                                                                               }
                                                                                                               §§goto(addr447);
                                                                                                            }
                                                                                                            §§goto(addr462);
                                                                                                         }
                                                                                                         §§goto(addr463);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr410);
                                                                                                }
                                                                                                §§goto(addr385);
                                                                                             }
                                                                                             addr594:
                                                                                             §§push(_loc2_ < this.§2!X§);
                                                                                             if(_loc2_ < this.§2!X§)
                                                                                             {
                                                                                                addr596:
                                                                                                §§pop();
                                                                                                addr597:
                                                                                                §§push(this.§=",§);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§push(this.§2!X§);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr554:
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      if(!(_loc11_ && _loc2_))
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            addr564:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc11_ && _loc2_))
                                                                                                               {
                                                                                                                  dispatchEvent(new Event(Event.§2"$§));
                                                                                                               }
                                                                                                               addr589:
                                                                                                               §§push(this.onComplete);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     addr521:
                                                                                                                     if(§§pop() != §§pop())
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           if(!(_loc11_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr536:
                                                                                                                              this.onComplete.apply(null,this.§0"0§);
                                                                                                                              addr537:
                                                                                                                              if(_loc11_ && _loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr589);
                                                                                                                              }
                                                                                                                              return;
                                                                                                                              addr534:
                                                                                                                              addr533:
                                                                                                                              addr544:
                                                                                                                              addr531:
                                                                                                                           }
                                                                                                                           §§goto(addr597);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  §§goto(addr534);
                                                                                                               }
                                                                                                               §§goto(addr533);
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                         §§goto(addr594);
                                                                                                      }
                                                                                                      §§goto(addr596);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr594);
                                                                                             }
                                                                                             §§goto(addr564);
                                                                                             addr508:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr594);
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        addr474:
                                                                        §§push(this.§6L§);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(null);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr484:
                                                                                    §§push(this.§6L§);
                                                                                    if(_loc12_ || _loc2_)
                                                                                    {
                                                                                       addr493:
                                                                                       §§push(null);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(this.§5j§);
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             §§pop().apply(§§pop(),§§pop());
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§goto(addr508);
                                                                                             }
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                          §§goto(addr536);
                                                                                       }
                                                                                       §§goto(addr521);
                                                                                    }
                                                                                    §§goto(addr536);
                                                                                 }
                                                                                 §§goto(addr544);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr521);
                                                                        }
                                                                        §§goto(addr493);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            if(_loc12_ || this)
                                                            {
                                                               §§goto(addr474);
                                                            }
                                                            §§goto(addr531);
                                                         }
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr158);
                                                }
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr260);
               }
            }
            addr202:
            return;
         }
         §§goto(addr48);
      }
      
      public function get §^+§() : Boolean
      {
         return this.§=",§ >= this.§2!X§;
      }
      
      public function get target() : Object
      {
         return this.§!N§;
      }
      
      public function get §1"%§() : String
      {
         return this.§@"+§;
      }
      
      public function get § "-§() : Number
      {
         return this.§2!X§;
      }
      
      public function get §[Q§() : Number
      {
         return this.§=",§;
      }
      
      public function get delay() : Number
      {
         return this.§,y§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.§=",§);
            if(_loc2_ || param1)
            {
               §§push(this.§,y§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     addr83:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§=",§ = §§pop();
                  do
                  {
                     this.§,y§ = param1;
                  }
                  while(!_loc2_);
                  
                  return;
                  addr44:
               }
            }
            §§goto(addr83);
         }
         §§goto(addr44);
      }
      
      public function get §+!2§() : Boolean
      {
         return this.§break§;
      }
      
      public function set §+!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§break§ = param1;
         }
      }
      
      public function get §>!R§() : Function
      {
         return this.§^=§;
      }
      
      public function set §>!R§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^=§ = param1;
         }
      }
      
      public function get §6L§() : Function
      {
         return this.§2L§;
      }
      
      public function set §6L§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2L§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§;!h§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§;!h§ = param1;
         }
      }
      
      public function get §&"+§() : Array
      {
         return this.§]!Z§;
      }
      
      public function set §&"+§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!Z§ = param1;
         }
      }
      
      public function get §`!f§() : Array
      {
         return this.§5j§;
      }
      
      public function set §`!f§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§5j§ = param1;
         }
      }
      
      public function get §38§() : Array
      {
         return this.§0"0§;
      }
      
      public function set §38§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§0"0§ = param1;
         }
      }
   }
}
