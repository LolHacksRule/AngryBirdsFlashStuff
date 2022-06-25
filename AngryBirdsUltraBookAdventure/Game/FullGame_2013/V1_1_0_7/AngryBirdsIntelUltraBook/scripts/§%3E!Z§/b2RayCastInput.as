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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
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
                        while(true)
                        {
                           this.p1.SetV(param1);
                           addr100:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        addr96:
                     }
                     while(true)
                     {
                        if(!param2)
                        {
                           do
                           {
                              this.§%[§ = param3;
                           }
                           while(!_loc4_);
                           
                           continue loop2;
                           addr28:
                        }
                        if(_loc4_)
                        {
                           this.p2.SetV(param2);
                        }
                        while(!(_loc5_ && param2))
                        {
                           if(_loc4_ || param1)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr100);
                     }
                     continue loop0;
                  }
                  while(_loc5_ && param2);
                  
                  return;
               }
            }
         }
         §§goto(addr96);
      }
   }
}
