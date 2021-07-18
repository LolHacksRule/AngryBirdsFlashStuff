package §5!1§
{
   public class §use § extends §^Q§ implements §&C§
   {
       
      
      private var §7!T§:Number;
      
      private var §=!2§:Boolean;
      
      private var §6Q§:Boolean;
      
      private var §#b§:Function;
      
      private var §'Q§:Object;
      
      private var §##§:Object;
      
      private var §@!O§:Object;
      
      public function §use §(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
         }
         while(true)
         {
            §§push(param4);
            if(_loc6_ || param1)
            {
               if(§§pop() <= 0)
               {
                  loop1:
                  while(!_loc7_)
                  {
                     §§push(0);
                     if(!(_loc7_ && param2))
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr112:
                     }
                     while(true)
                     {
                        param4 = §§pop();
                        addr114:
                        while(true)
                        {
                           addr59:
                           if(_loc6_ || this)
                           {
                              while(true)
                              {
                                 this.§6Q§ = true;
                                 do
                                 {
                                    this.§=!2§ = false;
                                 }
                                 while(_loc7_ && param1);
                                 
                                 if(!(_loc6_ || param3))
                                 {
                                    break;
                                 }
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 param2 = this.§do §(param2,param1);
                                 if(_loc6_)
                                 {
                                    if(param3 != null)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          param3 = this.§do §(param3,param2);
                                          if(_loc6_)
                                          {
                                             this.§@!8§(param2,param3);
                                             if(!_loc7_)
                                             {
                                                addr165:
                                                this.§'Q§ = param1;
                                             }
                                          }
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       this.§@!8§(param2,param1);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                              loop6:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    addr52:
                                    if(_loc6_ || param2)
                                    {
                                       §§goto(addr59);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§#b§ = param5;
                                          §§goto(addr52);
                                       }
                                       addr90:
                                    }
                                 }
                                 while(true)
                                 {
                                    §+K§ = 0;
                                    continue loop6;
                                 }
                              }
                              addr41:
                           }
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  §§push(this);
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§7!T§ = §§pop();
                  §§goto(addr90);
                  §§goto(addr114);
               }
            }
            §§goto(addr112);
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§=!2§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§6Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop();
            loop0:
            while(true)
            {
               this.§'Q§ = null;
               while(true)
               {
                  this.§@!O§ = null;
                  loop2:
                  while(_loc2_ || this)
                  {
                     while(true)
                     {
                        this.§##§ = null;
                        if(_loc2_)
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
         §§goto(addr69);
      }
      
      public function §9!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §+K§ = -§]A§;
            do
            {
               this.§=!2§ = false;
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §do §(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!_loc8_)
            {
               §§push(param2[_loc4_] == null);
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
                           while(true)
                           {
                              §§pop();
                              addr126:
                              while(true)
                              {
                                 addr80:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                 }
                              }
                           }
                           addr125:
                        }
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc8_ && param2)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          _loc3_[_loc4_] = param1[_loc4_];
                                          break;
                                       }
                                       while(_loc7_)
                                       {
                                          §§push(param2[_loc4_] is Number);
                                          if(_loc7_)
                                          {
                                             continue loop8;
                                          }
                                          §§pop();
                                       }
                                       §§goto(addr126);
                                    }
                                    break;
                                 }
                                 break loop7;
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop7;
                                    }
                                    §§goto(addr80);
                                 }
                                 addr78:
                              }
                              while(!(_loc8_ && this))
                              {
                                 §§goto(addr103);
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         return _loc3_;
      }
      
      private function §@!8§(param1:Object, param2:Object) : void
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
               if(!_loc8_)
               {
                  _loc4_[_loc5_] = param2[_loc5_];
               }
            }
         }
         if(!(_loc8_ && this))
         {
            this.§@!O§ = _loc3_;
         }
         do
         {
            this.§##§ = _loc4_;
         }
         while(!(_loc9_ || param1));
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§=!2§)
            {
               loop0:
               while(true)
               {
                  this.§=!2§ = true;
                  addr87:
                  addr58:
                  while(true)
                  {
                     §,3§ = null;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function §2=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§=!2§)
            {
               loop0:
               do
               {
                  this.§=!2§ = true;
                  while(true)
                  {
                     §+K§ = this.§7!T§;
                     while(!(_loc1_ && this))
                     {
                        this.§'!8§();
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc1_ && _loc2_);
               
               addr51:
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §99§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6Q§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§6Q§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6Q§);
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
                     addr140:
                     do
                     {
                        §§push(this.isCompleted);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc2_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §+K§ += param1;
                        while(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              if(§+K§ >= this.§7!T§)
                              {
                                 while(true)
                                 {
                                    if(!§#c§)
                                    {
                                       §+K§ = 0;
                                       while(true)
                                       {
                                          §§goto(addr45);
                                       }
                                    }
                                    §§goto(addr80);
                                 }
                              }
                              addr45:
                              §§goto(addr44);
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         addr44:
         loop11:
         while(true)
         {
            this.§'!8§();
            do
            {
               this.§8!e§();
            }
            while(_loc2_);
            
            if(_loc3_)
            {
               if(_loc3_)
               {
                  addr33:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop6;
                     }
                     addr80:
                     while(!_loc2_)
                     {
                        §+K§ = this.§7!T§;
                     }
                     §§goto(addr140);
                  }
                  while(true)
                  {
                     this.§=!2§ = true;
                     §§goto(addr33);
                  }
               }
               while(!_loc2_)
               {
                  continue loop11;
               }
               continue loop5;
            }
         }
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
      
      private function §'!8§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
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
               §§push(this.§'O§());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || _loc3_)
               {
                  var _loc2_:* = 0;
                  if(!_loc5_)
                  {
                     var _loc3_:* = this.§@!O§;
                     if(_loc4_ || _loc3_)
                     {
                        for(attribute in _loc3_)
                        {
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        addr159:
                        return;
                        addr109:
                        addr112:
                        addr113:
                     }
                     while(true)
                     {
                        this.§'Q§[attribute] = this.§##§[attribute] + this.§@!O§[attribute] * timeValue;
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr113);
            }
            catch(e:Error)
            {
               _loc2_ = e;
               if(!(_loc5_ && this))
               {
                  §=!2§ = true;
                  if(_loc4_ || _loc2_)
                  {
                  }
                  §§goto(addr154);
               }
               if(!§ !Z§)
               {
                  addr154:
                  throw e;
               }
            }
            §§goto(addr159);
         }
         §§goto(addr33);
      }
      
      private function §8!e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.isCompleted);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§goto(addr35);
               }
               §§goto(addr67);
            }
            addr35:
            if(§§pop())
            {
               if(!(_loc3_ && _loc1_))
               {
                  §§pop();
                  if(!_loc3_)
                  {
                     §§push(§,3§ == null);
                     if(_loc4_ || _loc1_)
                     {
                        addr67:
                        §§push(!§§pop());
                     }
                  }
                  try
                  {
                     addr69:
                     §,3§();
                     if(!_loc3_)
                     {
                        §,3§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     var _loc2_:* = e;
                     if(_loc4_ || _loc2_)
                     {
                        §,3§ = null;
                        if(_loc4_ || _loc2_)
                        {
                           if(§ !Z§)
                           {
                           }
                        }
                     }
                     throw e;
                  }
                  §§goto(addr122);
               }
            }
            if(§§pop())
            {
               §§goto(addr69);
            }
            addr122:
            return;
         }
         §§goto(addr69);
      }
      
      private function §'O§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7!T§);
            if(_loc2_)
            {
               if(§§pop() <= 0)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr26);
                  }
               }
               §§push(Number(Math.max(0,§+K§)));
            }
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc1_))
            {
               _loc1_ = Number(Math.min(_loc1_,this.§7!T§));
            }
            return this.§#b§(_loc1_,0,1,this.§7!T§);
         }
         addr26:
         return 1;
      }
   }
}
