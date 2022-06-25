package §#P§
{
   public class §1n§ extends §1!?§ implements §]!N§
   {
       
      
      private var §"8§:Number;
      
      private var §2_§:Boolean;
      
      private var §in §:Boolean;
      
      private var §>0§:Function;
      
      private var §@N§:Object;
      
      private var §&O§:Object;
      
      private var §;j§:Object;
      
      public function §1n§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         super();
         if(!(_loc6_ && param1))
         {
            §§push(param4);
            if(_loc7_)
            {
               if(§§pop() <= 0)
               {
                  §§push(0);
                  if(!(_loc6_ && param3))
                  {
                     addr39:
                     §§push(Number(§§pop()));
                  }
                  param4 = §§pop();
                  if(_loc7_ || param2)
                  {
                     addr48:
                     §§push(this);
                     §§push(param4);
                     if(_loc7_)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§"8§ = §§pop();
                     if(!(_loc6_ && param2))
                     {
                        this.§>0§ = param5;
                        if(_loc7_)
                        {
                           addr77:
                           §^f§ = 0;
                           this.§in § = true;
                           this.§2_§ = false;
                        }
                     }
                     param2 = this.§,!'§(param2,param1);
                     if(_loc7_)
                     {
                        if(param3 != null)
                        {
                           if(!(_loc6_ && param3))
                           {
                              param3 = this.§,!'§(param3,param2);
                              if(_loc7_ || param2)
                              {
                                 this.§@d§(param2,param3);
                                 if(!(_loc6_ && param3))
                                 {
                                    addr143:
                                    this.§@N§ = param1;
                                 }
                              }
                              return;
                           }
                        }
                        else
                        {
                           this.§@d§(param2,param1);
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr77);
               }
               §§goto(addr48);
            }
            §§goto(addr39);
         }
         §§goto(addr77);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2_§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§in §;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop();
            if(!(_loc1_ && _loc2_))
            {
               this.§@N§ = null;
               if(!(_loc1_ && this))
               {
                  this.§;j§ = null;
                  if(_loc2_)
                  {
                     addr53:
                     this.§&O§ = null;
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §4R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §^f§ = -§40§;
            if(!_loc2_)
            {
               addr29:
               this.§2_§ = false;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §,!'§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(_loc7_ && param1)
            {
               continue;
            }
            §§push(param2[_loc4_] == null);
            if(!(_loc7_ && param1))
            {
               §§push(!§§pop());
               if(!(_loc7_ && this))
               {
                  addr72:
                  §§push(§§pop());
                  if(_loc8_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           §§pop();
                           if(!(_loc7_ && param2))
                           {
                              §§push(param1[_loc4_] is Number);
                              if(_loc8_ || this)
                              {
                                 addr113:
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr117:
                                       §§pop();
                                       addr128:
                                       if(!_loc7_)
                                       {
                                          §§push(param2[_loc4_] is Number);
                                       }
                                       _loc3_[_loc4_] = param1[_loc4_];
                                       continue;
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr113);
               }
               §§goto(addr117);
            }
            §§goto(addr72);
         }
         return _loc3_;
      }
      
      private function §@d§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc8_ || _loc3_)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!(_loc9_ && this))
               {
                  _loc4_[_loc5_] = param2[_loc5_];
               }
            }
         }
         if(_loc8_)
         {
            this.§;j§ = _loc3_;
            if(_loc8_)
            {
               this.§&O§ = _loc4_;
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§2_§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§2_§ = true;
                  if(_loc1_)
                  {
                     §7!%§ = null;
                     if(!_loc2_)
                     {
                        addr48:
                        §^f§ = this.§"8§;
                     }
                  }
                  §§goto(addr48);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §;!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§2_§)
            {
               if(_loc1_ || this)
               {
                  this.§2_§ = true;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr51);
               }
               §^f§ = this.§"8§;
               if(!_loc2_)
               {
                  addr49:
                  this.§?n§();
               }
            }
            addr51:
            return;
         }
         §§goto(addr49);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§in § = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§in § = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§in §);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr50:
                        §§pop();
                        §§push(this.isCompleted);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     §^f§ += param1;
                     if(§^f§ >= this.§"8§)
                     {
                        if(§<!D§)
                        {
                           if(_loc3_)
                           {
                              §^f§ = this.§"8§;
                              if(!_loc2_)
                              {
                                 addr89:
                                 this.§2_§ = true;
                                 if(!_loc3_)
                                 {
                                 }
                                 addr98:
                                 this.§?n§();
                                 if(!_loc2_)
                                 {
                                    this.§^v§();
                                 }
                              }
                              §§goto(addr104);
                           }
                        }
                        else
                        {
                           §^f§ = 0;
                        }
                     }
                     §§goto(addr98);
                  }
                  addr104:
                  return;
               }
            }
            §§goto(addr50);
         }
         §§goto(addr89);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.update(0);
         }
      }
      
      private function §?n§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(!(_loc4_ && this))
            {
               addr34:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§4H§());
               if(!(_loc4_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  var _loc2_:int = 0;
                  if(_loc5_)
                  {
                     var _loc3_:* = this.§;j§;
                     if(!(_loc4_ && _loc3_))
                     {
                        for(attribute in _loc3_)
                        {
                           if(!(_loc5_ || _loc1_))
                           {
                              continue;
                           }
                        }
                        addr165:
                        return;
                        addr115:
                        addr118:
                        addr119:
                     }
                     while(true)
                     {
                        this.§@N§[attribute] = this.§&O§[attribute] + this.§;j§[attribute] * timeValue;
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr119);
            }
            catch(e:Error)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §2_§ = true;
                  if(_loc5_ || this)
                  {
                     if(§=!?§)
                     {
                     }
                  }
               }
               throw e;
            }
            §§goto(addr165);
         }
         §§goto(addr34);
      }
      
      private function §^v§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.isCompleted);
            if(!(_loc4_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        addr53:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(§7!%§ == null);
                           if(_loc4_ && _loc1_)
                           {
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr68);
                     }
                     §§push(!§§pop());
                  }
               }
               addr67:
               if(§§pop())
               {
                  try
                  {
                     addr68:
                     §7!%§();
                     if(!(_loc4_ && _loc2_))
                     {
                        §7!%§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     if(_loc3_)
                     {
                        §7!%§ = null;
                        if(_loc3_)
                        {
                           if(§=!?§)
                           {
                           }
                        }
                     }
                     throw e;
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr68);
      }
      
      private function §4H§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§"8§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() <= 0)
               {
                  if(!(_loc3_ && this))
                  {
                     return 1;
                  }
                  addr63:
                  §§push(Number(Math.max(0,§^f§)));
               }
               §§goto(addr63);
            }
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§"8§));
            }
            return this.§>0§(_loc1_,0,1,this.§"8§);
         }
         §§goto(addr63);
      }
   }
}
