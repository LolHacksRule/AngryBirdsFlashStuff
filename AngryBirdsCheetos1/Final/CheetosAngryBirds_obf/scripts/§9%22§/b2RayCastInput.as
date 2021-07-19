package §9"§
{
   import §0!G§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §7!A§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.p1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.p2 = new b2Vec2();
               while(true)
               {
                  super();
                  continue loop0;
                  loop4:
                  while(_loc5_ || param3)
                  {
                     loop5:
                     while(param2)
                     {
                        if(_loc5_ || param1)
                        {
                           if(!_loc5_)
                           {
                              continue loop4;
                           }
                           if(_loc5_)
                           {
                              addr65:
                              if(_loc4_ && param1)
                              {
                                 continue loop0;
                              }
                              this.p2.SetV(param2);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.p1.SetV(param1);
                                 continue loop4;
                              }
                              addr80:
                           }
                        }
                        while(true)
                        {
                           break loop5;
                        }
                        return;
                     }
                     this.§7!A§ = param3;
                     if(!(_loc5_ || param3))
                     {
                        §§goto(addr76);
                     }
                     §§goto(addr40);
                  }
               }
            }
         }
         §§goto(addr72);
      }
   }
}
