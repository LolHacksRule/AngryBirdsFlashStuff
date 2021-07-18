package §'V§
{
   public class §[!c§ extends §8a§ implements §%!"§
   {
       
      
      private var §%6§:Number;
      
      private var §'"7§:Boolean;
      
      private var §`!-§:Boolean;
      
      private var §6!?§:Function;
      
      private var §&d§:Object;
      
      private var §<!9§:Object;
      
      private var §%J§:Object;
      
      public function §[!c§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
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
               if(_loc6_ || param1)
               {
                  if(§§pop() <= 0)
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§%6§ = §§pop();
                     loop3:
                     while(_loc6_)
                     {
                        this.§6!?§ = param5;
                        loop4:
                        while(true)
                        {
                           §9R§ = 0;
                           loop5:
                           while(true)
                           {
                              addr38:
                              while(true)
                              {
                                 this.§`!-§ = true;
                                 while(!_loc7_)
                                 {
                                    this.§'"7§ = false;
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr104:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     param4 = §§pop();
                  }
                  addr103:
               }
               §§goto(addr104);
            }
         }
         §§goto(addr36);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'"7§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§`!-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.stop();
            do
            {
               this.§&d§ = null;
               do
               {
                  this.§%J§ = null;
                  do
                  {
                     this.§<!9§ = null;
                  }
                  while(!_loc2_);
                  
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9R§ = -§&l§;
         }
         do
         {
            this.§'"7§ = false;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §3n§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(_loc8_)
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr127:
                              loop10:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       break;
                                    }
                                    addr104:
                                    loop6:
                                    while(!_loc7_)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param2[_loc4_] is Number);
                                          if(!_loc7_)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   while(§§pop())
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc3_[_loc4_] = param1[_loc4_];
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop0;
                                                   addr50:
                                                }
                                                continue loop2;
                                             }
                                             continue loop4;
                                          }
                                          continue loop6;
                                       }
                                       continue loop10;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc8_ || _loc3_))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              §§goto(addr104);
                           }
                           §§goto(addr50);
                        }
                     }
                  }
               }
            }
            §§goto(addr127);
         }
         return _loc3_;
      }
      
      private function §-!&§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!(_loc9_ && param1))
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc9_ && param1)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc8_ || param1)
         {
            this.§%J§ = _loc3_;
            do
            {
               this.§<!9§ = _loc4_;
            }
            while(!(_loc8_ || param2));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!this.§'"7§)
            {
               if(_loc2_)
               {
                  this.§'"7§ = true;
               }
               do
               {
                  §,h§ = null;
                  do
                  {
                     §9R§ = this.§%6§;
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(_loc1_ && this);
               
               addr58:
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §]!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§'"7§)
            {
               loop0:
               while(true)
               {
                  this.§'"7§ = true;
                  addr76:
                  addr46:
                  while(true)
                  {
                     §9R§ = this.§%6§;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!-§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!-§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§`!-§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr125:
                        }
                        while(true)
                        {
                           §9R§ += param1;
                           loop4:
                           while(§9R§ >= this.§%6§)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(§;!n§)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr83:
                                       §9R§ = this.§%6§;
                                    }
                                 }
                                 else
                                 {
                                    §9R§ = 0;
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    addr52:
                                 }
                                 while(true)
                                 {
                                    this.§'"7§ = true;
                                    addr59:
                                    while(true)
                                    {
                                       break loop4;
                                    }
                                 }
                              }
                              §§goto(addr83);
                           }
                           loop7:
                           while(true)
                           {
                              this.§<w§();
                              while(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§6!P§();
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop7;
                                       }
                                       continue loop7;
                                    }
                                    continue;
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr52);
                           }
                           if(!_loc3_)
                           {
                              return;
                           }
                           addr144:
                           while(true)
                           {
                              §§push(this.isCompleted);
                              if(_loc2_ || _loc2_)
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop0;
                           }
                        }
                     }
                     return;
                     addr120:
                  }
               }
            }
            while(true)
            {
               §§pop();
               §§goto(addr144);
            }
         }
         §§goto(addr59);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.update(0);
         }
      }
      
      private function §<w§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
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
               §§push(this.§]"$§());
               if(!(_loc5_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && this))
               {
                  var _loc2_:int = 0;
                  if(!_loc5_)
                  {
                     var _loc3_:* = this.§%J§;
                     if(_loc4_ || _loc2_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(!_loc5_)
                        {
                           this.§&d§[attribute] = this.§<!9§[attribute] + this.§%J§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §'"7§ = true;
                  if(!_loc5_)
                  {
                     if(§!!p§)
                     {
                     }
                  }
               }
               throw e;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §6!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            §§push(this.isCompleted);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        addr49:
                        §§pop();
                        if(!_loc3_)
                        {
                           addr52:
                           §§push(§,h§ == null);
                           if(_loc4_ || _loc3_)
                           {
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr74);
                     }
                  }
                  addr73:
                  §§goto(addr72);
               }
               addr72:
               if(!§§pop())
               {
                  try
                  {
                     addr74:
                     §,h§();
                     if(_loc4_)
                     {
                        §,h§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     var _loc2_:* = e;
                     if(_loc4_ || _loc1_)
                     {
                        §,h§ = null;
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§!!p§)
                           {
                           }
                        }
                     }
                     throw e;
                  }
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr52);
      }
      
      private function §]"$§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%6§);
            if(_loc3_ || this)
            {
               if(§§pop() <= 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     return 1;
                  }
                  addr49:
                  §§push(Number(Math.max(0,§9R§)));
               }
               §§goto(addr49);
            }
            var _loc1_:* = §§pop();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_ = Number(Math.min(_loc1_,this.§%6§));
            }
            return this.§6!?§(_loc1_,0,1,this.§%6§);
         }
         §§goto(addr49);
      }
   }
}
