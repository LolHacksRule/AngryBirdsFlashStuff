package §!§
{
   import §@!E§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §9!Y§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.p1 = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.p2 = new b2Vec2();
            loop1:
            while(true)
            {
               super();
               loop2:
               for(; !_loc5_; if(_loc4_)
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  continue loop1;
               })
               {
                  if(param1)
                  {
                     if(_loc4_)
                     {
                        this.p1.SetV(param1);
                     }
                     while(true)
                     {
                     }
                     addr75:
                  }
                  loop4:
                  while(true)
                  {
                     if(param2)
                     {
                        while(true)
                        {
                           this.p2.SetV(param2);
                           addr63:
                           while(!_loc5_)
                           {
                           }
                           continue loop4;
                        }
                        addr59:
                     }
                     while(true)
                     {
                        this.§9!Y§ = param3;
                        if(_loc4_ || param3)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr63);
                     }
                     continue loop2;
                  }
               }
               continue loop0;
            }
         }
      }
   }
}
