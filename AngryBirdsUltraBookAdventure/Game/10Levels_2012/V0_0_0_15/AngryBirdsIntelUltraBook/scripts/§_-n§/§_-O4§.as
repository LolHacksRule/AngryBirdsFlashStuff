package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   
   public class §_-O4§ extends §_-tC§
   {
      
      public static const §_-W8§:Number = 1024;
      
      public static const §_-Kj§:Number = 658;
      
      public static const §_-0FD§:Number = 55;
      
      public static const §_-XY§:String = "cubic_in_out";
      
      public static const §_-JS§:String = "sin_in_out";
      
      public static const §_-048§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-O4§)
         {
            §_-W8§ = 1024;
            do
            {
               §_-Kj§ = 658;
               loop1:
               do
               {
                  §_-0FD§ = 55;
                  loop2:
                  while(true)
                  {
                     §_-XY§ = "cubic_in_out";
                     loop3:
                     do
                     {
                        §_-JS§ = "sin_in_out";
                        while(_loc2_)
                        {
                           §_-048§ = "none";
                           if(!(_loc1_ && §_-O4§))
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(_loc1_);
                     
                     continue loop1;
                  }
               }
               while(!(_loc2_ || §_-O4§));
               
            }
            while(_loc1_);
            
         }
      }
      
      private var §_-ml§:String;
      
      private var §_-c§:Number;
      
      private var §_-l1§:Number;
      
      private var §_-ux§:Number;
      
      private var §_-09f§:Number;
      
      private var §_-04A§:Boolean = true;
      
      private var §_-kV§:String = "cubic_in_out";
      
      public function §_-O4§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§_-ml§ = param3;
               loop1:
               while(true)
               {
                  this.§_-c§ = param4;
                  while(!_loc8_)
                  {
                     this.§_-l1§ = param5;
                     while(_loc7_)
                     {
                        continue loop1;
                        this.§_-kV§ = param6;
                        if(!(_loc8_ && this))
                        {
                           return;
                           addr59:
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr59);
      }
      
      public function set §_-RR§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-04A§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || this)
                     {
                        addr54:
                        param1 = §§pop();
                        if(_loc6_ || this)
                        {
                           addr62:
                           §§push(param1);
                           if(_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§_-ml§))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_.name == §_-fn§.§_-a9§)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(this.§_-04A§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§_-05§());
                                                      if(!_loc5_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr115:
                                                            §§push(§§pop() * this.§_-vp§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc5_ && param3)
                                                         {
                                                            do
                                                            {
                                                               §§push(_loc4_);
                                                               §§push(_loc4_.y);
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(§§pop() - this.§_-l1§);
                                                               }
                                                               §§pop().y = §§pop();
                                                            }
                                                            while(_loc5_ && param1);
                                                            
                                                            addr170:
                                                            if(_loc6_)
                                                            {
                                                               addr152:
                                                               if(false)
                                                               {
                                                               }
                                                               addr193:
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr201:
                                                                     §§push(false);
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr210:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            else
                                                            {
                                                               addr192:
                                                            }
                                                            addr170:
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§_-05§());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * this.§_-vp§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!(_loc5_ && param3))
                                             {
                                                §§push(§§pop() - this.§_-c§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr152);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr201);
               }
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         §§goto(addr210);
      }
      
      private function §_-vp§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() / duration);
               if(!(_loc4_ && _loc2_))
               {
                  addr39:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§_-kV§;
            if(_loc5_ || param1)
            {
               §§push(§_-XY§);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(0);
                           if(_loc4_ && param1)
                           {
                           }
                        }
                        else
                        {
                           addr254:
                           §§push(1);
                           if(_loc4_ && _loc2_)
                           {
                           }
                        }
                        addr267:
                        loop3:
                        switch(§§pop())
                        {
                           case 0:
                              addr192:
                              §§push(_loc2_ * 2);
                              if(!_loc4_)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          §§push(1);
                                          loop1:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(Math.pow(_loc2_,3) / 2);
                                                   if(_loc5_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr270:
                                                   return §§pop();
                                                }
                                             }
                                             §§push(_loc2_);
                                             if(_loc4_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§push(2);
                                             addr144:
                                             while(true)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr152:
                                                   §§push(Number(§§pop() - §§pop()));
                                                   break loop1;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ || this))
                                          {
                                             break loop3;
                                          }
                                          §§push((Math.pow(_loc2_,3) + 2) / 2);
                                          if(_loc5_ || param1)
                                          {
                                             return §§pop();
                                          }
                                       }
                                    }
                                    break loop3;
                                 }
                                 break;
                              }
                              §§goto(addr270);
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(_loc5_ || param1)
                                    {
                                       addr67:
                                       §§push(2);
                                       if(_loc5_ || this)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr270);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr270);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr67);
                        }
                        §§goto(addr270);
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr252:
                        §§push(§_-JS§);
                        §§push(_loc3_);
                     }
                     §§goto(addr254);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr254);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr267);
               }
               §§goto(addr252);
            }
            §§goto(addr254);
         }
         §§goto(addr39);
      }
      
      protected function §_-05§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§_-04A§)
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(this.§_-ux§);
                  if(!_loc1_)
                  {
                     §§push(§_-W8§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr80:
                        return §§pop() - §§pop();
                     }
                  }
               }
               else
               {
                  addr70:
                  §§push(this.§_-09f§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr80);
                     return §_-Kj§;
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr70);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-ux§ = param1;
         }
         do
         {
            this.§_-09f§ = param2;
         }
         while(_loc4_);
         
      }
      
      override public function clone() : §_-tC§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-O4§ = new §_-O4§(time,duration,this.§_-ml§,this.§_-c§,this.§_-l1§,this.§_-kV§);
         if(!_loc2_)
         {
            _loc1_.§_-ux§ = this.§_-ux§;
            while(true)
            {
               _loc1_.§_-09f§ = this.§_-09f§;
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            _loc1_.§_-04A§ = this.§_-04A§;
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
