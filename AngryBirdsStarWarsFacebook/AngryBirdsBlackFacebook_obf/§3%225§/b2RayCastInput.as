package §3"5§
{
   import §[R§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §%#8§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
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
                  for(; !(_loc5_ && param1); if(!(_loc4_ || this))
                  {
                     continue;
                  },this.p2.SetV(param2),while(true)
                  {
                     §§goto(addr28);
                  })
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     if(param1)
                     {
                        while(true)
                        {
                           this.p1.SetV(param1);
                           addr88:
                           while(true)
                           {
                           }
                        }
                        addr84:
                     }
                     while(true)
                     {
                        if(!param2)
                        {
                           do
                           {
                              this.§%#8§ = param3;
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                           }
                           while(!(_loc4_ || this));
                           
                           return;
                           addr28:
                        }
                        while(!(_loc5_ && param3))
                        {
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           §§goto(addr84);
                           §§goto(addr39);
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
   }
}
