package §-!u§
{
   public class §@!c§ extends §&"-§
   {
       
      
      protected var §5b§:Number = -1;
      
      public function §@!c§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2u§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§2u§ = null;
         var _loc1_:* = int(§+7§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr251);
                     }
                     break;
                  }
                  addr243:
                  loop11:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop12:
                     while(true)
                     {
                        §§push(this.§5" §);
                        if(!_loc6_)
                        {
                           §§push(-§§pop());
                        }
                        §§push(§§pop() > §§pop());
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop());
                           loop13:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              loop14:
                              while(true)
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc6_ && _loc1_)
                                    {
                                       continue loop12;
                                    }
                                    addr146:
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(§§pop() < §,2§);
                                       if(_loc5_ || _loc1_)
                                       {
                                          continue loop13;
                                       }
                                       addr189:
                                       while(true)
                                       {
                                          if(!(_loc5_ || _loc1_))
                                          {
                                             continue loop14;
                                          }
                                          §§pop();
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(false)
                                             {
                                                continue loop11;
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr274);
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       if(!(_loc5_ || this))
                                       {
                                          break loop14;
                                       }
                                       §§goto(addr243);
                                       §§goto(addr146);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr327);
                           }
                        }
                        addr248:
                        if(!§3!L§(_loc1_))
                        {
                           if(!_loc6_)
                           {
                              addr251:
                              if(_loc5_ || _loc1_)
                              {
                                 addr327:
                                 §§push(_loc1_);
                                 break loop0;
                              }
                              _loc4_ = §"!n§();
                              if(!(_loc6_ && _loc3_))
                              {
                                 §#e§.addChild(_loc4_);
                                 setRendererData(_loc4_,§&"$§[_loc1_]);
                                 _loc4_.index = _loc1_;
                                 addr292:
                                 addr323:
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(_loc5_)
                                    {
                                       addr276:
                                       _loc4_.y = _loc3_;
                                       if(_loc5_ || _loc1_)
                                       {
                                          §+7§.push(_loc4_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§goto(addr274);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr292);
                                    }
                                    §§goto(addr323);
                                 }
                                 addr309:
                                 §§goto(addr309);
                              }
                              addr274:
                              if(false)
                              {
                                 §§goto(addr276);
                              }
                              §§goto(addr324);
                           }
                           break loop14;
                        }
                        addr324:
                        _loc1_++;
                        if(!_loc6_)
                        {
                           §§goto(addr327);
                        }
                        return;
                     }
                  }
               }
               else
               {
                  _loc2_ = §+7§[_loc1_];
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.y = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.y >= §,2§);
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_ || _loc1_)
                                    {
                                       hide(_loc2_);
                                       addr94:
                                       while(true)
                                       {
                                       }
                                       addr94:
                                    }
                                    §§goto(addr94);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       break;
                                    }
                                    §§goto(addr94);
                                 }
                                 if(_loc5_ || this)
                                 {
                                    if(true)
                                    {
                                       break;
                                       addr66:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.y <= -this.§5" §);
                                       if(!_loc6_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                              addr82:
                           }
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr94);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < §&"$§.length)
            {
               §§push(this.getPositionFromIndex(_loc1_));
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr235);
            }
            break;
            §§goto(addr327);
         }
         §§goto(addr274);
      }
      
      protected function get §5" §() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2u§ = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§5b§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() == -1)
               {
                  addr48:
                  _loc1_ = §"!n§();
                  if(!_loc2_)
                  {
                     this.§5b§ = _loc1_.height;
                     if(!_loc3_)
                     {
                     }
                     addr75:
                     return this.§5b§;
                     addr73:
                  }
                  §@!e§(_loc1_);
               }
               §§goto(addr73);
            }
            §§goto(addr75);
         }
         §§goto(addr48);
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §0!r§ = Math.floor(§,2§ / (this.§5" § + §'!=§));
         }
      }
      
      override protected function calculateMargin() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §<N§ = Math.min((§,2§ - §'",§ * this.§5" §) / §'",§,§!!x§);
         }
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§2u§ = null;
         if(_loc4_)
         {
            §,2§ = §#e§.mask.height = param1;
            if(_loc4_)
            {
               this.calculateMaxItemsVisible();
               while(true)
               {
                  addr69:
                  while(true)
                  {
                     §'",§ = Math.min(§0!r§,§&"$§.length);
                  }
               }
               addr80:
               addr33:
            }
            while(true)
            {
               §<N§ = Math.min((§,2§ - §'",§ * this.§5" §) / §'",§,§!!x§);
               if(_loc5_)
               {
                  continue;
               }
               if(!(_loc5_ && param1))
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr80);
               }
               §§goto(addr69);
            }
            while(§+7§.length > §0!r§)
            {
               _loc2_ = §+7§.pop();
               if(_loc4_)
               {
                  §#e§.removeChild(_loc2_);
                  if(!_loc5_)
                  {
                     §@!e§(_loc2_);
                  }
               }
            }
            if(!_loc5_)
            {
               §8!`§(0);
               if(_loc4_ || this)
               {
                  §'!"§ = §8! §;
               }
            }
            do
            {
               this.updatePositions();
            }
            while(!_loc4_);
            
            return;
         }
         §§goto(addr33);
      }
      
      override public function setWidth(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §^!,§ = §#e§.mask.width = param1;
         }
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§<N§ / 2 + (param1 + §'!"§) * (this.§5" § + §<N§));
      }
   }
}
