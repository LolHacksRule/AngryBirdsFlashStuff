package §'"E§
{
   import §,"N§.§6"w§;
   import §6!H§.§,#E§;
   import §^#>§.§>f§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import com.angrybirds.§,!q§;
   
   public class § N§ extends §^"`§
   {
       
      
      public function § N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super(§6"w§.§ !p§,§,#E§.§3#I§);
         }
      }
      
      override public function execute() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!(_loc7_ && this))
         {
            §>f§(§,!q§.§9!,§.slingshot).§%"f§();
         }
         §§push(50);
         if(!_loc7_)
         {
            §§push(int(§§pop() + Math.random() * 5));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = 8;
         var _loc3_:Number = 1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            if(_loc4_ >= _loc1_)
            {
               if(!_loc8_)
               {
                  continue;
               }
               if(_loc8_ || _loc2_)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§,!q§.§9!,§.particles);
                     §§push(§ U§.§!%§);
                     §§push(§,!w§.§ !B§);
                     §§push(§ U§.§'# §);
                     §§push(§,!q§.§9!,§.slingshot.x);
                     §§push(§,!q§.§9!,§.slingshot.y);
                     if(_loc8_)
                     {
                        §§push(Math.random() * 6);
                        if(_loc8_ || _loc1_)
                        {
                           addr105:
                           §§push(§§pop() + §§pop());
                           §§push(1250 + Math.random() * 500);
                        }
                        §§push("");
                        §§push(§ U§.§#"P§);
                        §§push(_loc6_);
                        if(_loc8_)
                        {
                           §§push(§§pop() * Math.cos(_loc5_));
                           if(_loc8_)
                           {
                              §§push(_loc3_);
                              if(_loc8_ || this)
                              {
                                 addr142:
                                 §§push(§§pop() * §§pop());
                                 §§push(_loc6_);
                                 if(!_loc7_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() * Math.sin(_loc5_));
                                       if(_loc7_ && _loc2_)
                                       {
                                       }
                                       addr161:
                                       §§push(5);
                                       §§push(_loc6_);
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(§§pop() * 20);
                                       }
                                       §§pop().§;!0§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc3_));
                                       while(!(_loc8_ || _loc2_))
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(0.2);
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue;
                                                }
                                                if(_loc8_ || _loc1_)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(_loc2_);
                                                   }
                                                   §§push(§§pop() + §§pop() * (Math.random() * 0.8));
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                addr244:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop3;
                                                }
                                             }
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                          continue loop1;
                                       }
                                       _loc4_++;
                                       continue loop0;
                                       addr176:
                                    }
                                 }
                                 §§push(§§pop() * _loc3_);
                              }
                              §§goto(addr161);
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr176);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
            }
            §§goto(addr244);
         }
      }
   }
}
