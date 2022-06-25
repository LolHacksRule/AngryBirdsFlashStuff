package §8w§
{
   import §;%§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §[n§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
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
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(!param2)
                        {
                           while(true)
                           {
                              this.§[n§ = param3;
                              if(!(_loc5_ || this))
                              {
                                 continue loop2;
                              }
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 continue loop0;
                              }
                           }
                           addr24:
                        }
                        while(_loc5_)
                        {
                           this.p2.SetV(param2);
                           continue loop2;
                        }
                        addr98:
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.p1.SetV(param1);
            §§goto(addr98);
         }
      }
   }
}
