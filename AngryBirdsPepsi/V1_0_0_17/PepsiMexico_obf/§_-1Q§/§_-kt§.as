package §_-1Q§
{
   public class §_-kt§ implements §_-G7§
   {
       
      
      private var §_-Cc§:Object;
      
      private var override:String;
      
      private var §_-sP§:Vector.<String>;
      
      private var §_-lb§:Vector.<Number>;
      
      private var §_-Tx§:Vector.<Number>;
      
      private var §_-27§:Function;
      
      private var §_-ID§:Function;
      
      private var §_-O§:Function;
      
      private var §_-eq§:Array;
      
      private var §_-oq§:Array;
      
      private var §_-7s§:Array;
      
      private var §_-tw§:Number;
      
      private var §_-yH§:Number;
      
      private var §_-BH§:Number;
      
      private var §_-b5§:Boolean;
      
      public function §_-kt§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(_loc5_)
         {
            this.§_-Cc§ = param1;
            if(!(_loc4_ && param2))
            {
               this.§_-yH§ = 0;
               if(!_loc4_)
               {
                  this.§_-tw§ = Math.max(0.0001,param2);
                  this.§_-BH§ = 0;
                  this.override = param3;
                  this.§_-b5§ = false;
                  addr33:
                  if(_loc5_)
                  {
                     this.§_-sP§ = new Vector.<String>(0);
                     addr65:
                     this.§_-lb§ = new Vector.<Number>(0);
                     if(_loc5_)
                     {
                        this.§_-Tx§ = new Vector.<Number>(0);
                     }
                  }
                  §§goto(addr65);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr33);
      }
      
      public function §_-We§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§_-Cc§ == null)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
               this.§_-lb§.push(Number.NaN);
               §§goto(addr47);
            }
            else
            {
               this.§_-sP§.push(param1);
               if(_loc3_ || param2)
               {
                  §§goto(addr47);
               }
            }
            this.§_-Tx§.push(param2);
         }
         addr47:
         if(_loc4_)
         {
         }
      }
      
      public function §_-Rp§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-We§("scaleX",param1);
            if(!(_loc2_ && _loc3_))
            {
               addr46:
               this.§_-We§("scaleY",param1);
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-We§("x",param1);
            if(_loc3_)
            {
               addr28:
               this.§_-We§("y",param2);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §_-7N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-We§("alpha",param1);
         }
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(!(_loc12_ && _loc2_))
         {
            §§push(param1);
            if(!_loc12_)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_ || _loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               §§push(this.§_-yH§);
               if(!(_loc12_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            §§push(this);
            §§push(this.§_-yH§);
            if(!(_loc12_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-yH§ = §§pop();
            if(!(_loc12_ && _loc2_))
            {
               §§push(this.§_-yH§);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(0);
                  if(_loc11_ || _loc2_)
                  {
                     §§push(§§pop() < §§pop());
                     §§push(§§pop() < §§pop());
                     if(!_loc12_)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           addr195:
                           addr98:
                           §§push(_loc2_);
                           if(_loc11_ || param1)
                           {
                              §§push(§§pop() >= this.§_-tw§);
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:int = this.§_-lb§.length;
                           var _loc5_:int = 0;
                           while(true)
                           {
                              if(_loc5_ >= _loc4_)
                              {
                                 if(_loc11_ || _loc2_)
                                 {
                                    §§push(this.onUpdate);
                                    if(_loc11_)
                                    {
                                       §§push(null);
                                       if(!_loc12_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(_loc11_ || this)
                                             {
                                                addr365:
                                                §§push(this.onUpdate);
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   §§push(null);
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      §§push(this.§_-oq§);
                                                      if(_loc11_ || param1)
                                                      {
                                                         §§pop().apply(§§pop(),§§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr394:
                                                            §§push(this.onComplete);
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               addr403:
                                                               §§push(null);
                                                               if(!_loc12_)
                                                               {
                                                                  addr406:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc12_ && _loc3_))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr472);
                                                                              }
                                                                              §§goto(addr458);
                                                                           }
                                                                           addr449:
                                                                           §§push(§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc12_ && _loc2_))
                                                                           {
                                                                              §§goto(addr458);
                                                                           }
                                                                        }
                                                                        addr458:
                                                                        §§pop();
                                                                        if(this.§_-yH§ >= this.§_-tw§)
                                                                        {
                                                                        }
                                                                        §§goto(addr472);
                                                                     }
                                                                  }
                                                                  §§goto(addr449);
                                                               }
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      §§goto(addr472);
                                                   }
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr403);
                                             }
                                             §§goto(addr472);
                                          }
                                          §§goto(addr394);
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr403);
                                 }
                                 §§goto(addr365);
                              }
                              else
                              {
                                 if(isNaN(this.§_-lb§[_loc5_]))
                                 {
                                    this.§_-lb§[_loc5_] = this.§_-Cc§[this.§_-sP§[_loc5_]] as Number;
                                    if(!_loc12_)
                                    {
                                       addr227:
                                       §§push(Number(this.§_-lb§[_loc5_]));
                                       if(!(_loc12_ && param1))
                                       {
                                          _loc6_ = §§pop();
                                          §§push(Number(this.§_-Tx§[_loc5_]));
                                          if(!(_loc12_ && this))
                                          {
                                             §§push(§§pop());
                                             if(_loc11_)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc6_);
                                                if(_loc12_ && _loc2_)
                                                {
                                                   §§goto(addr458);
                                                }
                                             }
                                             §§push(Number(§§pop() - §§pop()));
                                          }
                                       }
                                       _loc8_ = §§pop();
                                       _loc9_ = §_-qy§.§_-g1§(this.override);
                                       if(!_loc12_)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc12_)
                                                {
                                                   addr304:
                                                   _loc10_ = §§pop();
                                                   if(!(_loc12_ && _loc3_))
                                                   {
                                                      if(this.§_-b5§)
                                                      {
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            addr326:
                                                            _loc10_ = Number(Math.round(_loc10_));
                                                            addr322:
                                                            if(_loc12_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      this.§_-Cc§[this.§_-sP§[_loc5_]] = _loc10_;
                                                      if(!_loc12_)
                                                      {
                                                         addr339:
                                                         _loc5_++;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr322);
                                                }
                                             }
                                             §§goto(addr326);
                                          }
                                          §§goto(addr304);
                                       }
                                       §§goto(addr339);
                                    }
                                    addr472:
                                    if(_loc11_ || this)
                                    {
                                       addr441:
                                       §§push(_loc2_);
                                       break;
                                    }
                                    this.onComplete.apply(null,this.§_-7s§);
                                    return;
                                 }
                                 §§goto(addr227);
                              }
                           }
                           §§push(this.§_-tw§);
                           if(!_loc12_)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc11_)
                              {
                                 §§goto(addr449);
                              }
                           }
                           §§goto(addr458);
                        }
                        if(§§pop())
                        {
                           if(_loc11_)
                           {
                              return;
                           }
                           addr143:
                           §§push(_loc2_);
                           if(!_loc12_)
                           {
                              §§push(0);
                              if(_loc11_ || this)
                              {
                                 addr154:
                                 §§push(§§pop() <= §§pop());
                                 if(_loc11_ || _loc3_)
                                 {
                                    addr162:
                                    §§push(§§pop() && Number(§§pop()));
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr169);
                        }
                        else
                        {
                           §§push(this.§_-m8§);
                           if(!_loc12_)
                           {
                              §§push(null);
                              if(!(_loc12_ && _loc2_))
                              {
                                 §§push(§§pop() != §§pop());
                                 if(_loc11_)
                                 {
                                    §§push(§§pop());
                                    if(_loc11_)
                                    {
                                       addr139:
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!_loc12_)
                                          {
                                             §§goto(addr143);
                                          }
                                          §§goto(addr171);
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr175);
                           }
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr154);
               }
               §§goto(addr195);
            }
            §§goto(addr98);
         }
         addr43:
      }
      
      public function get §_-ZY§() : Boolean
      {
         return this.§_-yH§ >= this.§_-tw§;
      }
      
      public function get target() : Object
      {
         return this.§_-Cc§;
      }
      
      public function get §_-vE§() : String
      {
         return this.override;
      }
      
      public function get §_-UL§() : Number
      {
         return this.§_-tw§;
      }
      
      public function get §_-mm§() : Number
      {
         return this.§_-yH§;
      }
      
      public function get delay() : Number
      {
         return this.§_-BH§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.§_-yH§);
            if(_loc2_)
            {
               §§push(this.§_-BH§);
               if(!_loc3_)
               {
                  §§goto(addr41);
               }
               §§push(§§pop() - §§pop());
            }
            addr41:
            §§push(§§pop() + §§pop());
            if(!_loc3_)
            {
               §§push(param1);
            }
            §§pop().§_-yH§ = §§pop();
            if(_loc2_ || _loc3_)
            {
               addr56:
               this.§_-BH§ = param1;
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function get §_-P0§() : Boolean
      {
         return this.§_-b5§;
      }
      
      public function set §_-P0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-b5§ = param1;
         }
      }
      
      public function get §_-m8§() : Function
      {
         return this.§_-27§;
      }
      
      public function set §_-m8§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-27§ = param1;
         }
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-ID§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-ID§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§_-O§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-O§ = param1;
         }
      }
      
      public function get §_-R§() : Array
      {
         return this.§_-eq§;
      }
      
      public function set §_-R§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-eq§ = param1;
         }
      }
      
      public function get §_-xX§() : Array
      {
         return this.§_-oq§;
      }
      
      public function set §_-xX§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-oq§ = param1;
         }
      }
      
      public function get §_-O-§() : Array
      {
         return this.§_-7s§;
      }
      
      public function set §_-O-§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-7s§ = param1;
         }
      }
   }
}
