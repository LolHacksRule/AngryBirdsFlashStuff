package §+S§
{
   import §"!9§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §1P§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §1!P§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  loop2:
                  while(true)
                  {
                     this.§1P§ = null;
                     loop3:
                     while(true)
                     {
                        this.friction = 0.2;
                        loop4:
                        while(!_loc1_)
                        {
                           this.restitution = 0;
                           while(_loc2_)
                           {
                              this.density = 0;
                              loop6:
                              while(_loc2_ || _loc1_)
                              {
                                 §§push(this.filter);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§?!C§ = §§pop();
                                       loop9:
                                       while(!_loc1_)
                                       {
                                          §§push(this.filter);
                                          loop10:
                                          while(!_loc1_)
                                          {
                                             §§push(65535);
                                             while(!(_loc1_ && _loc1_))
                                             {
                                                §§pop().§!!R§ = §§pop();
                                                while(!_loc1_)
                                                {
                                                   continue loop1;
                                                   §§pop().§[-§ = §§pop();
                                                   do
                                                   {
                                                      this.§1!P§ = false;
                                                   }
                                                   while(_loc1_ && this);
                                                   
                                                   if(!_loc1_)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop4;
                                                if(_loc1_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr70);
                                             }
                                             continue loop8;
                                             while(true)
                                             {
                                                §§push(this.filter);
                                                if(_loc1_ && this)
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr62);
                                             }
                                             return;
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
   }
}
