package §%r§
{
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §8h§ extends §,!b§
   {
      
      public static const SCREEN_WIDTH:Number = 1024;
      
      public static const SCREEN_HEIGHT:Number = 658;
      
      public static const §'!_§:Number = 55;
      
      public static const §-!E§:String = "cubic_in_out";
      
      public static const §8I§:String = "sin_in_out";
      
      public static const §`!#§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §8h§)
         {
            SCREEN_WIDTH = 1024;
            loop0:
            while(true)
            {
               SCREEN_HEIGHT = 658;
               loop1:
               while(true)
               {
                  §'!_§ = 55;
                  while(true)
                  {
                     §-!E§ = "cubic_in_out";
                     while(!(_loc2_ && §8h§))
                     {
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              §8I§ = "sin_in_out";
                              loop4:
                              while(_loc1_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §`!#§ = "none";
                                    if(_loc1_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private var §&!O§:String;
      
      private var §1X§:Number;
      
      private var §`J§:Number;
      
      private var §,<§:Number;
      
      private var §5,§:Number;
      
      private var §@M§:Boolean = true;
      
      private var §?!%§:String = "cubic_in_out";
      
      public function §8h§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§&!O§ = param3;
            }
            addr75:
         }
         while(true)
         {
            this.§1X§ = param4;
            for(; _loc7_; this.§`J§ = param5,do
            {
               this.§?!%§ = param6;
            }
            while(!_loc7_);
            ,if(!_loc8_)
            {
               return;
            })
            {
               if(!_loc8_)
               {
                  continue;
               }
               §§goto(addr75);
            }
         }
      }
      
      public function set §'R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@M§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && param3))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_ || param2)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_ || param2)
                     {
                        addr55:
                        param1 = §§pop();
                        if(_loc5_ || param3)
                        {
                           addr63:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    addr76:
                                    _loc4_ = param2.getChildByName(this.§&!O§);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(Boolean(_loc4_));
                                       if(_loc5_ || param2)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc4_.name != §`!Q§.§;#§)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.x);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - this.§1X§);
                                                   }
                                                   §§pop().x = §§pop();
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   addr190:
                                                   §§push(_loc4_);
                                                   §§push(this.§9+§());
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr208:
                                                         §§push(§§pop() * this.§#>§(param1));
                                                      }
                                                      §§pop().x = §§pop();
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§push(this.§@M§);
                                             }
                                             addr124:
                                             if(false)
                                             {
                                             }
                                          }
                                          §§goto(addr126);
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§9+§());
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() * this.§#>§(param1));
                                             }
                                             §§pop().y = §§pop();
                                             §§goto(addr159);
                                          }
                                          §§goto(addr190);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr247);
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr238);
               }
               §§goto(addr63);
            }
            §§goto(addr55);
         }
         §§goto(addr247);
      }
      
      private function §#>§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               §§push(§§pop() / duration);
               if(!(_loc5_ && this))
               {
                  addr34:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§?!%§;
            if(!(_loc5_ && param1))
            {
               §§push(§-!E§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc4_ || _loc2_))
                           {
                              addr267:
                           }
                        }
                        else
                        {
                           addr259:
                           §§push(2);
                           if(_loc4_ || param1)
                           {
                              §§goto(addr267);
                           }
                        }
                        addr269:
                        loop11:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(_loc2_);
                              loop0:
                              while(true)
                              {
                                 §§push(2);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop2:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop3:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(1);
                                                while(true)
                                                {
                                                   if(!(_loc4_ || this))
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         break loop11;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Math.pow(_loc2_,3) / 2);
                                                         break loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr117:
                                                   §§push(_loc2_);
                                                   while(true)
                                                   {
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr136:
                                                         while(true)
                                                         {
                                                            if(_loc5_ && _loc2_)
                                                            {
                                                               break loop4;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr163:
                                             }
                                             §§goto(addr272);
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    return §§pop();
                                 }
                              }
                              break;
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(-§§pop());
                                       if(_loc4_)
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_)
                                                {
                                                   addr70:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr70);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr70);
                        }
                        addr272:
                        return §§pop();
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr249:
                        §§push(§8I§);
                        §§push(_loc3_);
                     }
                     §§goto(addr259);
                  }
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr259);
                     }
                  }
                  else if(false)
                  {
                     §§goto(addr259);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr269);
               }
               §§goto(addr249);
            }
            §§goto(addr259);
         }
         §§goto(addr34);
      }
      
      protected function §9+§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§@M§)
            {
               if(!_loc2_)
               {
                  §§push(this.§,<§);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(SCREEN_WIDTH);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr82);
                  }
                  else
                  {
                     addr79:
                     §§push(SCREEN_HEIGHT);
                  }
                  §§push(§§pop() - §§pop());
               }
               else
               {
                  addr70:
                  §§push(this.§5,§);
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr79);
                  }
               }
               addr82:
               return §§pop();
            }
         }
         §§goto(addr70);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,<§ = param1;
            do
            {
               this.§5,§ = param2;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override public function clone() : §,!b§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8h§ = new §8h§(time,duration,this.§&!O§,this.§1X§,this.§`J§,this.§?!%§);
         if(!_loc3_)
         {
            _loc1_.§,<§ = this.§,<§;
         }
         while(true)
         {
            _loc1_.§5,§ = this.§5,§;
            while(_loc2_ || _loc3_)
            {
               _loc1_.§@M§ = this.§@M§;
               if(_loc2_ || _loc3_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
