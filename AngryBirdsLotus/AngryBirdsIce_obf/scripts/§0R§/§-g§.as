package §0R§
{
   import §1n§.§5#§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §-g§ extends §6! §
   {
      
      public static const static:Number = 1024;
      
      public static const §for§:Number = 658;
      
      public static const §1_§:Number = 55;
      
      public static const §9r§:String = "cubic_in_out";
      
      public static const §;r§:String = "sin_in_out";
      
      public static const §7w§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            static = 1024;
         }
         while(true)
         {
            §for§ = 658;
            §1_§ = 55;
            §9r§ = "cubic_in_out";
            §;r§ = "sin_in_out";
            while(_loc1_ || _loc2_)
            {
               §7w§ = "none";
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      private var §9!+§:String;
      
      private var §-Y§:Number;
      
      private var §%!;§:Number;
      
      private var §?!#§:Number;
      
      private var §26§:Number;
      
      private var §`7§:Boolean = true;
      
      private var §@!B§:String = "cubic_in_out";
      
      public function §-g§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            super(param1,param2);
            while(true)
            {
               this.§9!+§ = param3;
               loop1:
               while(true)
               {
                  this.§-Y§ = param4;
                  while(true)
                  {
                     this.§%!;§ = param5;
                     continue loop1;
                     addr50:
                     if(_loc8_ || param1)
                     {
                        return;
                        addr67:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§@!B§ = param6;
            if(_loc8_ || param3)
            {
               §§goto(addr50);
            }
            §§goto(addr72);
         }
         §§goto(addr67);
      }
      
      public function set §0%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`7§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        addr44:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr47:
                           §§push(param1);
                           if(_loc6_ || param1)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§9!+§))
                                    {
                                       if(_loc4_.name == §1d§.§0k§)
                                       {
                                          if(this.§`7§)
                                          {
                                             if(!(_loc5_ && param3))
                                             {
                                                §§push(_loc4_);
                                                §§push(this.§7V§());
                                                if(_loc6_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * this.§"b§(param1));
                                                   }
                                                }
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ || param3))
                                                {
                                                   addr173:
                                                }
                                                addr174:
                                                if(param1 >= this.time + duration)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr187:
                                                      §§push(false);
                                                      if(!_loc5_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr191:
                                                      return true;
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr191);
                                                addr133:
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§7V§());
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * this.§"b§(param1));
                                             }
                                             §§pop().y = §§pop();
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(_loc4_.x);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() - this.§-Y§);
                                          }
                                          §§pop().x = §§pop();
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr187);
               }
               §§goto(addr47);
            }
            §§goto(addr44);
         }
         §§goto(addr187);
      }
      
      private function §"b§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_ || param1)
            {
               addr29:
               §§push(§§pop() / duration);
               if(!(_loc5_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§@!B§;
            if(_loc4_)
            {
               §§push(§9r§);
               if(!(_loc5_ && this))
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc5_ && _loc3_)
                           {
                              addr216:
                           }
                        }
                        else
                        {
                           addr213:
                           §§push(1);
                           if(_loc4_)
                           {
                              §§goto(addr216);
                           }
                        }
                        addr221:
                        loop4:
                        switch(§§pop())
                        {
                           case 0:
                              addr161:
                              _loc2_ *= 2;
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push(1);
                                 loop1:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(Math.pow(_loc2_,3) / 2);
                                       break;
                                    }
                                    addr125:
                                    §§push(_loc2_);
                                    §§push(2);
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          break loop4;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 return §§pop();
                                 _loc2_ = §§pop();
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr120);
                              }
                              break;
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(_loc4_ || this)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(-§§pop());
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr84:
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_ || this)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr84);
                                    }
                                    else
                                    {
                                       §§goto(addr161);
                                    }
                                 }
                                 addr120:
                                 return (Math.pow(_loc2_,3) + 2) / 2;
                              }
                              §§goto(addr84);
                           default:
                              return _loc2_;
                        }
                        continue loop3;
                     }
                     addr211:
                     §§push(§;r§);
                     §§push(_loc3_);
                     §§goto(addr213);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr213);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr221);
               }
               §§goto(addr211);
            }
            §§goto(addr213);
         }
         §§goto(addr29);
      }
      
      protected function §7V§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§`7§)
            {
               if(_loc2_)
               {
                  §§push(this.§?!#§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr74);
               }
               else
               {
                  addr70:
                  §§push(this.§26§);
                  if(_loc2_)
                  {
                     §§goto(addr74);
                  }
               }
               addr76:
               §§push(static);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
                  addr74:
                  §§push(§for§);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr70);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§?!#§ = param1;
         }
         do
         {
            this.§26§ = param2;
         }
         while(!(_loc3_ || this));
         
      }
      
      override public function clone() : §6! §
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§-g§ = new §-g§(time,duration,this.§9!+§,this.§-Y§,this.§%!;§,this.§@!B§);
         if(_loc3_)
         {
            _loc1_.§?!#§ = this.§?!#§;
         }
         do
         {
            _loc1_.§26§ = this.§26§;
            do
            {
               _loc1_.§`7§ = this.§`7§;
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(!(_loc3_ || _loc1_));
         
         return _loc1_;
      }
   }
}
