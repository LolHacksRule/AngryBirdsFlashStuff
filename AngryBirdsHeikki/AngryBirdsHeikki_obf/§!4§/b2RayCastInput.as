package §!4§
{
   import §6A§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §!!O§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
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
                        loop3:
                        while(true)
                        {
                           this.p1.SetV(param1);
                           addr92:
                           while(true)
                           {
                           }
                           addr63:
                           while(true)
                           {
                              if(!(_loc5_ && param3))
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        if(!param2)
                        {
                           do
                           {
                              this.§!!O§ = param3;
                           }
                           while(_loc5_);
                           
                           if(!_loc5_)
                           {
                              return;
                              addr36:
                           }
                           continue loop0;
                           addr28:
                        }
                        if(!(_loc5_ && param2))
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           this.p2.SetV(param2);
                        }
                        §§goto(addr63);
                     }
                  }
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr28);
               }
            }
         }
         §§goto(addr36);
      }
   }
}
