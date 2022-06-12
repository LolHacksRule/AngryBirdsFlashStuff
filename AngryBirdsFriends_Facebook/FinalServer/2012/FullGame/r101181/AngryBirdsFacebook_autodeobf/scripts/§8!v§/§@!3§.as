package §8!v§
{
   public class §@!3§ extends §'!6§ implements §+!W§
   {
       
      
      private var §]!a§:Number;
      
      private var §`!h§:Boolean;
      
      private var §^!C§:Boolean;
      
      private var §1!i§:Function;
      
      private var § !8§:Object;
      
      private var §63§:Object;
      
      private var §2!^§:Object;
      
      public function §@!3§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc7_)
               {
                  if(§§pop() <= 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr108:
                        }
                        while(true)
                        {
                           param4 = §§pop();
                           addr110:
                           loop2:
                           while(true)
                           {
                              addr51:
                              if(_loc6_ && param2)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              this.§`!h§ = false;
                              if(_loc7_ || param1)
                              {
                                 addr31:
                                 if(_loc7_ || param3)
                                 {
                                    if(false)
                                    {
                                       addr65:
                                       loop9:
                                       while(true)
                                       {
                                          this.§^!C§ = true;
                                          addr44:
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§goto(addr51);
                                             }
                                             else
                                             {
                                                addr89:
                                                while(true)
                                                {
                                                   §?!x§ = 0;
                                                   break loop9;
                                                }
                                                addr89:
                                             }
                                          }
                                          continue loop2;
                                          §§goto(addr31);
                                       }
                                       while(_loc7_ || this)
                                       {
                                          continue loop1;
                                          §§goto(addr31);
                                       }
                                       while(true)
                                       {
                                          this.§1!i§ = param5;
                                          §§goto(addr89);
                                          §§goto(addr65);
                                       }
                                       addr65:
                                       addr40:
                                       addr98:
                                    }
                                    param2 = this.§5!i§(param2,param1);
                                    if(_loc7_ || param3)
                                    {
                                       if(param3 != null)
                                       {
                                          if(!_loc6_)
                                          {
                                             param3 = this.§5!i§(param3,param2);
                                             addr132:
                                             if(!(_loc6_ && param1))
                                             {
                                                this.§^"C§(param2,param3);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr171:
                                                   this.§ !8§ = param1;
                                                   addr166:
                                                }
                                                return;
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                       else
                                       {
                                          this.§^"C§(param2,param1);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr44);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§]!a§ = §§pop();
                     §§goto(addr98);
                     §§goto(addr110);
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr89);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§`!h§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§^!C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop();
         }
         while(true)
         {
            this.§ !8§ = null;
            while(!(_loc1_ && _loc1_))
            {
               this.§2!^§ = null;
               while(_loc2_)
               {
                  this.§63§ = null;
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function § set§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?!x§ = -§0!t§;
            do
            {
               this.§`!h§ = false;
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      private function §5!i§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(param2[_loc4_] == null);
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr87);
         }
         return _loc3_;
      }
      
      private function §^"C§(param1:Object, param2:Object) : void
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
               if(!_loc9_)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(!_loc8_)
         {
            this.§2!^§ = _loc3_;
         }
         do
         {
            this.§63§ = _loc4_;
         }
         while(_loc8_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§`!h§)
            {
               loop0:
               while(true)
               {
                  this.§`!h§ = true;
                  while(true)
                  {
                     §>!8§ = null;
                     loop2:
                     while(!(_loc1_ && _loc1_))
                     {
                        while(true)
                        {
                           §?!x§ = this.§]!a§;
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
            §§goto(addr63);
         }
         §§goto(addr75);
      }
      
      public function §?"3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§`!h§)
            {
               if(_loc2_)
               {
                  this.§`!h§ = true;
               }
               do
               {
                  §?!x§ = this.§]!a§;
                  do
                  {
                     this.§8!2§();
                  }
                  while(_loc1_);
                  
               }
               while(!(_loc2_ || this));
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^!C§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^!C§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§^!C§);
            if(_loc2_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop12:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(_loc2_ || this)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr134:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§goto(addr134);
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §?!x§ += param1;
                                    loop3:
                                    while(true)
                                    {
                                       if(§?!x§ >= this.§]!a§)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             if(!§%"?§)
                                             {
                                                §?!x§ = 0;
                                                loop5:
                                                while(_loc2_)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      this.§8!2§();
                                                      while(_loc2_ || _loc2_)
                                                      {
                                                         this.§^!k§();
                                                         if(_loc2_ || param1)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr91:
                                                                  while(true)
                                                                  {
                                                                     §?!x§ = this.§]!a§;
                                                                     addr95:
                                                                     while(!_loc3_)
                                                                     {
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§`!h§ = true;
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               while(!_loc2_)
                                                               {
                                                                  §§goto(addr95);
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   return;
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr91);
                                          }
                                       }
                                       §§goto(addr47);
                                    }
                                 }
                              }
                              addr137:
                              return;
                           }
                        }
                     }
                     addr153:
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr153);
         }
         §§goto(addr104);
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
      
      private function §8!2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_ || _loc2_)
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§7!<§());
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  var _loc2_:* = 0;
                  if(_loc4_ || this)
                  {
                     var _loc3_:* = this.§2!^§;
                     if(_loc4_ || _loc1_)
                     {
                        for(attribute in _loc3_)
                        {
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        addr154:
                        return;
                        addr109:
                        addr112:
                        addr113:
                     }
                     while(true)
                     {
                        this.§ !8§[attribute] = this.§63§[attribute] + this.§2!^§[attribute] * timeValue;
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
               if(_loc4_ || _loc2_)
               {
                  §`!h§ = true;
                  if(_loc5_)
                  {
                  }
                  §§goto(addr149);
               }
               if(!§3"!§)
               {
                  addr149:
                  throw e;
               }
            }
            §§goto(addr154);
         }
         §§goto(addr33);
      }
      
      private function §^!k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.isCompleted);
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(§>!8§ == null);
                           if(_loc4_)
                           {
                              addr62:
                              §§push(!§§pop());
                           }
                        }
                        try
                        {
                           addr64:
                           §>!8§();
                           if(_loc4_ || _loc3_)
                           {
                              §>!8§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           if(!_loc3_)
                           {
                              §>!8§ = null;
                              if(_loc4_)
                              {
                                 if(§3"!§)
                                 {
                                 }
                              }
                           }
                           throw e;
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr62);
                  }
               }
               if(§§pop())
               {
                  §§goto(addr64);
               }
               addr112:
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr64);
      }
      
      private function §7!<§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]!a§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() <= 0)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return 1;
                  }
                  addr64:
                  §§push(Number(Math.max(0,§?!x§)));
               }
               §§goto(addr64);
            }
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§]!a§));
            }
            return this.§1!i§(_loc1_,0,1,this.§]!a§);
         }
         §§goto(addr64);
      }
   }
}
