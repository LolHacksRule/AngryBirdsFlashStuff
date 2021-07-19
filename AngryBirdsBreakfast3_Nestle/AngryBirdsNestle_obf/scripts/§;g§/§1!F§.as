package §;g§
{
   public class §1!F§ extends §]w§ implements §<!9§
   {
       
      
      private var §9k§:Number;
      
      private var §2!g§:Boolean;
      
      private var §5k§:Function;
      
      private var §!N§:Object;
      
      private var §7U§:Object;
      
      private var §'S§:Object;
      
      public function §1!F§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
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
               if(_loc6_)
               {
                  if(§§pop() <= 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           addr101:
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param4 = §§pop();
                              addr102:
                              while(true)
                              {
                              }
                           }
                           addr101:
                        }
                        §§goto(addr101);
                        addr83:
                        loop3:
                        while(true)
                        {
                           if(!(_loc7_ && param2))
                           {
                              this.§5k§ = param5;
                              continue loop0;
                           }
                           continue loop1;
                           loop6:
                           while(true)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 this.§2!g§ = false;
                                 if(_loc7_ && param1)
                                 {
                                    continue;
                                 }
                                 addr30:
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §>!?§ = 0;
                                       continue loop6;
                                       §§goto(addr30);
                                    }
                                    continue loop0;
                                    addr34:
                                 }
                              }
                              continue loop3;
                              param2 = this.§?!#§(param2,param1);
                              if(_loc6_)
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr119);
                                    }
                                 }
                                 else
                                 {
                                    this.§<W§(param2,param1);
                                 }
                                 §§goto(addr148);
                              }
                              addr119:
                              param3 = this.§?!#§(param3,param2);
                              if(_loc6_)
                              {
                                 this.§<W§(param2,param3);
                                 if(_loc6_)
                                 {
                                    addr148:
                                    this.§!N§ = param1;
                                 }
                              }
                              return;
                           }
                           §§goto(addr102);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§9k§ = §§pop();
                     §§goto(addr83);
                     §§goto(addr102);
                  }
               }
               §§goto(addr101);
            }
         }
         §§goto(addr102);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2!g§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.stop();
            while(true)
            {
               this.§!N§ = null;
               loop2:
               for(; _loc2_ || _loc2_; if(!(_loc1_ && _loc2_))
               {
                  return;
               })
               {
                  this.§7U§ = null;
                  while(!(_loc1_ && this))
                  {
                     super.dispose();
                     if(!_loc1_)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     this.§'S§ = null;
                     continue loop2;
                     §§goto(addr56);
                  }
                  addr56:
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §=E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>!?§ = -§<!n§;
         }
         do
         {
            this.§2!g§ = false;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private function §?!#§(param1:Object, param2:Object) : Object
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
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc7_ && param1)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr112:
                                    do
                                    {
                                       §§push(param2[_loc4_] is Number);
                                    }
                                    while(_loc8_ || param1);
                                    
                                 }
                                 addr111:
                              }
                              while(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       _loc3_[_loc4_] = param1[_loc4_];
                                       addr73:
                                       if(!_loc7_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param1[_loc4_] is Number);
                                             if(!(_loc7_ && param2))
                                             {
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                addr131:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr132:
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr111);
                                             }
                                          }
                                          if(_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr73);
                              }
                              continue loop0;
                           }
                           continue;
                           addr101:
                        }
                        §§goto(addr131);
                     }
                  }
               }
            }
            §§goto(addr132);
         }
         return _loc3_;
      }
      
      private function §<W§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc9_ || param2)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!(_loc9_ || this))
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc9_ || this)
         {
            this.§'S§ = _loc3_;
            do
            {
               this.§7U§ = _loc4_;
            }
            while(_loc8_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§2!g§)
            {
               loop0:
               while(true)
               {
                  this.§2!g§ = true;
                  addr76:
                  addr47:
                  while(true)
                  {
                     §;!h§ = null;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §?"+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§2!g§)
            {
               loop0:
               while(true)
               {
                  this.§2!g§ = true;
                  while(true)
                  {
                     §>!?§ = this.§9k§;
                     loop2:
                     while(!(_loc1_ && _loc1_))
                     {
                        while(true)
                        {
                           this.§?!d§();
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
            §§goto(addr46);
         }
         §§goto(addr69);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§^!m§(param1))
            {
               loop0:
               while(true)
               {
                  if(§>!?§ >= this.§9k§)
                  {
                     if(_loc3_)
                     {
                        if(!§7!>§)
                        {
                           §>!?§ = 0;
                           loop1:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(_loc2_ && this)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§?!d§();
                                    while(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§=!c§();
                                          if(_loc3_ || _loc2_)
                                          {
                                             continue loop1;
                                          }
                                          continue;
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    addr106:
                                    while(true)
                                    {
                                       this.§2!g§ = true;
                                    }
                                 }
                                 return;
                                 addr42:
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr42);
                                 }
                                 else
                                 {
                                    addr92:
                                    while(true)
                                    {
                                       §>!?§ = this.§9k§;
                                    }
                                    addr92:
                                 }
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr42);
               }
            }
            addr111:
            return;
         }
         §§goto(addr92);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.update(0);
         }
      }
      
      private function §?!d§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(!(_loc5_ && _loc2_))
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§56§());
               if(_loc4_ || this)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  var _loc2_:* = 0;
                  if(_loc4_)
                  {
                     var _loc3_:* = this.§'S§;
                     if(_loc4_ || _loc3_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(_loc4_)
                        {
                           this.§!N§[attribute] = this.§7U§[attribute] + this.§'S§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               _loc2_ = e;
               if(!(_loc5_ && _loc2_))
               {
                  §2!g§ = true;
                  if(_loc5_)
                  {
                  }
                  §§goto(addr144);
               }
               if(!§#M§)
               {
                  addr144:
                  throw e;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §=!c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.isCompleted);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr39:
                        §§pop();
                        if(_loc4_)
                        {
                           addr42:
                           §§push(§;!h§ == null);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr48);
                        }
                        §§goto(addr59);
                     }
                  }
                  addr48:
                  if(!§§pop())
                  {
                     try
                     {
                        addr59:
                        §;!h§();
                        if(!(_loc3_ && this))
                        {
                           §;!h§ = null;
                        }
                     }
                     catch(e:Error)
                     {
                        if(!(_loc3_ && this))
                        {
                           §;!h§ = null;
                           if(_loc4_ || _loc1_)
                           {
                              if(§#M§)
                              {
                              }
                           }
                        }
                        throw e;
                     }
                  }
                  return;
               }
            }
            §§goto(addr39);
         }
         §§goto(addr42);
      }
      
      private function §56§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9k§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() <= 0)
               {
                  if(_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               §§push(Number(Math.max(0,§>!?§)));
            }
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§9k§));
            }
            return this.§5k§(_loc1_,0,1,this.§9k§);
         }
         addr42:
         return 1;
      }
   }
}
