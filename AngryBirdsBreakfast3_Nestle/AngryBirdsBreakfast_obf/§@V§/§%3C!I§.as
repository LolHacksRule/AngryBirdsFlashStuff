package §@V§
{
   import §#!I§.§0k§;
   
   public class §<!I§
   {
      
      protected static const §%q§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §%q§ = 1000 / 60;
         }
      }
      
      protected var §%O§:Number = 0;
      
      protected var §1!l§:Number = 0;
      
      protected var §"r§:Number = 0;
      
      protected var §<!c§:Number = 0;
      
      protected var § h§:Number = 0;
      
      protected var § !q§:Number = 0;
      
      protected var § 1§:Number = 0;
      
      public function §<!I§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§"r§ = param1;
            }
            addr115:
         }
         loop1:
         while(true)
         {
            this.§<!c§ = param2;
            loop2:
            while(true)
            {
               this.§ !q§ = param1;
               loop3:
               while(_loc5_)
               {
                  this.§ 1§ = param2;
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        this.§%O§ = 0;
                        while(!(_loc4_ && this))
                        {
                           this.§1!l§ = 0;
                           do
                           {
                              this.§ h§ = param3;
                           }
                           while(!(_loc5_ || this));
                           
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           §§goto(addr42);
                        }
                        continue loop3;
                     }
                     continue loop1;
                     if(!(_loc4_ && this))
                     {
                        return;
                     }
                  }
                  continue loop2;
               }
               §§goto(addr115);
            }
         }
      }
      
      public function § !_§(param1:§0k§, param2:Number) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param2)
         {
            §§push(this.§%O§);
            loop0:
            while(true)
            {
               §§push(this.§ h§);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(false);
                     if(!(_loc6_ && param2))
                     {
                        return §§pop();
                     }
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§%O§);
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§%O§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§1!l§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + this.§"r§);
                        }
                        §§pop().§1!l§ = §§pop();
                        loop4:
                        while(!_loc6_)
                        {
                           §§push(param2);
                           while(true)
                           {
                              §§push(§%q§);
                              if(_loc7_ || this)
                              {
                                 §§push(§§pop() / §§pop());
                                 while(true)
                                 {
                                    §§push(this.§<!c§);
                                 }
                                 addr254:
                              }
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr200:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             continue loop10;
                                          }
                                          _loc5_ = §§pop();
                                          §§push(this);
                                          §§push(this.§<!c§);
                                          if(!_loc6_)
                                          {
                                             §§push(param2);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(this.§ h§);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   addr141:
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr139:
                                                      §§push(§§pop() * this.§ 1§);
                                                   }
                                                   §§pop().§<!c§ = §§pop() - §§pop();
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr254);
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr110);
      }
   }
}
