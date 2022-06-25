package §#V§
{
   import §,C§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §#+§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §>'§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
                     this.§#+§ = null;
                     while(true)
                     {
                        this.friction = 0.2;
                        continue loop2;
                        addr103:
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        addr110:
                        §§push(this.filter);
                        if(_loc2_ || _loc1_)
                        {
                           addr46:
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(0);
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    §§pop().§^b§ = §§pop();
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             §§goto(addr103);
                                          }
                                          addr116:
                                          while(_loc2_)
                                          {
                                             §§push(this.filter);
                                             while(true)
                                             {
                                                §§push(65535);
                                                addr93:
                                                while(true)
                                                {
                                                   §§pop().§'!7§ = §§pop();
                                                   continue loop12;
                                                }
                                                §§goto(addr110);
                                             }
                                          }
                                          continue loop2;
                                       }
                                       addr128:
                                       while(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(this.filter);
                                       addr114:
                                       while(true)
                                       {
                                          §§push(1);
                                          §§goto(addr46);
                                       }
                                    }
                                    addr123:
                                 }
                                 while(true)
                                 {
                                    §§pop().§8K§ = §§pop();
                                    §§goto(addr116);
                                 }
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
   }
}
