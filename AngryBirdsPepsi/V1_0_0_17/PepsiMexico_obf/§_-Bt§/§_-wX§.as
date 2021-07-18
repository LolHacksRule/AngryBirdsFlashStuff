package §_-Bt§
{
   import §_-20§.§_-j5§;
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   import §_-xo§.§_-z7§;
   
   public class §_-wX§ extends §_-E-§ implements §_-z7§
   {
       
      
      private var §_-yF§:§_-Lk§;
      
      private var §_-fe§:Vector.<§_-Lk§>;
      
      private var §_-bd§:§_-Lk§;
      
      private var §_-qK§:§_-Lk§;
      
      private var §_-8x§:Number = 0;
      
      private var §_-sZ§:§_-Lk§;
      
      public function §_-wX§(param1:Array, param2:§_-Ps§, param3:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = uint(0);
         var _loc5_:* = uint(0);
         var _loc6_:§_-Lk§ = null;
         super(param2,param3);
         if(!(_loc7_ && param3))
         {
            §§push(uint(param1.length));
            if(!(_loc7_ && param2))
            {
               _loc4_ = §§pop();
               §_-7A§ = 0;
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§push(0);
                  if(_loc8_ || param2)
                  {
                     if(§§pop() > §§pop())
                     {
                        this.§_-yF§ = param1[0] as §_-Lk§;
                        if(_loc8_ || param2)
                        {
                           §_-7A§ += this.§_-yF§.duration;
                           if(!(_loc7_ && param3))
                           {
                              §§push(_loc4_);
                              if(_loc8_)
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       this.§_-sZ§ = param1[1] as §_-Lk§;
                                       §_-7A§ += this.§_-sZ§.duration;
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          addr112:
                                          §§push(2);
                                          if(_loc8_)
                                          {
                                             addr115:
                                             if(§§pop() > §§pop())
                                             {
                                                this.§_-bd§ = param1[2] as §_-Lk§;
                                                §_-7A§ += this.§_-bd§.duration;
                                                addr138:
                                                §§push(_loc4_);
                                                §§push(3);
                                                if(!(_loc7_ && this))
                                                {
                                                   addr146:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         this.§_-qK§ = param1[3] as §_-Lk§;
                                                         addr161:
                                                         §_-7A§ += this.§_-qK§.duration;
                                                         if(_loc8_)
                                                         {
                                                            addr172:
                                                            if(_loc4_ > 4)
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  addr180:
                                                                  this.§_-fe§ = new Vector.<§_-Lk§>(_loc4_ - 4,true);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr194:
                                                                     _loc5_ = uint(4);
                                                                     addr192:
                                                                  }
                                                               }
                                                               while(_loc5_ < _loc4_)
                                                               {
                                                                  _loc6_ = param1[_loc5_] as §_-Lk§;
                                                                  if(_loc8_)
                                                                  {
                                                                     this.§_-fe§[_loc5_ - 4] = _loc6_;
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        §_-7A§ += _loc6_.duration;
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(uint(§§pop() + 1));
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr172);
                     }
                     addr254:
                     return;
                  }
                  §§goto(addr115);
               }
               §§goto(addr172);
            }
            §§goto(addr112);
         }
         §§goto(addr161);
      }
      
      public function §_-CT§(param1:int) : §_-j5§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            §§push(0);
            if(!_loc2_)
            {
               if(§§pop() >= §§pop())
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(!(_loc2_ && param1))
                     {
                        addr48:
                        if(§§pop() == §§pop())
                        {
                           if(!_loc2_)
                           {
                              return this.§_-yF§;
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§goto(addr59);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr118);
                  }
                  addr59:
                  §§push(1);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop() == §§pop())
                     {
                        return this.§_-sZ§;
                     }
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr81:
                        §§push(2);
                        if(!_loc2_)
                        {
                           §§goto(addr84);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr118);
                  }
                  addr84:
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr92:
                        return this.§_-bd§;
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr105:
                        §§push(3);
                        if(_loc3_)
                        {
                           addr108:
                           if(§§pop() != §§pop())
                           {
                              if(this.§_-fe§ != null)
                              {
                                 addr118:
                                 if(param1 - 4 < this.§_-fe§.length)
                                 {
                                    return this.§_-fe§[param1 - 4];
                                 }
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  return this.§_-qK§;
               }
               §§push(null);
               if(_loc3_ || _loc2_)
               {
                  return §§pop();
               }
               addr138:
               return null;
            }
            §§goto(addr48);
         }
         §§goto(addr105);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:uint = 0;
         var _loc6_:* = 0;
         var _loc7_:§_-Lk§ = null;
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         §§push(this.§_-8x§);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1);
         §§push(_loc4_);
         if(_loc10_ || param1)
         {
            §§push(§§pop() - §§pop());
            if(_loc10_ || _loc3_)
            {
               if(§§pop() >= 0)
               {
                  §§push(this.§_-yF§);
                  if(_loc10_)
                  {
                     if(§§pop() != null)
                     {
                        if(_loc10_)
                        {
                           §§push(_loc4_ <= (_loc2_ = Number(_loc2_ + this.§_-yF§.duration)));
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                              if(_loc10_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc10_ || this)
                                    {
                                       §§push(_loc3_);
                                       §§push(param1);
                                       if(_loc10_ || this)
                                       {
                                          addr103:
                                          if(§§pop() <= §§pop())
                                          {
                                             addr106:
                                             §§push(this.§_-yF§);
                                             §§push(param1);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() - _loc3_);
                                             }
                                             §§pop().update(§§pop());
                                             if(_loc10_ || this)
                                             {
                                                addr119:
                                                §§push(_loc2_);
                                                if(_loc10_)
                                                {
                                                   _loc3_ = Number(§§pop());
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(this.§_-sZ§);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr157:
                                                               §§push(_loc4_ <= (_loc2_ = Number(_loc2_ + this.§_-sZ§.duration)));
                                                               §§push(_loc4_ <= (_loc2_ = Number(_loc2_ + this.§_-sZ§.duration)));
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  addr165:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§pop();
                                                                        addr174:
                                                                        §§push(_loc3_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() <= param1);
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              addr186:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    addr194:
                                                                                    addr196:
                                                                                    §§push(this.§_-sZ§);
                                                                                    §§push(param1);
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - _loc3_);
                                                                                    }
                                                                                    §§pop().update(§§pop());
                                                                                    addr207:
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          §§push(this.§_-bd§);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(§§pop() != null)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                §§push(_loc2_);
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   addr234:
                                                                                                   §§push(§§pop() <= (_loc2_ = Number(§§pop() + this.§_-bd§.duration)));
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         addr260:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr271:
                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                     {
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr281:
                                                                                                                           §§push(this.§_-bd§);
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc3_);
                                                                                                                           }
                                                                                                                           §§pop().update(§§pop());
                                                                                                                           addr292:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              addr296:
                                                                                                                              _loc3_ = Number(§§pop());
                                                                                                                              §§push(this.§_-qK§);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 if(§§pop() != null)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       addr305:
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          addr326:
                                                                                                                                          addr314:
                                                                                                                                          §§push(§§pop() <= (_loc2_ = Number(§§pop() + this.§_-qK§.duration)));
                                                                                                                                          if(§§pop() <= (_loc2_ = Number(§§pop() + this.§_-qK§.duration)))
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                             {
                                                                                                                                                addr334:
                                                                                                                                                §§pop();
                                                                                                                                                addr346:
                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr344:
                                                                                                                                                   §§push(_loc3_ <= param1);
                                                                                                                                                }
                                                                                                                                                §§push(this.§_-qK§);
                                                                                                                                                §§push(param1);
                                                                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc3_);
                                                                                                                                                }
                                                                                                                                                §§pop().update(§§pop());
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr361:
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr365:
                                                                                                                                                      _loc3_ = Number(§§pop());
                                                                                                                                                      if(this.§_-fe§ != null)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr372:
                                                                                                                                                            _loc5_ = this.§_-fe§.length;
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               _loc6_ = 0;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < _loc5_)
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = this.§_-fe§[_loc6_];
                                                                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     if(_loc10_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() <= (_loc2_ = Number(§§pop() + _loc7_.duration)));
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr436:
                                                                                                                                                                                       if(§§pop() <= param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                             if(_loc10_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - _loc3_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().update(§§pop());
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr453:
                                                                                                                                                                                                §§push(_loc2_);
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr456:
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc6_++;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr453);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr456);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr436);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr453);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr471:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               loop1:
                                                                                                                                                               for(; §§pop() >= 0; while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop1;
                                                                                                                                                               })
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = this.§_-fe§[_loc6_];
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - _loc7_.duration);
                                                                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr544:
                                                                                                                                                                              var _loc8_:*;
                                                                                                                                                                              §§push(_loc8_ = §§pop());
                                                                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr556:
                                                                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr561:
                                                                                                                                                                                    §§push(§§pop() >= §§pop());
                                                                                                                                                                                    if(!(_loc9_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(!(_loc9_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr586:
                                                                                                                                                                                                   if(§§pop() >= param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr594:
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - _loc2_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().update(§§pop());
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr603:
                                                                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr611:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                         if(_loc9_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(_loc10_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr611);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr603);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr586);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr556);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr561);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr544);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr611);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr594);
                                                                                                                                                               }
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  addr635:
                                                                                                                                                                  §§push(this.§_-qK§);
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() != null)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                           if(_loc10_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - this.§_-qK§.duration);
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr670:
                                                                                                                                                                                          §§push(§§pop() >= _loc8_);
                                                                                                                                                                                          §§push(§§pop() >= _loc8_);
                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr698:
                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr703:
                                                                                                                                                                                                            §§push(this.§_-qK§);
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - _loc2_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().update(§§pop());
                                                                                                                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr716:
                                                                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc3_ = Number(§§pop());
                                                                                                                                                                                                                  addr721:
                                                                                                                                                                                                                  §§push(this.§_-bd§);
                                                                                                                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() != null)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr732:
                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr740:
                                                                                                                                                                                                                           §§push(_loc2_ - this.§_-bd§.duration);
                                                                                                                                                                                                                           §§push(_loc2_ - this.§_-bd§.duration);
                                                                                                                                                                                                                           if(_loc10_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    if(_loc10_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr763:
                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr773:
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr779:
                                                                                                                                                                                                                                                      if(_loc3_ >= param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr789:
                                                                                                                                                                                                                                                            §§push(this.§_-bd§);
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            if(_loc10_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - _loc2_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().update(§§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      if(_loc10_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                                                                         addr817:
                                                                                                                                                                                                                                                         §§push(this.§_-sZ§);
                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop() != null)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr825:
                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                               §§push(_loc2_ - this.§_-sZ§.duration);
                                                                                                                                                                                                                                                               §§push(_loc2_ - this.§_-sZ§.duration);
                                                                                                                                                                                                                                                               if(_loc10_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                                                                  _loc2_ = Number(§§pop());
                                                                                                                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr847:
                                                                                                                                                                                                                                                                     §§push(§§pop() >= _loc8_);
                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr852:
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr855:
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr858:
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 addr862:
                                                                                                                                                                                                                                                                                 addr860:
                                                                                                                                                                                                                                                                                 if(_loc3_ >= param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr867:
                                                                                                                                                                                                                                                                                       §§push(this.§_-sZ§);
                                                                                                                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() - _loc2_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().update(§§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(Number(_loc2_));
                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                    addr878:
                                                                                                                                                                                                                                                                                    §§push(this.§_-yF§);
                                                                                                                                                                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() != null)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr903:
                                                                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                                                                             §§push(Number(_loc8_ = _loc2_ - this.§_-yF§.duration));
                                                                                                                                                                                                                                                                                             if(_loc10_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                                                                                                                                                                addr914:
                                                                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr923:
                                                                                                                                                                                                                                                                                                   addr924:
                                                                                                                                                                                                                                                                                                   if(§§pop() >= §§pop() && _loc3_ >= param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr932:
                                                                                                                                                                                                                                                                                                      §§push(this.§_-yF§);
                                                                                                                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - _loc2_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().update(§§pop());
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr953:
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr957:
                                                                                                                                                                                                                                                                                                      this.§_-8x§ = param1;
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr928);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr914);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr928);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr957);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr932);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr953);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr923);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr862);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr924);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr858);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr914);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr903);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr878);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr867);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr903);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr860);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr779);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr923);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr773);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr903);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr914);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr847);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr903);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr953);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr817);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr789);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr858);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr957);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr732);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr716);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr825);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr852);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr698);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr855);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr914);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr763);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr903);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr740);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr670);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr716);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr721);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr703);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr721);
                                                                                                                                                               addr631:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr957);
                                                                                                                                                         }
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr471);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr365);
                                                                                                                                                }
                                                                                                                                                §§goto(addr372);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr346);
                                                                                                                                          }
                                                                                                                                          §§goto(addr361);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr344);
                                                                                                                                 }
                                                                                                                                 §§goto(addr471);
                                                                                                                              }
                                                                                                                              §§goto(addr346);
                                                                                                                           }
                                                                                                                           §§goto(addr365);
                                                                                                                        }
                                                                                                                        §§goto(addr346);
                                                                                                                     }
                                                                                                                     §§goto(addr292);
                                                                                                                  }
                                                                                                                  §§goto(addr344);
                                                                                                               }
                                                                                                               §§goto(addr296);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             §§goto(addr471);
                                                                                          }
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr207);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr471);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr471);
                  }
                  §§goto(addr106);
               }
               else
               {
                  §§push(Number(§_-7A§));
                  if(!(_loc9_ && param1))
                  {
                     _loc2_ = §§pop();
                     _loc3_ = Number(_loc2_);
                     if(this.§_-fe§ != null)
                     {
                        if(!_loc9_)
                        {
                           §§push(int(this.§_-fe§.length - 1));
                           if(_loc10_ || param1)
                           {
                              _loc6_ = §§pop();
                              if(_loc10_)
                              {
                                 §§goto(addr630);
                              }
                              §§goto(addr789);
                           }
                           §§goto(addr631);
                        }
                        §§goto(addr779);
                     }
                     §§goto(addr635);
                  }
               }
               §§goto(addr779);
            }
            §§goto(addr305);
         }
         §§goto(addr234);
      }
      
      override protected function newInstance() : §_-E-§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<§_-Lk§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(this.§_-yF§ != null)
         {
            _loc1_.push(this.§_-yF§.clone());
         }
         if(this.§_-sZ§ != null)
         {
            if(!_loc5_)
            {
               _loc1_.push(this.§_-sZ§.clone());
               addr46:
               if(this.§_-bd§ != null)
               {
                  if(!(_loc5_ && this))
                  {
                     addr57:
                     _loc1_.push(this.§_-bd§.clone());
                     addr62:
                     if(this.§_-qK§ != null)
                     {
                        if(!_loc5_)
                        {
                           _loc1_.push(this.§_-qK§.clone());
                           §§goto(addr73);
                        }
                        §§goto(addr84);
                     }
                  }
                  addr73:
                  if(this.§_-fe§ != null)
                  {
                     addr84:
                     _loc2_ = this.§_-fe§;
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(uint(_loc2_.length));
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc3_ = §§pop();
                           addr116:
                           if(_loc6_ || _loc3_)
                           {
                              §§push(uint(0));
                           }
                           loop0:
                           while(true)
                           {
                              §§push(_loc4_);
                              while(§§pop() < _loc3_)
                              {
                                 _loc1_.push(_loc2_[_loc4_].clone());
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    §§push(uint(§§pop() + 1));
                                    if(_loc6_ || this)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr156);
                           }
                        }
                        _loc4_ = §§pop();
                     }
                     §§goto(addr116);
                  }
                  addr156:
                  return new §_-wX§(_loc1_,§_-Pj§,0);
               }
               §§goto(addr62);
            }
            §§goto(addr57);
         }
         §§goto(addr46);
      }
      
      public function §_-IK§(param1:§_-j5§) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(param1 != null)
         {
            if(this.§_-yF§ == param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr64);
               }
               §§goto(addr92);
            }
            addr64:
            if(this.§_-sZ§ != param1)
            {
               if(this.§_-bd§ == param1)
               {
                  if(_loc4_)
                  {
                     §§goto(addr86);
                  }
               }
               else if(this.§_-qK§ != param1)
               {
                  if(this.§_-fe§ != null)
                  {
                     _loc2_ = this.§_-fe§.indexOf(param1 as §_-Lk§);
                     addr115:
                     §§push(-1);
                     if(_loc4_)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(_loc2_);
                           §§push(4);
                        }
                        else
                        {
                           §§goto(addr123);
                        }
                     }
                     return §§pop() + §§pop();
                     §§push(_loc2_);
                  }
                  §§goto(addr123);
               }
               addr92:
               return 3;
            }
            §§push(1);
            if(!(_loc3_ && _loc3_))
            {
               return §§pop();
            }
            addr86:
            return 2;
         }
         if(_loc4_ || this)
         {
            §§push(-1);
            if(!(_loc3_ && _loc2_))
            {
               return §§pop();
            }
            §§goto(addr115);
         }
         addr123:
         return -1;
      }
      
      public function contains(param1:§_-j5§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1 == null)
         {
            if(_loc2_)
            {
               return false;
            }
         }
         else
         {
            if(this.§_-yF§ == param1)
            {
               if(_loc2_)
               {
                  return true;
               }
            }
            else
            {
               if(this.§_-sZ§ == param1)
               {
                  if(!_loc3_)
                  {
                     return true;
                  }
               }
               else
               {
                  addr40:
                  if(this.§_-bd§ == param1)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(true);
                        if(_loc2_ || _loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr74:
                        if(this.§_-qK§ == param1)
                        {
                           if(_loc2_ || param1)
                           {
                              §§goto(addr85);
                           }
                           else
                           {
                              addr98:
                              §§push(this.§_-fe§.indexOf(param1 as §_-Lk§) == -1);
                           }
                        }
                        else
                        {
                           if(this.§_-fe§ != null)
                           {
                              if(_loc2_ || this)
                              {
                                 §§goto(addr98);
                              }
                           }
                           return false;
                        }
                        §§goto(addr98);
                     }
                     return !§§pop();
                  }
                  §§goto(addr74);
               }
               §§goto(addr98);
            }
            §§goto(addr40);
         }
         addr85:
         return true;
      }
   }
}
