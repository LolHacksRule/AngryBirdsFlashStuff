package §<!0§
{
   public class §9!G§ extends §`v§ implements §'c§
   {
       
      
      private var §>V§:Number;
      
      private var §1!O§:Boolean;
      
      private var §`!"§:Boolean;
      
      private var §else§:Function;
      
      private var §[!W§:Object;
      
      private var §?P§:Object;
      
      private var §9!e§:Object;
      
      public function §9!G§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
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
               if(!(_loc7_ && param1))
               {
                  if(§§pop() <= 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr117:
                        }
                        while(true)
                        {
                           param4 = §§pop();
                           addr119:
                           while(true)
                           {
                           }
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc7_ && this)
                           {
                              continue loop1;
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§`!"§ = true;
                              continue loop5;
                              addr37:
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              param2 = this.§[!_§(param2,param1);
                              if(!_loc7_)
                              {
                                 if(param3 != null)
                                 {
                                    if(!_loc7_)
                                    {
                                       param3 = this.§[!_§(param3,param2);
                                       if(!_loc7_)
                                       {
                                          this.§4L§(param2,param3);
                                          if(!_loc7_)
                                          {
                                             addr165:
                                             this.§[!W§ = param1;
                                             addr160:
                                          }
                                          return;
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                                 else
                                 {
                                    this.§4L§(param2,param1);
                                 }
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr119);
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§>V§ = §§pop();
                     §§goto(addr102);
                     §§goto(addr119);
                  }
               }
               §§goto(addr117);
            }
         }
         §§goto(addr119);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§1!O§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§`!"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.stop();
            loop0:
            do
            {
               this.§[!W§ = null;
               while(true)
               {
                  this.§9!e§ = null;
                  while(_loc1_ || _loc2_)
                  {
                     this.§?P§ = null;
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §6c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#!c§ = -§9T§;
            do
            {
               this.§1!O§ = false;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function §[!_§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!_loc7_)
            {
               §§push(param2[_loc4_] == null);
               if(!_loc7_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param2[_loc4_] is Number);
                                    if(!(_loc8_ || param2))
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_[_loc4_] = param1[_loc4_];
                                                      break loop7;
                                                   }
                                                   addr71:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr79:
                                                      while(true)
                                                      {
                                                         §§push(param1[_loc4_] is Number);
                                                         if(_loc8_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr122:
                                                }
                                             }
                                             break loop7;
                                          }
                                          continue loop0;
                                       }
                                       addr53:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       addr121:
                                    }
                                    §§goto(addr122);
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr79);
                                 }
                              }
                           }
                           §§goto(addr53);
                        }
                        continue;
                        addr94:
                     }
                     §§goto(addr121);
                  }
               }
            }
            §§goto(addr71);
         }
         return _loc3_;
      }
      
      private function §4L§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!_loc8_)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!(_loc9_ || param1))
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(!_loc8_)
         {
            this.§9!e§ = _loc3_;
            do
            {
               this.§?P§ = _loc4_;
            }
            while(!_loc9_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§1!O§)
            {
               loop0:
               while(true)
               {
                  this.§1!O§ = true;
                  while(true)
                  {
                     §%H§ = null;
                     loop2:
                     while(!(_loc1_ && this))
                     {
                        while(true)
                        {
                           §#!c§ = this.§>V§;
                           if(!_loc1_)
                           {
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
         §§goto(addr75);
      }
      
      public function §!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!this.§1!O§)
            {
               do
               {
                  this.§1!O§ = true;
                  do
                  {
                     §#!c§ = this.§>V§;
                     do
                     {
                        this.§ !?§();
                     }
                     while(_loc2_ && _loc1_);
                     
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(_loc2_ && _loc2_);
               
               addr82:
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function §@0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!"§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!"§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§`!"§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  addr177:
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop0;
                           }
                           addr152:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §#!c§ += param1;
                                    while(true)
                                    {
                                       if(§#!c§ >= this.§>V§)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(!§=O§)
                                             {
                                                §#!c§ = 0;
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr42:
                                                      while(true)
                                                      {
                                                         this.§ !?§();
                                                         continue loop4;
                                                      }
                                                      addr42:
                                                   }
                                                   else
                                                   {
                                                      do
                                                      {
                                                         if(_loc2_ && this)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      while(!(_loc3_ || _loc2_));
                                                      
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr42);
                                                      addr71:
                                                   }
                                                   §§goto(addr42);
                                                }
                                                continue;
                                             }
                                          }
                                          while(true)
                                          {
                                             §#!c§ = this.§>V§;
                                             while(true)
                                             {
                                                this.§1!O§ = true;
                                                §§goto(addr71);
                                             }
                                          }
                                       }
                                       §§goto(addr42);
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     addr179:
                  }
                  while(true)
                  {
                     §§goto(addr152);
                  }
               }
               §§goto(addr179);
            }
            §§goto(addr177);
         }
         §§goto(addr52);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.update(0);
         }
      }
      
      private function § !?§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(_loc5_)
            {
               addr29:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§<m§());
               if(_loc5_ || _loc1_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  var _loc2_:int = 0;
                  if(_loc5_)
                  {
                     var _loc3_:* = this.§9!e§;
                     if(_loc4_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(!_loc4_)
                        {
                           this.§[!W§[attribute] = this.§?P§[attribute] + this.§9!e§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!_loc4_)
               {
                  §1!O§ = true;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr130);
               }
               if(!§,s§)
               {
                  addr130:
                  throw e;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §'!%§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.isCompleted);
            if(_loc3_ || this)
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
                           addr46:
                           §§push(§%H§ == null);
                           if(_loc3_)
                           {
                              §§goto(addr62);
                           }
                           addr62:
                           §§goto(addr61);
                        }
                        §§goto(addr63);
                     }
                     addr61:
                     if(!§§pop())
                     {
                        try
                        {
                           addr63:
                           §%H§();
                           if(_loc3_)
                           {
                              §%H§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              §%H§ = null;
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(§,s§)
                                 {
                                 }
                              }
                           }
                           throw e;
                        }
                     }
                     return;
                  }
                  §§goto(addr62);
               }
               §§goto(addr38);
            }
            §§goto(addr62);
         }
         §§goto(addr46);
      }
      
      private function §<m§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§>V§);
            if(_loc3_)
            {
               if(§§pop() <= 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr27);
                  }
               }
               §§push(Number(Math.max(0,§#!c§)));
            }
            var _loc1_:* = §§pop();
            if(!(_loc2_ && this))
            {
               _loc1_ = Number(Math.min(_loc1_,this.§>V§));
            }
            return this.§else§(_loc1_,0,1,this.§>V§);
         }
         addr27:
         return 1;
      }
   }
}
