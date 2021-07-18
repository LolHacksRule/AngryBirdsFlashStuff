package §%4§
{
   import §<!a§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §"!7§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.p1 = new b2Vec2();
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
                     if(param1)
                     {
                        if(_loc4_ || this)
                        {
                           while(true)
                           {
                              this.p1.SetV(param1);
                           }
                           addr88:
                        }
                        while(true)
                        {
                           addr70:
                           loop5:
                           while(!(_loc5_ && param1))
                           {
                              while(true)
                              {
                                 this.§"!7§ = param3;
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              if(!_loc5_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                        }
                        addr92:
                     }
                     while(true)
                     {
                        if(param2)
                        {
                           if(!(_loc5_ && this))
                           {
                              continue loop2;
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr28);
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
   }
}
