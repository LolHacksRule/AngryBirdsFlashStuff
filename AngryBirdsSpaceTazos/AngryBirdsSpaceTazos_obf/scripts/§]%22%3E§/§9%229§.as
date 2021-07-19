package §]">§
{
   import §"!&§.§]!C§;
   import §'4§.§^g§;
   
   public class §9"9§ extends §"!B§
   {
       
      
      protected var §!!l§:Number = 0.0;
      
      public function §9"9§(param1:§]!C§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1);
            while(true)
            {
               §&!B§ = param2;
               while(_loc4_)
               {
                  §%"1§ = true;
                  if(!_loc3_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function update(param1:Number, param2:§;U§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(_loc8_ || param2)
         {
            super.update(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §§push(§2"!§.loopingParticleCount > 0);
               if(_loc8_ || param1)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr207:
                        while(true)
                        {
                           §§push(Boolean(param2));
                           if(!(_loc7_ && this))
                           {
                              break;
                           }
                           continue loop6;
                        }
                     }
                     addr206:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§!!l§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§!!l§ = §§pop();
                           loop3:
                           while(this.§!!l§ > 1000 / 60)
                           {
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                              addr153:
                              while(!(_loc7_ && this))
                              {
                                 _loc5_ = 0;
                                 if(_loc8_ || this)
                                 {
                                    if(!(_loc8_ || param2))
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc8_ || param3))
                                    {
                                       continue loop1;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_ >= §2"!§.loopingParticleCount)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             if(!(_loc7_ && param2))
                                             {
                                                break loop3;
                                             }
                                             §§push(param2);
                                             §§push(_loc6_);
                                             §§push(param3);
                                             if(_loc8_ || param1)
                                             {
                                                §§push(§^g§.§5!-§);
                                                if(!_loc7_)
                                                {
                                                   addr74:
                                                   §§push(§§pop() * §§pop());
                                                   §§push(param4);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() * §^g§.§5!-§);
                                                   }
                                                }
                                                §§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,false,true,false,1,true);
                                                loop9:
                                                while(true)
                                                {
                                                   _loc5_++;
                                                   addr55:
                                                   while(_loc7_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr74);
                                             addr108:
                                          }
                                          §§goto(addr55);
                                       }
                                       else
                                       {
                                          _loc6_ = §2"!§.getLoopingParticle(_loc5_);
                                       }
                                       §§goto(addr108);
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr206);
            }
         }
         §§goto(addr133);
      }
   }
}
