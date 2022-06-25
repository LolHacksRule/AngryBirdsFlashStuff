package §@!L§
{
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §3!C§ extends §9N§
   {
       
      
      private var §1!T§:String = "";
      
      private var § get§:Number = 1.0;
      
      private var static:Number = 1.0;
      
      public function §3!C§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§1!T§ = param3;
            }
            addr73:
         }
         loop1:
         while(true)
         {
            this.§ get§ = param4;
            while(!_loc7_)
            {
               this.static = param5;
               if(!(_loc6_ || param3))
               {
                  continue;
               }
               if(_loc6_)
               {
                  break loop1;
               }
               §§goto(addr73);
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || this)
         {
            §§push(param1);
            if(_loc6_ || param2)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || param1)
                  {
                     addr47:
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        param1 = §§pop();
                        if(_loc6_)
                        {
                           addr57:
                           §§push(param1);
                           if(_loc6_ || param2)
                           {
                           }
                           addr177:
                           if(§§pop() >= this.time + duration)
                           {
                              if(_loc6_ || param3)
                              {
                                 §§push(false);
                                 if(_loc6_)
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
                        }
                        §§goto(addr193);
                     }
                     if(§§pop() > this.time)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ = param2.getChildByName(this.§1!T§))
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push(_loc4_);
                                 §§push(this.§ get§);
                                 if(!_loc5_)
                                 {
                                    §§push(this.static);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(this.§ get§);
                                       if(_loc6_ || param3)
                                       {
                                          addr130:
                                          §§push(§§pop() - §§pop());
                                          if(_loc6_ || param1)
                                          {
                                             §§push(this.§]h§(param1));
                                          }
                                          §§pop().scaleX = §§pop() + §§pop();
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§ get§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.static);
                                                if(_loc6_)
                                                {
                                                   §§push(this.§ get§);
                                                   if(_loc6_)
                                                   {
                                                      addr175:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_ || param3)
                                                      {
                                                         addr173:
                                                         §§push(§§pop() * this.§]h§(param1));
                                                      }
                                                      §§pop().scaleY = §§pop() + §§pop();
                                                      §§goto(addr177);
                                                      §§push(param1);
                                                   }
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 §§goto(addr130);
                              }
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr193);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr47);
      }
      
      private function §]h§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(duration <= 0)
            {
               if(!_loc3_)
               {
                  §§goto(addr29);
               }
            }
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - this.time);
               if(_loc4_)
               {
                  §§push(§§pop() / duration);
                  if(!_loc3_)
                  {
                     addr48:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || param1)
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(2);
                     addr182:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr183:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr184:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr185:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr179);
            }
            §§goto(addr48);
         }
         addr29:
         return 1;
      }
      
      override public function clone() : §9N§
      {
         return new §3!C§(time,duration,this.§1!T§,this.§ get§,this.static);
      }
   }
}
