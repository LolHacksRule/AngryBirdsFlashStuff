package §^9§
{
   import §6Z§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §]!4§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
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
                     if(!param1)
                     {
                        while(true)
                        {
                           if(!param2)
                           {
                              do
                              {
                                 this.§]!4§ = param3;
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                              }
                              while(_loc5_ && param2);
                              
                              return;
                              addr28:
                              addr41:
                           }
                           loop6:
                           while(true)
                           {
                              if(_loc4_ || param3)
                              {
                                 addr52:
                                 if(_loc4_ || this)
                                 {
                                    this.p2.SetV(param2);
                                    continue loop1;
                                 }
                                 addr84:
                                 while(true)
                                 {
                                    this.p1.SetV(param1);
                                    break loop6;
                                    §§goto(addr52);
                                 }
                              }
                              break;
                              §§goto(addr34);
                           }
                           while(_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        addr42:
                     }
                     §§goto(addr84);
                  }
               }
            }
         }
         §§goto(addr41);
      }
   }
}
