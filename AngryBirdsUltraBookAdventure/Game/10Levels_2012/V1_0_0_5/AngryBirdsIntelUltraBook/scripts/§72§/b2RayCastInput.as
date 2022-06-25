package §72§
{
   import §>H§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §&y§:Number;
      
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
                        while(true)
                        {
                           this.p1.SetV(param1);
                           addr98:
                           while(true)
                           {
                           }
                           addr71:
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!param2)
                        {
                           do
                           {
                              this.§&y§ = param3;
                           }
                           while(!_loc5_);
                           
                           return;
                           addr24:
                        }
                        addr64:
                        if(_loc5_ || param2)
                        {
                           continue loop2;
                        }
                        while(!(_loc4_ && param3))
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr98);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr98);
      }
   }
}
