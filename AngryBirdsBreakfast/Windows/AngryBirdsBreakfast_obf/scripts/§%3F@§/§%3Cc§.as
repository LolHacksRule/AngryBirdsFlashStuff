package §?@§
{
   public class §<c§ extends §-w§ implements §9!k§
   {
       
      
      private var §3Z§:Number;
      
      private var § S§:Boolean;
      
      private var §1S§:Function;
      
      private var §9U§:Object;
      
      private var §;!K§:Object;
      
      private var §9!S§:Object;
      
      public function §<c§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
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
                     while(true)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr105:
                        }
                        while(true)
                        {
                           param4 = §§pop();
                           addr107:
                           while(true)
                           {
                           }
                        }
                     }
                     addr102:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§3Z§ = §§pop();
                     loop3:
                     while(true)
                     {
                        this.§1S§ = param5;
                        addr64:
                        while(true)
                        {
                           if(_loc7_)
                           {
                              break loop3;
                              addr46:
                           }
                           while(true)
                           {
                              §^B§ = 0;
                              addr50:
                              while(_loc6_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                        addr37:
                        if(!(_loc6_ || param1))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr46);
                        }
                        else
                        {
                           param2 = this.§]!x§(param2,param1);
                           if(_loc6_)
                           {
                              if(param3 != null)
                              {
                                 if(!_loc7_)
                                 {
                                    param3 = this.§]!x§(param3,param2);
                                    if(!(_loc7_ && this))
                                    {
                                       this.§+J§(param2,param3);
                                       if(_loc6_)
                                       {
                                          addr158:
                                          this.§9U§ = param1;
                                          addr153:
                                       }
                                       return;
                                    }
                                    §§goto(addr153);
                                 }
                              }
                              else
                              {
                                 this.§+J§(param2,param1);
                              }
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr105);
            }
         }
         §§goto(addr107);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§ S§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.stop();
            while(true)
            {
               this.§9U§ = null;
               loop1:
               while(true)
               {
                  this.§9!S§ = null;
                  while(true)
                  {
                     this.§;!K§ = null;
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        continue loop1;
                        while(true)
                        {
                           super.dispose();
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §8_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §^B§ = -§55§;
            do
            {
               this.§ S§ = false;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function §]!x§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(!_loc7_)
            {
               §§push(param2[_loc4_] == null);
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc7_)
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
                  §§goto(addr141);
               }
            }
            §§goto(addr142);
         }
         return _loc3_;
      }
      
      private function §+J§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc9_ || param1)
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
            this.§9!S§ = _loc3_;
         }
         do
         {
            this.§;!K§ = _loc4_;
         }
         while(_loc8_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§ S§)
            {
               loop0:
               while(true)
               {
                  this.§ S§ = true;
                  addr72:
                  addr48:
                  while(true)
                  {
                     §try§ = null;
                     continue loop0;
                  }
               }
               addr69:
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §+-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§ S§)
            {
               do
               {
                  this.§ S§ = true;
                  do
                  {
                     §^B§ = this.§3Z§;
                     do
                     {
                        this.§["&§();
                     }
                     while(!(_loc2_ || _loc1_));
                     
                  }
                  while(!(_loc2_ || _loc1_));
                  
               }
               while(_loc1_);
               
               addr58:
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§`G§(param1))
            {
               loop0:
               while(true)
               {
                  if(§^B§ >= this.§3Z§)
                  {
                     loop1:
                     while(true)
                     {
                        if(!§7f§)
                        {
                           §^B§ = 0;
                           loop2:
                           while(true)
                           {
                              addr41:
                              loop6:
                              while(true)
                              {
                                 this.§["&§();
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§'!r§();
                                          if(_loc2_)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       return;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr70:
                                 addr101:
                                 while(!_loc2_)
                                 {
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    this.§ S§ = true;
                                    §§goto(addr70);
                                 }
                              }
                           }
                        }
                        while(_loc3_ || this)
                        {
                           §^B§ = this.§3Z§;
                           §§goto(addr101);
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr41);
               }
            }
            addr106:
            return;
         }
         §§goto(addr58);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §["&§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(!_loc5_)
            {
               addr28:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§<!1§());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  var _loc2_:int = 0;
                  if(!(_loc5_ && _loc3_))
                  {
                     var _loc3_:* = this.§9!S§;
                     if(!_loc5_)
                     {
                        for(attribute in _loc3_)
                        {
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                        }
                        addr139:
                        return;
                        addr99:
                        addr102:
                        addr103:
                     }
                     while(true)
                     {
                        this.§9U§[attribute] = this.§;!K§[attribute] + this.§9!S§[attribute] * timeValue;
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr103);
            }
            catch(e:Error)
            {
               if(_loc4_)
               {
                  § S§ = true;
                  if(_loc4_)
                  {
                     if(§5l§)
                     {
                     }
                  }
               }
               throw e;
            }
            §§goto(addr139);
         }
         §§goto(addr28);
      }
      
      private function §'!r§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.isCompleted);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr38:
                        §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           addr46:
                           §§push(§try§ == null);
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr62);
                        }
                        §§goto(addr63);
                     }
                  }
               }
               addr62:
               if(!§§pop())
               {
                  try
                  {
                     addr63:
                     §try§();
                     if(_loc3_ || this)
                     {
                        §try§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §try§ = null;
                        if(!(_loc4_ && this))
                        {
                           if(§5l§)
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
         §§goto(addr46);
      }
      
      private function §<!1§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§3Z§);
            if(_loc3_)
            {
               if(§§pop() <= 0)
               {
                  if(_loc3_)
                  {
                     §§goto(addr37);
                  }
               }
               §§push(Number(Math.max(0,§^B§)));
            }
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§3Z§));
            }
            return this.§1S§(_loc1_,0,1,this.§3Z§);
         }
         addr37:
         return 1;
      }
   }
}
