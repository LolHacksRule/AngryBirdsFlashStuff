package § !x§
{
   public class §[!`§ extends §2k§ implements §#!K§
   {
       
      
      private var §87§:Number;
      
      private var §2_§:Boolean;
      
      private var §#m§:Boolean;
      
      private var §,Q§:String;
      
      private var §,t§:Object;
      
      private var §9!K§:Object;
      
      private var §6!i§:Object;
      
      public function §[!`§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc6_ || param3)
               {
                  if(§§pop() <= 0)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           addr108:
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param4 = §§pop();
                              addr109:
                              while(true)
                              {
                              }
                           }
                           addr108:
                        }
                        §§goto(addr108);
                     }
                     addr104:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§87§ = §§pop();
                     loop3:
                     while(true)
                     {
                        this.§,Q§ = param5;
                        loop4:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              §?Q§ = 0;
                              loop5:
                              for(; _loc6_; if(!(_loc6_ || this))
                              {
                                 continue;
                              },if(!(_loc6_ || param1))
                              {
                                 break loop4;
                              },if(false)
                              {
                                 §§goto(addr46);
                              },§§goto(addr113))
                              {
                                 while(true)
                                 {
                                    this.§#m§ = true;
                                    loop7:
                                    while(!_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          this.§2_§ = false;
                                          if(_loc6_ || param1)
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                       }
                                       param2 = this.§+!I§(param2,param1);
                                       if(_loc6_)
                                       {
                                          if(param3 != null)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                param3 = this.§+!I§(param3,param2);
                                                if(!_loc7_)
                                                {
                                                   this.§!!r§(param2,param3);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr165:
                                                      this.§,t§ = param1;
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             this.§!!r§(param2,param1);
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    continue loop3;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr104);
                        }
                        continue loop2;
                     }
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr54);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2_§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§#m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.stop();
         }
         loop0:
         while(true)
         {
            this.§,t§ = null;
            while(true)
            {
               this.§6!i§ = null;
               while(_loc1_ || this)
               {
                  if(_loc1_)
                  {
                     this.§9!K§ = null;
                     if(_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §2W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?Q§ = -§%U§;
         }
         do
         {
            this.§2_§ = false;
         }
         while(!_loc1_);
         
      }
      
      private function §+!I§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(_loc7_ || param2)
            {
               §§push(param2[_loc4_] == null);
               if(!_loc8_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr141:
                           loop9:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(param1[_loc4_] is Number);
                                 if(_loc7_ || this)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(§§pop())
                                          {
                                             addr52:
                                             if(!(_loc8_ && this))
                                             {
                                                _loc3_[_loc4_] = param1[_loc4_];
                                             }
                                             if(!_loc8_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc8_ && param2)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(param2[_loc4_] is Number);
                                                   if(!_loc8_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§goto(addr52);
                                                }
                                                addr122:
                                             }
                                             continue loop8;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue loop2;
                                    addr92:
                                 }
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr92);
                  }
               }
            }
            §§goto(addr141);
         }
         return _loc3_;
      }
      
      private function §!!r§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!(_loc9_ && this))
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc8_ || this)
               {
                  _loc4_[_loc5_] = param2[_loc5_];
               }
            }
         }
         if(_loc8_ || param1)
         {
            this.§6!i§ = _loc3_;
            do
            {
               this.§9!K§ = _loc4_;
            }
            while(_loc9_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§2_§)
            {
               loop0:
               do
               {
                  this.§2_§ = true;
                  while(true)
                  {
                     §9!0§ = null;
                     while(!(_loc1_ && _loc2_))
                     {
                        §?Q§ = this.§87§;
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc2_ || _loc1_));
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §;h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!this.§2_§)
            {
               loop0:
               while(true)
               {
                  this.§2_§ = true;
                  while(true)
                  {
                     §?Q§ = this.§87§;
                     loop2:
                     while(!(_loc2_ && this))
                     {
                        while(true)
                        {
                           this.§-!p§();
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc1_)
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
            §§goto(addr34);
         }
         §§goto(addr73);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§#m§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#m§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§#m§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr164:
                        addr121:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(_loc2_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop8;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     addr163:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           return;
                        }
                        while(!(_loc3_ && this))
                        {
                        }
                        §§goto(addr164);
                        addr143:
                     }
                     while(true)
                     {
                        §?Q§ += param1;
                        loop5:
                        while(true)
                        {
                           if(§?Q§ >= this.§87§)
                           {
                              addr87:
                              loop9:
                              while(true)
                              {
                                 if(!§;!6§)
                                 {
                                    §?Q§ = 0;
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                this.§-!p§();
                                                while(true)
                                                {
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc2_ || this))
                                                   {
                                                      continue loop9;
                                                   }
                                                   this.§0u§();
                                                   if(!_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      return;
                                                   }
                                                   addr81:
                                                   while(true)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             continue loop5;
                                             addr36:
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §?Q§ = this.§87§;
                                    continue loop5;
                                 }
                              }
                              addr87:
                           }
                           §§goto(addr36);
                        }
                     }
                     §§goto(addr121);
                  }
                  continue;
               }
               §§goto(addr163);
            }
         }
         §§goto(addr87);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.update(0);
         }
      }
      
      private function §-!p§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || _loc1_)
         {
            §§pop().§§slot[1] = NaN;
            if(!(_loc4_ && _loc3_))
            {
               addr39:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§<!M§());
               if(!(_loc4_ && this))
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  var _loc2_:int = 0;
                  if(!_loc4_)
                  {
                     var _loc3_:* = this.§6!i§;
                     if(_loc4_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(!_loc4_)
                        {
                           this.§,t§[attribute] = this.§9!K§[attribute] + this.§6!i§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §2_§ = true;
                  if(_loc5_)
                  {
                     if(§0b§)
                     {
                     }
                  }
               }
               throw e;
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §0u§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.isCompleted);
            if(_loc4_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr54:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(§9!0§ == null);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr64);
                     }
                     §§push(!§§pop());
                  }
                  addr63:
                  if(§§pop())
                  {
                     try
                     {
                        addr64:
                        §9!0§();
                        if(!_loc3_)
                        {
                           §9!0§ = null;
                        }
                     }
                     catch(e:Error)
                     {
                        var _loc2_:* = e;
                        if(!(_loc3_ && this))
                        {
                           §9!0§ = null;
                           if(_loc3_ && _loc2_)
                           {
                           }
                           §§goto(addr112);
                        }
                        if(!§0b§)
                        {
                           addr112:
                           throw e;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr54);
         }
         §§goto(addr64);
      }
      
      private function §<!M§() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§87§);
            if(_loc4_)
            {
               if(§§pop() <= 0)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr31);
                  }
               }
               §§push(Number(Math.max(0,§?Q§)));
            }
            var _loc1_:* = §§pop();
            if(!_loc5_)
            {
               §§push(Number(Math.min(_loc1_,this.§87§)));
               if(!(_loc5_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  addr55:
                  §§push(_loc1_);
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(§§pop() / this.§87§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               var _loc2_:* = §§pop();
               §§push(this.§,Q§);
               loop0:
               while(true)
               {
                  var _loc3_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     §§push(§5+§.§=2§);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr881:
                                 §§push(7);
                                 if(!_loc5_)
                                 {
                                    addr884:
                                 }
                                 else
                                 {
                                    addr892:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§5+§.§>!u§);
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(1);
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §§goto(addr897);
                                          }
                                          §§goto(addr884);
                                       }
                                       §§goto(addr897);
                                    }
                                    else
                                    {
                                       §§push(§5+§.§&^§);
                                       if(!_loc5_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      §§goto(addr897);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr884);
                                                   }
                                                }
                                                else
                                                {
                                                   addr889:
                                                   §§push(8);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr892);
                                                   }
                                                   §§goto(addr897);
                                                }
                                                §§goto(addr897);
                                             }
                                             else
                                             {
                                                §§push(§5+§.§^E§);
                                                if(!(_loc5_ && this))
                                                {
                                                   addr779:
                                                   §§push(_loc3_);
                                                   if(_loc4_)
                                                   {
                                                      addr782:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(3);
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr897);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr892);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr828:
                                                            §§push(5);
                                                            if(_loc5_ && _loc2_)
                                                            {
                                                               addr855:
                                                            }
                                                            §§goto(addr897);
                                                         }
                                                         §§goto(addr897);
                                                      }
                                                      else
                                                      {
                                                         §§push(§5+§.§!!_§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc4_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr804:
                                                                     §§push(4);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§goto(addr897);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr855);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr852:
                                                                     §§push(6);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr855);
                                                                     }
                                                                     §§goto(addr897);
                                                                  }
                                                                  §§goto(addr897);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§5+§.§+!j§);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr822:
                                                                     §§push(_loc3_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr825:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr828);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr852);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§5+§.§2-§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr841:
                                                                              §§push(_loc3_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr844:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§goto(addr852);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr889);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§5+§.§>M§);
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       addr875:
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr878:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr881);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr889);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr887:
                                                                                             §§push(§5+§.§^!;§);
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr889);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr887);
                                                                                 }
                                                                                 §§goto(addr889);
                                                                              }
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 §§goto(addr889);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr897:
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    switch(§§pop())
                                                                                    {
                                                                                       case 0:
                                                                                          addr899:
                                                                                          break loop1;
                                                                                       case 1:
                                                                                       case 2:
                                                                                          §§push(_loc2_);
                                                                                          §§push(this.§,Q§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(§§pop() == §5+§.§&^§)
                                                                                             {
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc2_);
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            if(!(_loc5_ && _loc1_))
                                                                                                            {
                                                                                                               §§goto(addr121);
                                                                                                            }
                                                                                                            §§goto(addr642);
                                                                                                         }
                                                                                                         §§goto(addr489);
                                                                                                      }
                                                                                                      §§goto(addr628);
                                                                                                   }
                                                                                                   §§goto(addr526);
                                                                                                }
                                                                                             }
                                                                                             addr121:
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc5_ && _loc1_))
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(2.75);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr184:
                                                                                                               §§push(2 / 2.75);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(7.5625);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§push(1.5);
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 §§push(2.75);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(_loc4_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc5_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr237:
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr257);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr412);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr276);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr306);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr473);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr477);
                                                                                                                                                }
                                                                                                                                                §§goto(addr392);
                                                                                                                                             }
                                                                                                                                             §§goto(addr237);
                                                                                                                                          }
                                                                                                                                          §§goto(addr365);
                                                                                                                                       }
                                                                                                                                       §§goto(addr412);
                                                                                                                                    }
                                                                                                                                    §§goto(addr470);
                                                                                                                                 }
                                                                                                                                 §§goto(addr341);
                                                                                                                              }
                                                                                                                              §§goto(addr365);
                                                                                                                           }
                                                                                                                           §§goto(addr268);
                                                                                                                        }
                                                                                                                        §§goto(addr495);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr515:
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr526:
                                                                                                                           §§push(§§pop() - Math.sqrt(1 - _loc2_ * _loc2_));
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr664:
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr564);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr604);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr604);
                                                                                                                              }
                                                                                                                              §§goto(addr613);
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        §§goto(addr628);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(2.5);
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr290);
                                                                                                                        }
                                                                                                                        §§goto(addr675);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                               §§goto(addr412);
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(7.5625);
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr171);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr257:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(0.75);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              addr268:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr276:
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              addr604:
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(_loc5_ && _loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr628);
                                                                                                                              }
                                                                                                                              addr613:
                                                                                                                              _loc2_ = Number(§§pop());
                                                                                                                              addr612:
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr643:
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr675:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       break loop1;
                                                                                                                                    }
                                                                                                                                    addr657:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       break loop1;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr660);
                                                                                                                              }
                                                                                                                              return Math.sqrt(1 - _loc2_ * _loc2_);
                                                                                                                              addr616:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr406:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr409:
                                                                                                                                 §§push(0.9375);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr412:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc4_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr420);
                                                                                                                                    }
                                                                                                                                    break loop1;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr628);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr628);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr317:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(2.25);
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr333:
                                                                                                                                 §§push(2.75);
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    addr341:
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc5_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc5_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             addr365:
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr392:
                                                                                                                                                         if(_loc4_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr406);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr489:
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr492:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr495:
                                                                                                                                                                  §§push(0.984375);
                                                                                                                                                                  if(!(_loc5_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr506);
                                                                                                                                                                     }
                                                                                                                                                                     addr564:
                                                                                                                                                                     return §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr675);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr412);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr675);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr477:
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                   }
                                                                                                                                                   addr478:
                                                                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr489);
                                                                                                                                                      }
                                                                                                                                                      break loop1;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr675);
                                                                                                                                                   §§push(§§pop() - 2);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr476:
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr477);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr462:
                                                                                                                                             §§push(§§pop() / 2.75);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr470:
                                                                                                                                                   §§push(_loc3_ = §§pop());
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr473:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr476);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr478);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr657);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr470);
                                                                                                                                          }
                                                                                                                                          §§goto(addr476);
                                                                                                                                       }
                                                                                                                                       §§goto(addr478);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              §§goto(addr470);
                                                                                                                           }
                                                                                                                           §§goto(addr492);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr506:
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr420);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr290:
                                                                                                                  §§push(2.75);
                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc4_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr306:
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           §§push(7.5625);
                                                                                                                           if(!(_loc5_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(2.625);
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    §§goto(addr462);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr470);
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(7.5625);
                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr317);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr612);
                                                                                                                           }
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        addr619:
                                                                                                                        addr628:
                                                                                                                        return §§pop();
                                                                                                                        §§push(1 - Math.cos(_loc2_ * (Math.PI / 2)));
                                                                                                                        addr642:
                                                                                                                        §§goto(addr628);
                                                                                                                        §§goto(addr470);
                                                                                                                     }
                                                                                                                     §§goto(addr492);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr333);
                                                                                                            }
                                                                                                            addr171:
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         §§goto(addr616);
                                                                                                         §§goto(addr412);
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr184);
                                                                                             }
                                                                                             addr420:
                                                                                             return §§pop();
                                                                                          }
                                                                                          continue loop0;
                                                                                       case 7:
                                                                                          §§goto(addr604);
                                                                                       case 8:
                                                                                          §§goto(addr515);
                                                                                       case 4:
                                                                                          §§goto(addr643);
                                                                                       case 3:
                                                                                          §§goto(addr664);
                                                                                       case 5:
                                                                                          _loc2_;
                                                                                          _loc2_;
                                                                                          return Math.sin(_loc2_ * (Math.PI / 2));
                                                                                       case 6:
                                                                                          §§goto(addr619);
                                                                                       default:
                                                                                          §§goto(addr899);
                                                                                    }
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       §§goto(addr478);
                                                                                    }
                                                                                    §§goto(addr675);
                                                                                 }
                                                                                 return §§pop();
                                                                                 §§push(9);
                                                                              }
                                                                              §§goto(addr897);
                                                                           }
                                                                           §§goto(addr875);
                                                                        }
                                                                        §§goto(addr897);
                                                                     }
                                                                     §§goto(addr878);
                                                                  }
                                                                  §§goto(addr841);
                                                               }
                                                            }
                                                            §§goto(addr825);
                                                         }
                                                      }
                                                      §§goto(addr897);
                                                   }
                                                   §§goto(addr844);
                                                }
                                                §§goto(addr887);
                                             }
                                          }
                                          §§goto(addr844);
                                       }
                                       §§goto(addr841);
                                    }
                                 }
                                 §§goto(addr844);
                              }
                              §§goto(addr822);
                           }
                           §§goto(addr897);
                        }
                        §§goto(addr782);
                     }
                     §§goto(addr779);
                  }
                  §§goto(addr804);
               }
            }
            §§goto(addr55);
         }
         addr31:
         return 1;
      }
   }
}
