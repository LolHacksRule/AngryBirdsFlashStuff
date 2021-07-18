package §`!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@6§ extends EventDispatcher implements § !7§
   {
       
      
      private var §`!^§:Object;
      
      private var §6u§:String;
      
      private var §%Q§:Vector.<String>;
      
      private var §1!0§:Vector.<Number>;
      
      private var §#C§:Vector.<Number>;
      
      private var §!!?§:Function;
      
      private var §&M§:Function;
      
      private var §='§:Function;
      
      private var §`G§:Array;
      
      private var §<G§:Array;
      
      private var §6!7§:Array;
      
      private var §=!%§:Number;
      
      private var §[_§:Number;
      
      private var §2K§:Number;
      
      private var §>k§:Boolean;
      
      public function §@6§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§`!^§ = param1;
            loop1:
            while(true)
            {
               this.§[_§ = 0;
               while(true)
               {
                  this.§=!%§ = Math.max(0.0001,param2);
                  loop3:
                  while(true)
                  {
                     this.§2K§ = 0;
                     addr116:
                     while(true)
                     {
                        this.§6u§ = param3;
                        continue loop3;
                     }
                  }
                  if(!_loc4_)
                  {
                     this.§#C§ = new Vector.<Number>(0);
                     addr73:
                     if(_loc4_)
                     {
                        loop8:
                        while(true)
                        {
                           if(_loc5_ || this)
                           {
                              §§goto(addr54);
                           }
                           else
                           {
                              loop7:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    this.§1!0§ = new Vector.<Number>(0);
                                    continue loop8;
                                 }
                                 addr92:
                                 while(true)
                                 {
                                    this.§%Q§ = new Vector.<String>(0);
                                    continue loop7;
                                 }
                              }
                              §§goto(addr116);
                           }
                        }
                        §§goto(addr97);
                     }
                     if(_loc5_)
                     {
                        return;
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc4_ && param3)
            {
               continue;
            }
            this.§>k§ = false;
            §§goto(addr92);
         }
      }
      
      public function §&!M§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(this.§`!^§ != null)
            {
               while(true)
               {
                  this.§%Q§.push(param1);
                  loop1:
                  while(!(_loc4_ && this))
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§1!0§.push(Number.NaN);
                           do
                           {
                              this.§#C§.push(param2);
                           }
                           while(!_loc3_);
                           
                           if(!(_loc4_ && param2))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                        addr84:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function §+1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§&!M§("scaleX",param1);
         }
         do
         {
            this.§&!M§("scaleY",param1);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&!M§("x",param1);
            do
            {
               this.§&!M§("y",param2);
            }
            while(!_loc4_);
            
         }
      }
      
      public function §<'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§&!M§("alpha",param1);
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
         if(_loc12_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc11_ && param1))
            {
               if(§§pop() == 0)
               {
                  if(_loc12_ || _loc3_)
                  {
                     §§goto(addr52);
                  }
               }
               §§push(this.§[_§);
               if(!(_loc11_ && _loc3_))
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc11_ && param1))
               {
                  §§push(this);
                  §§push(this.§[_§);
                  if(!_loc11_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§[_§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(this.§[_§);
                     if(_loc12_)
                     {
                        §§push(0);
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
                                       addr233:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          addr209:
                                          while(true)
                                          {
                                             §§push(§§pop() >= this.§=!%§);
                                          }
                                       }
                                    }
                                    addr232:
                                 }
                                 while(true)
                                 {
                                    addr213:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop0;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§8!8§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(null);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc11_ && _loc2_))
                                                {
                                                   §§push(!§§pop());
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc12_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(0);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break;
                                                                                 addr158:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc12_ || _loc3_))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8!8§);
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(null);
                                                                                                   if(_loc11_ && this)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§pop().apply(§§pop(),this.§`G§);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr171);
                                                                                             }
                                                                                             addr259:
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop16;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§push(Math.min(this.§=!%§,this.§[_§) / this.§=!%§);
                                                                                       if(_loc12_ || _loc2_)
                                                                                       {
                                                                                       }
                                                                                       break loop16;
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr111:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr171:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc12_ || _loc3_))
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§push(this.§[_§);
                                                                                       if(_loc11_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§goto(addr209);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr170);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr260:
                                                                     var _loc3_:* = §§pop();
                                                                     var _loc4_:int = this.§1!0§.length;
                                                                     var _loc5_:int = 0;
                                                                     addr449:
                                                                     if(_loc5_ < _loc4_)
                                                                     {
                                                                        if(isNaN(this.§1!0§[_loc5_]))
                                                                        {
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              this.§1!0§[_loc5_] = this.§`!^§[this.§%Q§[_loc5_]] as Number;
                                                                           }
                                                                           addr360:
                                                                        }
                                                                        addr321:
                                                                        §§push(Number(this.§1!0§[_loc5_]));
                                                                        if(_loc12_)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr330:
                                                                           §§push(Number(this.§#C§[_loc5_]));
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc12_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr292:
                                                                                             _loc8_ = §§pop();
                                                                                             if(_loc12_ || param1)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(_loc12_ || this)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr321);
                                                                                                      }
                                                                                                      _loc9_ = §91§.§=!0§(this.§6u§);
                                                                                                      if(_loc12_ || _loc2_)
                                                                                                      {
                                                                                                         addr447:
                                                                                                         §§push(_loc6_);
                                                                                                         if(!(_loc11_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         _loc10_ = §§pop();
                                                                                                         addr448:
                                                                                                         if(this.§>k§)
                                                                                                         {
                                                                                                            addr416:
                                                                                                            §§push(Number(Math.round(_loc10_)));
                                                                                                            if(_loc12_ || this)
                                                                                                            {
                                                                                                               _loc10_ = §§pop();
                                                                                                               addr395:
                                                                                                               this.§`!^§[this.§%Q§[_loc5_]] = _loc10_;
                                                                                                               addr428:
                                                                                                               if(!(_loc11_ && _loc3_))
                                                                                                               {
                                                                                                                  _loc5_++;
                                                                                                                  if(_loc12_ || param1)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr395);
                                                                                                                           }
                                                                                                                           §§goto(addr449);
                                                                                                                        }
                                                                                                                        §§goto(addr416);
                                                                                                                     }
                                                                                                                     §§goto(addr428);
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                                  addr411:
                                                                                                               }
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            §§goto(addr447);
                                                                                                         }
                                                                                                         §§goto(addr395);
                                                                                                      }
                                                                                                      §§goto(addr411);
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                }
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                             §§push(this.§ v§);
                                                                                             if(_loc12_ || _loc3_)
                                                                                             {
                                                                                                §§push(null);
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   addr501:
                                                                                                   §§push(this.§<G§);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§pop().apply(§§pop(),§§pop());
                                                                                                      if(_loc12_ || _loc2_)
                                                                                                      {
                                                                                                         addr609:
                                                                                                         §§push(_loc2_ < this.§=!%§);
                                                                                                         if(_loc2_ < this.§=!%§)
                                                                                                         {
                                                                                                            addr611:
                                                                                                            §§pop();
                                                                                                            addr612:
                                                                                                            §§push(this.§[_§);
                                                                                                            if(_loc12_ || _loc2_)
                                                                                                            {
                                                                                                               addr577:
                                                                                                               §§push(this.§=!%§);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  addr581:
                                                                                                                  §§push(§§pop() >= §§pop());
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        addr586:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr588:
                                                                                                                           dispatchEvent(new Event(Event.§0<§));
                                                                                                                           addr604:
                                                                                                                           §§push(this.onComplete);
                                                                                                                           if(_loc12_ || this)
                                                                                                                           {
                                                                                                                              addr528:
                                                                                                                              §§push(null);
                                                                                                                              if(_loc12_ || this)
                                                                                                                              {
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc11_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc11_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr563:
                                                                                                                                             this.onComplete.apply(null,this.§6!7§);
                                                                                                                                             addr564:
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr612);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                             addr561:
                                                                                                                                             addr560:
                                                                                                                                             addr558:
                                                                                                                                          }
                                                                                                                                          §§goto(addr588);
                                                                                                                                       }
                                                                                                                                       §§goto(addr604);
                                                                                                                                    }
                                                                                                                                    §§goto(addr564);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr561);
                                                                                                                           }
                                                                                                                           §§goto(addr560);
                                                                                                                        }
                                                                                                                        §§goto(addr564);
                                                                                                                     }
                                                                                                                     §§goto(addr609);
                                                                                                                  }
                                                                                                                  §§goto(addr611);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr609);
                                                                                                         }
                                                                                                         §§goto(addr586);
                                                                                                      }
                                                                                                      §§goto(addr558);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr563);
                                                                                          }
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    §§goto(addr609);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr581);
                                                                           }
                                                                           §§goto(addr609);
                                                                        }
                                                                        §§goto(addr577);
                                                                     }
                                                                     if(_loc12_ || _loc3_)
                                                                     {
                                                                        §§push(this.§ v§);
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           §§push(null);
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 if(_loc12_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr588);
                                                                              }
                                                                              §§goto(addr609);
                                                                           }
                                                                           §§goto(addr501);
                                                                        }
                                                                        §§goto(addr528);
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr233);
                                                                  }
                                                               }
                                                            }
                                                            addr203:
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc11_ && param1)
                           {
                              continue;
                           }
                           §§push(§§pop() >= §§pop());
                           if(!_loc11_)
                           {
                              if(_loc12_ || param1)
                              {
                                 if(!_loc11_)
                                 {
                                    §§goto(addr111);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr260);
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr62);
         }
         addr52:
      }
      
      public function get §@@§() : Boolean
      {
         return this.§[_§ >= this.§=!%§;
      }
      
      public function get target() : Object
      {
         return this.§`!^§;
      }
      
      public function get §<1§() : String
      {
         return this.§6u§;
      }
      
      public function get §,l§() : Number
      {
         return this.§=!%§;
      }
      
      public function get §[m§() : Number
      {
         return this.§[_§;
      }
      
      public function get delay() : Number
      {
         return this.§2K§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            §§push(this.§[_§);
            if(!_loc2_)
            {
               §§push(this.§2K§);
               if(!(_loc2_ && param1))
               {
                  addr85:
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(param1);
                  }
                  §§pop().§[_§ = §§pop();
                  do
                  {
                     this.§2K§ = param1;
                  }
                  while(!(_loc3_ || this));
                  
                  return;
                  addr50:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr85);
         }
         §§goto(addr50);
      }
      
      public function get §0$§() : Boolean
      {
         return this.§>k§;
      }
      
      public function set §0$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>k§ = param1;
         }
      }
      
      public function get §8!8§() : Function
      {
         return this.§!!?§;
      }
      
      public function set §8!8§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!!?§ = param1;
         }
      }
      
      public function get § v§() : Function
      {
         return this.§&M§;
      }
      
      public function set § v§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&M§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§='§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§='§ = param1;
         }
      }
      
      public function get §5!V§() : Array
      {
         return this.§`G§;
      }
      
      public function set §5!V§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`G§ = param1;
         }
      }
      
      public function get §=g§() : Array
      {
         return this.§<G§;
      }
      
      public function set §=g§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§<G§ = param1;
         }
      }
      
      public function get §+!$§() : Array
      {
         return this.§6!7§;
      }
      
      public function set §+!$§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!7§ = param1;
         }
      }
   }
}
