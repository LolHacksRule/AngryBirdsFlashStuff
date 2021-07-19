package §'7§
{
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   
   public class §'!A§ extends §@!F§
   {
      
      public static const §-p§:Number = 1024;
      
      public static const §5!9§:Number = 658;
      
      public static const §throw§:Number = 55;
      
      public static const §#!"§:String = "cubic_in_out";
      
      public static const §]>§:String = "sin_in_out";
      
      public static const §6!9§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-p§ = 1024;
            do
            {
               §5!9§ = 658;
               §throw§ = 55;
            }
            while(_loc2_ && _loc2_);
            
            §#!"§ = "cubic_in_out";
            §]>§ = "sin_in_out";
            do
            {
               §6!9§ = "none";
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §4!6§:String;
      
      private var §]!B§:Number;
      
      private var §5G§:Number;
      
      private var §6! §:Number;
      
      private var §@g§:Number;
      
      private var §'!5§:Boolean = true;
      
      private var §6!'§:String = "cubic_in_out";
      
      public function §'!A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§4!6§ = param3;
               §§goto(addr81);
            }
         }
         addr81:
         while(true)
         {
            this.§]!B§ = param4;
            do
            {
               this.§5G§ = param5;
               do
               {
                  this.§6!'§ = param6;
               }
               while(!_loc8_);
               
            }
            while(_loc7_ && param1);
            
            if(_loc8_)
            {
               if(_loc8_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set §9I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!5§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_ || param2)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_ || param3)
                  {
                     §§push(Number(this.time + duration));
                     if(!_loc6_)
                     {
                        addr48:
                        param1 = §§pop();
                        if(_loc5_ || this)
                        {
                           addr56:
                           §§push(param1);
                           if(!(_loc6_ && param3))
                           {
                              addr64:
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_)
                                 {
                                    addr69:
                                    if(_loc4_ = param2.getChildByName(this.§4!6§))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc4_.name == §3g§.§,V§)
                                          {
                                             if(this.§'!5§)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§?!5§());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() * this.§^!8§(param1));
                                                      }
                                                   }
                                                   §§pop().x = §§pop();
                                                }
                                                else
                                                {
                                                   do
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(_loc4_.y);
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         §§push(§§pop() - this.§5G§);
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                   while(!_loc5_);
                                                   
                                                   if(false)
                                                   {
                                                   }
                                                   addr181:
                                                   if(param1 >= this.time + duration)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr189:
                                                         §§push(false);
                                                         if(!_loc6_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr193:
                                                         return true;
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr193);
                                                   addr153:
                                                }
                                                §§goto(addr181);
                                             }
                                             else
                                             {
                                                §§push(_loc4_);
                                                §§push(this.§?!5§());
                                                if(_loc5_ || param2)
                                                {
                                                   §§push(§§pop() * this.§^!8§(param1));
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             §§goto(addr181);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() - this.§]!B§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr69);
               }
               §§goto(addr56);
            }
            §§goto(addr48);
         }
         §§goto(addr189);
      }
      
      private function §^!8§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               §§push(§§pop() / duration);
               if(_loc4_ || this)
               {
                  addr33:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§6!'§;
            if(!(_loc5_ && this))
            {
               §§push(§#!"§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc4_ || param1))
                           {
                              addr208:
                           }
                        }
                        else
                        {
                           addr200:
                           §§push(1);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§goto(addr208);
                           }
                        }
                        §§goto(addr213);
                     }
                     else
                     {
                        addr198:
                        §§push(§]>§);
                        §§push(_loc3_);
                     }
                     §§goto(addr200);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr200);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr213:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(_loc2_);
                        §§push(2);
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr144:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr145:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 §§push(_loc2_);
                                 §§push(1);
                                 addr130:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(Math.pow(_loc2_,3) / 2);
                                       break loop0;
                                    }
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       break loop0;
                                    }
                                    §§push(2);
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          addr125:
                                          _loc2_ = Number(§§pop() - §§pop());
                                          §§push((Math.pow(_loc2_,3) + 2) / 2);
                                          if(!_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          break loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                        return §§pop();
                     case 1:
                        §§push(Math.cos(Math.PI * _loc2_) - 1);
                        if(_loc4_)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§push(-§§pop());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(2);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr79);
                                       }
                                       else
                                       {
                                          §§goto(addr130);
                                       }
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr125);
                        }
                        addr79:
                        return §§pop() / §§pop();
                  }
                  return _loc2_;
               }
               §§goto(addr198);
            }
            §§goto(addr200);
         }
         §§goto(addr33);
      }
      
      protected function §?!5§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§'!5§)
            {
               if(_loc2_ || this)
               {
                  addr54:
                  §§push(this.§6! §);
                  if(!_loc1_)
                  {
                     §§goto(addr81);
                  }
                  §§goto(addr79);
               }
               else
               {
                  addr75:
                  §§push(this.§@g§);
                  if(_loc2_)
                  {
                     §§goto(addr79);
                  }
               }
               addr81:
               §§push(§-p§);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
                  addr79:
                  §§push(§5!9§);
               }
               return §§pop() - §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr54);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§6! § = param1;
            do
            {
               this.§@g§ = param2;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function clone() : §@!F§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!A§ = new §'!A§(time,duration,this.§4!6§,this.§]!B§,this.§5G§,this.§6!'§);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§6! § = this.§6! §;
            while(true)
            {
               _loc1_.§@g§ = this.§@g§;
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            _loc1_.§'!5§ = this.§'!5§;
            if(!_loc2_)
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
