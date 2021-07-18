package §'"-§
{
   import §6!^§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §;"I§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.p1 = new b2Vec2();
            while(true)
            {
               this.p2 = new b2Vec2();
               loop1:
               for(; !_loc5_; while(_loc4_ || this)
               {
                  this.p1.SetV(param1);
               })
               {
                  super();
                  loop2:
                  while(true)
                  {
                     if(param1)
                     {
                        continue loop1;
                     }
                     addr35:
                     while(true)
                     {
                        if(param2)
                        {
                           if(_loc4_ || param3)
                           {
                              if(!(_loc4_ || param2))
                              {
                                 continue;
                              }
                              this.p2.SetV(param2);
                           }
                           while(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop1;
                           addr66:
                        }
                        while(true)
                        {
                           this.§;"I§ = param3;
                           if(!(_loc5_ && param2))
                           {
                              break;
                           }
                           §§goto(addr66);
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr35);
         }
      }
   }
}
