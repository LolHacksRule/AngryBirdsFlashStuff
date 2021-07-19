package §=u§
{
   public class §%!K§ extends § ">§ implements § "1§
   {
       
      
      private var §1!?§:Number;
      
      private var §'O§:Boolean;
      
      private var §&" §:Function;
      
      private var §?!<§:Object;
      
      private var §1!r§:Object;
      
      private var §%j§:Object;
      
      public function §%!K§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
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
               if(_loc6_ || param2)
               {
                  if(§§pop() <= 0)
                  {
                     if(!(_loc7_ && param2))
                     {
                        §§push(0);
                        if(_loc6_ || param1)
                        {
                           addr111:
                           param4 = §§pop();
                        }
                        §§goto(addr111);
                     }
                     while(true)
                     {
                     }
                     addr112:
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
                     §§pop().§1!?§ = §§pop();
                     loop3:
                     while(true)
                     {
                        this.§&" § = param5;
                        while(!_loc7_)
                        {
                           continue loop0;
                           loop6:
                           while(!(_loc7_ && this))
                           {
                              if(!_loc6_)
                              {
                                 continue loop3;
                              }
                              while(true)
                              {
                                 this.§'O§ = false;
                                 if(_loc7_ && param3)
                                 {
                                    continue loop6;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    § "?§ = 0;
                                    continue loop6;
                                 }
                              }
                              param2 = this.§5"'§(param2,param1);
                              if(!(_loc7_ && param3))
                              {
                                 if(param3 != null)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       param3 = this.§5"'§(param3,param2);
                                       if(_loc6_ || param3)
                                       {
                                          this.§,"E§(param2,param3);
                                          if(_loc6_)
                                          {
                                             addr173:
                                             this.§?!<§ = param1;
                                             addr168:
                                          }
                                          return;
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                                 else
                                 {
                                    this.§,"E§(param2,param1);
                                 }
                              }
                              §§goto(addr173);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               §§goto(addr111);
            }
         }
         §§goto(addr45);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'O§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.stop();
            loop0:
            while(true)
            {
               this.§?!<§ = null;
               while(true)
               {
                  this.§%j§ = null;
                  addr51:
                  while(_loc2_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§1!r§ = null;
            while(_loc2_)
            {
               super.dispose();
               if(_loc2_)
               {
                  return;
               }
            }
            §§goto(addr51);
         }
      }
      
      public function §[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § "?§ = -§1"'§;
            do
            {
               this.§'O§ = false;
            }
            while(!_loc2_);
            
         }
      }
      
      private function §5"'§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(_loc8_ || param2)
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
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                    if(_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                          addr97:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   _loc3_[_loc4_] = param1[_loc4_];
                                                }
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   §§push(param2[_loc4_] is Number);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr107:
                                                   while(_loc8_ || _loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr107);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr97);
                     }
                  }
               }
            }
            §§goto(addr122);
         }
         return _loc3_;
      }
      
      private function §,"E§(param1:Object, param2:Object) : void
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
               if(_loc8_ && param1)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(!(_loc8_ && _loc3_))
         {
            this.§%j§ = _loc3_;
         }
         do
         {
            this.§1!r§ = _loc4_;
         }
         while(!_loc9_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§'O§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§'O§ = true;
                  addr82:
                  while(true)
                  {
                     §6!s§ = null;
                     while(_loc2_)
                     {
                        § "?§ = this.§1!?§;
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr25);
                        }
                     }
                  }
                  addr82:
               }
               §§goto(addr82);
            }
            addr25:
            return;
         }
         §§goto(addr82);
      }
      
      public function §+e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§'O§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§'O§ = true;
               }
               loop0:
               while(true)
               {
                  § "?§ = this.§1!?§;
                  addr47:
                  while(true)
                  {
                     this.§'a§();
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         §§goto(addr47);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§7z§(param1))
            {
               loop0:
               for(; § "?§ >= this.§1!?§; while(true)
               {
                  continue loop0;
               })
               {
                  if(_loc3_ || this)
                  {
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(!§["-§)
                     {
                        § "?§ = 0;
                        loop1:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 addr100:
                                 while(true)
                                 {
                                    § "?§ = this.§1!?§;
                                    addr114:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr121);
                                       }
                                       this.§'O§ = true;
                                    }
                                 }
                              }
                              §§goto(addr114);
                           }
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        return;
                        addr47:
                        addr36:
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr114);
               }
               while(true)
               {
                  this.§'a§();
                  do
                  {
                     this.§@"<§();
                  }
                  while(!_loc3_);
                  
                  if(!(_loc3_ || _loc2_))
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr36);
               }
            }
            addr121:
            return;
         }
         §§goto(addr122);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.update(0);
         }
      }
      
      private function §'a§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc1_))
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
               §§push(this.§?!=§());
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  var _loc2_:int = 0;
                  if(!(_loc4_ && _loc2_))
                  {
                     var _loc3_:* = this.§%j§;
                     if(_loc5_ || _loc2_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           this.§?!<§[attribute] = this.§1!r§[attribute] + this.§%j§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(_loc5_)
               {
                  §'O§ = true;
                  if(!_loc4_)
                  {
                     if(§1"G§)
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
      
      private function §@"<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.isCompleted);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc2_))
               {
                  addr34:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr41:
                           §§push(§6!s§ == null);
                           if(_loc3_ || _loc1_)
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
                           §6!s§();
                           if(!_loc4_)
                           {
                              §6!s§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §6!s§ = null;
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr106);
                           }
                           if(!§1"G§)
                           {
                              addr106:
                              throw e;
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr34);
         }
         §§goto(addr41);
      }
      
      private function §?!=§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§1!?§);
            if(_loc2_)
            {
               if(§§pop() <= 0)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return 1;
                  }
                  addr43:
                  §§push(Number(Math.max(0,§ "?§)));
               }
               §§goto(addr43);
            }
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               _loc1_ = Number(Math.min(_loc1_,this.§1!?§));
            }
            return this.§&" §(_loc1_,0,1,this.§1!?§);
         }
         §§goto(addr43);
      }
   }
}
