package §3c§
{
   import §9t§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §7"?§:Number;
      
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
                  while(true)
                  {
                     if(param1)
                     {
                        if(_loc5_ || param3)
                        {
                           this.p1.SetV(param1);
                        }
                        while(!_loc4_)
                        {
                           if(_loc5_ || param1)
                           {
                              return;
                           }
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        if(param2)
                        {
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§7"?§ = param3;
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr30);
                           addr24:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.p2.SetV(param2);
            §§goto(addr59);
         }
      }
   }
}
