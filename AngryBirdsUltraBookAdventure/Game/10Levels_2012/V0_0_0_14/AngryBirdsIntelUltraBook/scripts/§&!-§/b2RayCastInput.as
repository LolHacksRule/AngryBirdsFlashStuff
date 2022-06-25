package §&!-§
{
   import §8>§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §%!I§:Number;
      
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
                  while(_loc5_)
                  {
                     if(param1)
                     {
                        while(true)
                        {
                           this.p1.SetV(param1);
                           addr91:
                           while(true)
                           {
                           }
                        }
                        addr87:
                     }
                     while(true)
                     {
                        if(param2)
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(!(_loc5_ || param3))
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              this.p2.SetV(param2);
                           }
                           while(!_loc4_)
                           {
                           }
                           §§goto(addr87);
                           addr81:
                        }
                        while(true)
                        {
                           this.§%!I§ = param3;
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr81);
                        }
                        if(!_loc4_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
   }
}
