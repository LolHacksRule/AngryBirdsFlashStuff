package § D§
{
   import §0!'§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §1o§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var each:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.filter = new b2FilterData();
            while(true)
            {
               super();
               loop1:
               for(; !_loc2_; while(_loc1_ || _loc2_)
               {
                  §§goto(addr117);
                  §§push(this.filter);
                  §§goto(addr97);
               })
               {
                  this.shape = null;
                  while(true)
                  {
                     this.§1o§ = null;
                     loop3:
                     while(true)
                     {
                        this.friction = 0.2;
                        while(true)
                        {
                           this.restitution = 0;
                           addr146:
                           while(true)
                           {
                              this.density = 0;
                              continue loop1;
                           }
                           addr106:
                           if(!(_loc2_ && this))
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(this.filter);
                                 if(_loc1_ || this)
                                 {
                                    §§push(0);
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop().§6!e§ = §§pop();
                                          do
                                          {
                                             this.each = false;
                                          }
                                          while(!(_loc1_ || _loc2_));
                                          
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc1_ || this)
                                             {
                                                continue loop3;
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.filter);
                                                addr93:
                                                addr117:
                                                while(!_loc2_)
                                                {
                                                   §§push(65535);
                                                   while(true)
                                                   {
                                                      §§pop().§,9§ = §§pop();
                                                   }
                                                   continue loop13;
                                                }
                                                while(true)
                                                {
                                                   §§push(1);
                                                   addr118:
                                                   while(true)
                                                   {
                                                      §§pop().§ H§ = §§pop();
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                          while(_loc1_ || _loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr106);
                                             }
                                             else
                                             {
                                                §§goto(addr146);
                                             }
                                          }
                                          continue loop1;
                                          addr97:
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr93);
                              }
                              return;
                              addr62:
                              addr113:
                           }
                        }
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr113);
      }
   }
}
