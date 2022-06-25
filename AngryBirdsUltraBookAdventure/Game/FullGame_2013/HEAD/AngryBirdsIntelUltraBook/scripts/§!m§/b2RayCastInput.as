package §!m§
{
   import §>!8§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §-Q§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.p1 = new b2Vec2();
            while(true)
            {
               this.p2 = new b2Vec2();
               loop1:
               for(; _loc5_ || this; if(_loc4_ && param3)
               {
                  continue;
               },this.p1.SetV(param1),§§goto(addr100))
               {
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(param1));
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && param2))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           addr38:
                           while(true)
                           {
                              §§push(Boolean(param2));
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop())
                                 {
                                    addr49:
                                    while(!_loc4_)
                                    {
                                       this.p2.SetV(param2);
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop3;
                                    addr49:
                                 }
                                 while(true)
                                 {
                                    this.§-Q§ = param3;
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr49);
                                 }
                                 return;
                              }
                              break;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
   }
}
