package §5!o§
{
   import §2"=§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §8"!§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
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
                        continue;
                     }
                     loop5:
                     while(true)
                     {
                        if(param2)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc5_)
                              {
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop1;
                                 addr90:
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              this.p2.SetV(param2);
                           }
                           loop6:
                           while(true)
                           {
                              addr28:
                              addr39:
                              while(true)
                              {
                                 this.§8"!§ = param3;
                                 if(_loc4_ || param1)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              if(_loc4_ || this)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr28);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr92);
      }
   }
}
