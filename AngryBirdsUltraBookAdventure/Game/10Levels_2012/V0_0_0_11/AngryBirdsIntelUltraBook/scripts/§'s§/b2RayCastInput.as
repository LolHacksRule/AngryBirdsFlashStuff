package §'s§
{
   import §&L§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §>x§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.p1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.p2 = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(param1));
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(Boolean(param2));
                              if(!_loc4_)
                              {
                                 break;
                                 addr72:
                              }
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 addr23:
                                 while(true)
                                 {
                                    this.§>x§ = param3;
                                    if(_loc4_ || param2)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr23:
                              }
                              while(true)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr23);
                              }
                              continue loop2;
                           }
                           continue;
                           addr42:
                        }
                        while(true)
                        {
                           this.p1.SetV(param1);
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.p2.SetV(param2);
            §§goto(addr72);
         }
      }
   }
}
