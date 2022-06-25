package §>!Z§
{
   import §&H§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §%[§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
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
                  do
                  {
                     if(param1)
                     {
                        continue loop0;
                     }
                     addr58:
                     while(true)
                     {
                        if(param2)
                        {
                           if(_loc5_)
                           {
                              addr63:
                              if(_loc4_ && param2)
                              {
                                 continue loop0;
                              }
                              this.p2.SetV(param2);
                           }
                           loop5:
                           while(_loc5_)
                           {
                              while(true)
                              {
                                 this.§%[§ = param3;
                                 if(!(_loc4_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        §§goto(addr29);
                     }
                     continue loop1;
                  }
                  while(!(_loc5_ || param3));
                  
                  return;
               }
            }
         }
         while(true)
         {
            this.p1.SetV(param1);
            §§goto(addr101);
         }
      }
   }
}
