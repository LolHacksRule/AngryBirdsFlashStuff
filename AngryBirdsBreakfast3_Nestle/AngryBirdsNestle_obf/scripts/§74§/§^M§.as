package §74§
{
   public class §^M§ extends §2!§
   {
       
      
      protected var §6O§:Number = -1;
      
      public function §^M§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^z§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§^z§ = null;
         var _loc1_:* = int(§>1§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc6_ || _loc2_)
                     {
                        break;
                     }
                     addr299:
                     if(§§pop() < §7!?§.length)
                     {
                        §§push(this.getPositionFromIndex(_loc1_));
                        loop11:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop12:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr219:
                              while(true)
                              {
                                 addr189:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr191:
                                    while(!_loc5_)
                                    {
                                       continue loop11;
                                    }
                                    continue loop12;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr302);
                  }
                  §§goto(addr298);
                  addr132:
               }
               else
               {
                  _loc2_ = §>1§[_loc1_];
                  if(!_loc5_)
                  {
                     _loc2_.y = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.y >= §+9§);
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr101:
                                 while(true)
                                 {
                                    addr69:
                                    while(true)
                                    {
                                       §§push(_loc2_.y <= -this.§4§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(_loc6_ || _loc2_)
                                 {
                                    hide(_loc2_);
                                    loop6:
                                    while(true)
                                    {
                                       addr40:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop6;
                                          }
                                          if(!(_loc6_ || this))
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          if(true)
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr69);
                                       }
                                    }
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr40);
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr101);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc6_)
         {
            §§goto(addr132);
         }
         §§goto(addr219);
      }
      
      protected function get §4§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^z§ = null;
         if(_loc2_)
         {
            §§push(this.§6O§);
            if(_loc2_)
            {
               if(§§pop() == -1)
               {
                  _loc1_ = §`E§();
                  addr27:
                  if(_loc2_ || this)
                  {
                     this.§6O§ = _loc1_.height;
                     if(!(_loc3_ && this))
                     {
                        §^!?§(_loc1_);
                     }
                  }
               }
               return this.§6O§;
            }
         }
         §§goto(addr27);
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            § N§ = Math.floor(§+9§ / (this.§4§ + §@"5§));
         }
      }
      
      override protected function calculateMargin() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §3!d§ = Math.min((§+9§ - §@!K§ * this.§4§) / §@!K§,§`!$§);
         }
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§^z§ = null;
         if(_loc4_ || this)
         {
            §+9§ = §&%§.mask.height = param1;
            if(_loc4_)
            {
               this.calculateMaxItemsVisible();
               loop5:
               while(true)
               {
                  addr62:
                  while(true)
                  {
                     §@!K§ = Math.min(§ N§,§7!?§.length);
                     addr80:
                     while(!_loc4_)
                     {
                        continue loop5;
                     }
                     continue loop5;
                  }
               }
               addr38:
            }
            while(true)
            {
               §3!d§ = Math.min((§+9§ - §@!K§ * this.§4§) / §@!K§,§`!$§);
               if(!(_loc5_ && this))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr62);
               }
               §§goto(addr80);
            }
            while(§>1§.length > § N§)
            {
               _loc2_ = §>1§.pop();
               if(_loc4_)
               {
                  §&%§.removeChild(_loc2_);
                  if(!_loc5_)
                  {
                     §^!?§(_loc2_);
                  }
               }
            }
            if(!(_loc5_ && _loc2_))
            {
               §8!H§(0);
               if(_loc4_ || _loc2_)
               {
                  §@q§ = §-!3§;
                  do
                  {
                     this.updatePositions();
                  }
                  while(!_loc4_);
                  
                  addr147:
               }
               return;
            }
            §§goto(addr147);
         }
         §§goto(addr38);
      }
      
      override public function setWidth(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §7F§ = §&%§.mask.width = param1;
         }
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§3!d§ / 2 + (param1 + §@q§) * (this.§4§ + §3!d§));
      }
   }
}
