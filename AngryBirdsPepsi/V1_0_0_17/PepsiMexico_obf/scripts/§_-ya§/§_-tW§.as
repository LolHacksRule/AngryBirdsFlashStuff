package §_-ya§
{
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   
   public class §_-tW§ extends §_-ga§
   {
      
      public static const §_-1q§:Number = 1024;
      
      public static const §_-SP§:Number = 658;
      
      public static const §_-PN§:Number = 55;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-1q§ = 1024;
            if(!(_loc2_ && §_-tW§))
            {
               §_-SP§ = 658;
               if(_loc1_ || _loc2_)
               {
                  addr49:
                  §_-PN§ = 55;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      private var §_-2i§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-sa§:Number;
      
      private var §_-cr§:Number;
      
      private var §_-B§:Boolean = true;
      
      public function §_-tW§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            super(param1,param2);
            if(!_loc6_)
            {
               this.§_-2i§ = param3;
               if(!(_loc6_ && param3))
               {
                  addr44:
                  this.mX = param4;
                  if(!(_loc6_ && param3))
                  {
                     addr61:
                     this.mY = param5;
                  }
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr61);
      }
      
      public function set §_-OZ§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-B§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr33:
                     §§push(Number(this.time + duration));
                     if(_loc4_)
                     {
                        param1 = §§pop();
                        if(_loc4_ || this)
                        {
                           addr48:
                           §§push(param1);
                           if(!_loc5_)
                           {
                              addr51:
                              if(§§pop() > this.time)
                              {
                                 if(_loc4_ || this)
                                 {
                                    addr61:
                                    _loc3_ = param2.getChildByName(this.§_-2i§);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc3_.name == §_-fs§.§_-6G§)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(this.§_-B§)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(_loc3_);
                                                         §§push(this.§_-jK§());
                                                         if(_loc4_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * this.§_-Em§(param1));
                                                            }
                                                         }
                                                         §§pop().x = §§pop();
                                                         addr115:
                                                      }
                                                      else
                                                      {
                                                         addr138:
                                                         §§push(_loc3_);
                                                         §§push(_loc3_.y);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() - this.mY);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr147:
                                                         if(param1 >= this.time + duration)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr155:
                                                               §§push(false);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr171:
                                                               §§push(true);
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc3_);
                                                      §§push(this.§_-jK§());
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() * this.§_-Em§(param1));
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc3_);
                                                §§push(_loc3_.x);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - this.mX);
                                                }
                                                §§pop().x = §§pop();
                                                if(!_loc4_)
                                                {
                                                }
                                             }
                                             §§goto(addr147);
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr155);
                              }
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr61);
               }
               §§goto(addr48);
            }
            §§goto(addr138);
         }
         §§goto(addr33);
      }
      
      private function §_-Em§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(!_loc3_)
            {
               §§push(§§pop() / duration);
               if(_loc4_)
               {
                  addr26:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && param1))
               {
                  §§push(2);
                  if(_loc4_)
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr69);
               }
               addr54:
               _loc2_ = Number(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr58:
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(1);
                     if(!(_loc3_ && param1))
                     {
                        addr69:
                        if(§§pop() < §§pop())
                        {
                           if(_loc4_)
                           {
                              §§goto(addr72);
                           }
                        }
                        addr82:
                        §§push(_loc2_);
                        §§push(2);
                     }
                     §§push(Number(§§pop() - §§pop()));
                     if(!(_loc3_ && param1))
                     {
                        _loc2_ = §§pop();
                        §§push((Math.pow(_loc2_,3) + 2) / 2);
                     }
                     return §§pop();
                  }
                  §§goto(addr82);
               }
               addr72:
               return Math.pow(_loc2_,3) / 2;
            }
            §§goto(addr58);
         }
         §§goto(addr26);
      }
      
      protected function §_-jK§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§_-B§)
            {
               if(_loc1_)
               {
                  addr20:
                  §§push(this.§_-sa§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr59);
               }
               else
               {
                  addr55:
                  §§push(this.§_-cr§);
                  if(_loc1_)
                  {
                     §§goto(addr59);
                  }
               }
               addr61:
               §§push(§_-1q§);
               if(_loc1_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
                  addr59:
                  §§push(§_-SP§);
               }
               return §§pop() - §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr20);
      }
      
      public function §_-lX§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§_-sa§ = param1;
            if(_loc3_)
            {
               addr20:
               this.§_-cr§ = param2;
            }
            return;
         }
         §§goto(addr20);
      }
      
      override public function clone() : §_-ga§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-tW§ = new §_-tW§(time,duration,this.§_-2i§,this.mX,this.mY);
         if(_loc2_)
         {
            _loc1_.§_-sa§ = this.§_-sa§;
            if(!_loc3_)
            {
               _loc1_.§_-cr§ = this.§_-cr§;
               if(!_loc3_)
               {
                  addr53:
                  _loc1_.§_-B§ = this.§_-B§;
               }
            }
            return _loc1_;
         }
         §§goto(addr53);
      }
   }
}
