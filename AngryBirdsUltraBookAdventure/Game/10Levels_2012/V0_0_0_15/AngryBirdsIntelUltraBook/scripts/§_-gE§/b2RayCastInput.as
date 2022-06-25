package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §_-r9§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.p1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.p2 = new b2Vec2();
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     if(param1)
                     {
                        continue;
                     }
                     addr38:
                     while(true)
                     {
                        if(param2)
                        {
                           addr41:
                           while(_loc5_)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue loop2;
                              }
                              this.p2.SetV(param2);
                              while(true)
                              {
                              }
                           }
                           continue loop0;
                           addr41:
                        }
                        while(true)
                        {
                           this.§_-r9§ = param3;
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr41);
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
