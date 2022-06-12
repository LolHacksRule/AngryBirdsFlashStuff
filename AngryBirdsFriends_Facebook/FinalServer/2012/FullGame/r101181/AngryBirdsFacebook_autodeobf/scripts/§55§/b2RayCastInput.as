package §55§
{
   import §#]§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §,!§:Number;
      
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
                  for(; !(_loc4_ && param3); while(_loc5_ || this)
                  {
                     while(true)
                     {
                        this.p1.SetV(param1);
                        §§goto(addr101);
                     }
                  })
                  {
                     if(!param1)
                     {
                        loop4:
                        while(true)
                        {
                           if(param2)
                           {
                              if(_loc5_ || param3)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              addr76:
                              while(true)
                              {
                              }
                              addr76:
                           }
                           while(true)
                           {
                              this.§,!§ = param3;
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr76);
                           }
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           addr101:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
   }
}
