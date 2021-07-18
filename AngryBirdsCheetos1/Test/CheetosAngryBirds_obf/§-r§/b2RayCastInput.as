package §-r§
{
   import §6!H§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §0`§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
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
                     if(param1)
                     {
                        while(_loc5_)
                        {
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           this.p1.SetV(param1);
                           while(true)
                           {
                           }
                        }
                        continue loop1;
                        addr70:
                     }
                     while(true)
                     {
                        if(param2)
                        {
                           while(_loc5_)
                           {
                              this.p2.SetV(param2);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr70);
                              }
                              continue loop2;
                              if(_loc5_)
                              {
                                 return;
                                 addr52:
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           this.§0`§ = param3;
                           if(!(_loc4_ && param2))
                           {
                              §§goto(addr40);
                           }
                           §§goto(addr62);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
   }
}
