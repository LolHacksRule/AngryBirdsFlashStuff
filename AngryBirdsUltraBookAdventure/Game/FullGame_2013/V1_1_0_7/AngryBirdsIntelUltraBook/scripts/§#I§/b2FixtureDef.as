package §#I§
{
   import §3b§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §]!=§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §^$§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.filter = new b2FilterData();
            while(true)
            {
               super();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  this.shape = null;
                  loop2:
                  while(true)
                  {
                     this.§]!=§ = null;
                     while(true)
                     {
                        this.friction = 0.2;
                        while(!_loc1_)
                        {
                           this.restitution = 0;
                           loop5:
                           while(!(_loc1_ && _loc2_))
                           {
                              this.density = 0;
                              loop6:
                              while(true)
                              {
                                 §§push(this.filter);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr98:
                                    addr84:
                                    loop10:
                                    for(; !(_loc1_ && this); while(true)
                                    {
                                       §§push(this.filter);
                                       if(_loc1_ && this)
                                       {
                                          continue loop10;
                                       }
                                       §§push(0);
                                       if(!_loc1_)
                                       {
                                          if(_loc1_ && _loc1_)
                                          {
                                             break;
                                          }
                                          §§pop().§"!7§ = §§pop();
                                          while(!_loc1_)
                                          {
                                             this.§^$§ = false;
                                             if(_loc1_)
                                             {
                                                continue;
                                             }
                                             if(!_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr99);
                                          }
                                          continue;
                                       }
                                       §§goto(addr92);
                                    },§§goto(addr98))
                                    {
                                       §§push(65535);
                                       while(true)
                                       {
                                          §§pop().§?!K§ = §§pop();
                                          continue loop10;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().§[!k§ = §§pop();
                                       addr99:
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr46:
               }
            }
         }
         §§goto(addr46);
      }
   }
}
