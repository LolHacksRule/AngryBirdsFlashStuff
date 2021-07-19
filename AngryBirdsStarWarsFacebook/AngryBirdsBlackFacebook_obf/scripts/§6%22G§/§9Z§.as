package §6"G§
{
   public class §9Z§ extends §?!4§ implements § #B§
   {
       
      
      private var §5"v§:Number;
      
      private var §9"6§:Boolean;
      
      private var §!"c§:Function;
      
      private var §%!c§:Object;
      
      private var §[!e§:Object;
      
      private var §3!>§:Object;
      
      private var §<!i§:Number = 0.0;
      
      public function §9Z§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
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
                     if(_loc6_)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(!(_loc7_ && param2))
                           {
                              addr106:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 param4 = §§pop();
                              }
                              addr106:
                           }
                           §§goto(addr106);
                        }
                        addr97:
                     }
                     while(true)
                     {
                     }
                     addr107:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§5"v§ = §§pop();
                     while(true)
                     {
                        this.§!"c§ = param5;
                        loop4:
                        while(true)
                        {
                           addr43:
                           while(true)
                           {
                              §@o§ = 0;
                              continue loop4;
                           }
                           continue loop2;
                        }
                        if(_loc7_ && param2)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           §§goto(addr43);
                        }
                        param2 = this.§'#6§(param2,param1);
                        if(_loc6_)
                        {
                           if(param3 != null)
                           {
                              if(!_loc7_)
                              {
                                 param3 = this.§'#6§(param3,param2);
                                 if(!(_loc7_ && this))
                                 {
                                    this.§-g§(param2,param3);
                                    if(_loc6_ || param2)
                                    {
                                       addr163:
                                       this.§%!c§ = param1;
                                       addr158:
                                    }
                                    return;
                                 }
                                 §§goto(addr158);
                              }
                           }
                           else
                           {
                              this.§-g§(param2,param1);
                           }
                        }
                        §§goto(addr163);
                     }
                  }
               }
               §§goto(addr106);
            }
         }
         §§goto(addr97);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9"6§;
      }
      
      public function set §]!X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!i§ = param1;
         }
      }
      
      public function get §]!X§() : Number
      {
         return this.§<!i§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.stop();
         }
         while(true)
         {
            this.§%!c§ = null;
            loop1:
            while(!_loc2_)
            {
               this.§3!>§ = null;
               do
               {
                  this.§[!e§ = null;
                  while(_loc1_ || _loc2_)
                  {
                     super.dispose();
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr33);
                  }
                  continue loop1;
               }
               while(_loc2_ && _loc2_);
               
               return;
            }
         }
      }
      
      public function §=#O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §@o§ = -§"!l§;
            do
            {
               this.§9"6§ = false;
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      private function §'#6§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(_loc8_)
            {
               §§push(param2[_loc4_] == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc8_ || _loc3_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr126:
                           while(true)
                           {
                              §§pop();
                              addr127:
                              while(true)
                              {
                                 addr79:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                    addr85:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                           addr126:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              continue loop2;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§pop();
                                    continue;
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr48);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr100);
         }
         return _loc3_;
      }
      
      private function §-g§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc9_)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!(_loc9_ || param1))
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(!(_loc8_ && _loc3_))
         {
            this.§3!>§ = _loc3_;
         }
         do
         {
            this.§[!e§ = _loc4_;
         }
         while(!(_loc9_ || param1));
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§9"6§)
            {
               if(!_loc2_)
               {
                  this.§9"6§ = true;
               }
               loop0:
               while(true)
               {
                  §;!S§ = null;
                  addr52:
                  while(true)
                  {
                     §@o§ = this.§5"v§;
                     if(_loc1_ || this)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr52);
      }
      
      public function §^"P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§9"6§)
            {
               loop0:
               do
               {
                  this.§9"6§ = true;
                  while(true)
                  {
                     §@o§ = this.§5"v§;
                     while(!_loc1_)
                     {
                        this.§,!r§();
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc2_ || _loc2_));
               
               addr73:
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§"c§(param1))
            {
               loop0:
               while(true)
               {
                  if(§@o§ >= this.§5"v§ + this.§<!i§ * 1000)
                  {
                     while(true)
                     {
                        if(!§'#_§)
                        {
                           §@o§ = 0;
                           loop2:
                           for(; _loc3_; while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr52:
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       this.§9"6§ = true;
                                    }
                                    addr121:
                                 }
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr42);
                                    §§goto(addr52);
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           })
                           {
                              while(true)
                              {
                                 this.§,!r§();
                                 continue loop2;
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           §@o§ = this.§5"v§;
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr42);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr73);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.update(0);
         }
      }
      
      private function §,!r§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_)
            {
               addr28:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§="a§());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  var _loc2_:int = 0;
                  if(!(_loc5_ && _loc1_))
                  {
                     var _loc3_:* = this.§3!>§;
                     if(_loc5_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           this.§%!c§[attribute] = this.§[!e§[attribute] + this.§3!>§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(_loc4_ || _loc1_)
               {
                  §9"6§ = true;
                  if(_loc5_)
                  {
                  }
                  §§goto(addr144);
               }
               if(!§4"q§)
               {
                  addr144:
                  throw e;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §+#'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.isCompleted);
            if(!(_loc4_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr38:
                        §§pop();
                        if(_loc3_ || this)
                        {
                           §§push(§;!S§ == null);
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr62);
                        }
                        §§goto(addr63);
                     }
                     §§push(!§§pop());
                  }
               }
               addr62:
               if(§§pop())
               {
                  try
                  {
                     addr63:
                     §;!S§();
                     if(_loc3_)
                     {
                        §;!S§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     var _loc2_:* = e;
                     if(!(_loc4_ && _loc2_))
                     {
                        §;!S§ = null;
                        if(!_loc4_)
                        {
                           if(§4"q§)
                           {
                           }
                        }
                     }
                     throw e;
                  }
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr63);
      }
      
      private function §="a§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§5"v§);
            if(_loc3_)
            {
               if(§§pop() <= 0)
               {
                  if(_loc3_)
                  {
                     §§goto(addr27);
                  }
               }
               §§push(Number(Math.max(0,§@o§)));
            }
            var _loc1_:* = §§pop();
            if(!(_loc2_ && _loc2_))
            {
               _loc1_ = Number(Math.min(_loc1_,this.§5"v§));
            }
            return this.§!"c§(_loc1_,0,1,this.§5"v§);
         }
         addr27:
         return 1;
      }
   }
}
