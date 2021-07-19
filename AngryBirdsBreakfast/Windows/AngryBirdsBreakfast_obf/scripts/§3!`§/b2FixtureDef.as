package §3!`§
{
   import §"y§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var userData;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §4F§:Boolean;
      
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
                     this.userData = null;
                     while(true)
                     {
                        this.friction = 0.2;
                        loop4:
                        while(_loc2_ || _loc2_)
                        {
                           this.restitution = 0;
                           loop5:
                           while(true)
                           {
                              this.density = 0;
                              loop6:
                              while(true)
                              {
                                 §§push(this.filter);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§9!W§ = §§pop();
                                       loop9:
                                       while(_loc2_)
                                       {
                                          §§push(this.filter);
                                          loop10:
                                          for(; !_loc1_; while(true)
                                          {
                                             §§push(this.filter);
                                             if(!_loc2_)
                                             {
                                                continue loop10;
                                             }
                                             §§push(0);
                                             if(!_loc1_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§pop().§5!F§ = §§pop();
                                                   while(_loc2_)
                                                   {
                                                      continue loop4;
                                                      this.§4F§ = false;
                                                      if(_loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr81);
                                          },return)
                                          {
                                             §§push(65535);
                                             while(true)
                                             {
                                                §§pop().§`"%§ = §§pop();
                                                addr82:
                                                while(_loc2_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr74);
                        }
                     }
                  }
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr46);
               }
            }
         }
         §§goto(addr84);
      }
   }
}
