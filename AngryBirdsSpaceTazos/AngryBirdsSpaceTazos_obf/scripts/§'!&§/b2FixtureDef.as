package §'!&§
{
   import §,Z§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §!!%§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §!!h§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               addr158:
               while(true)
               {
                  this.shape = null;
               }
               loop4:
               while(true)
               {
                  if(_loc1_ && this)
                  {
                     continue loop0;
                  }
                  this.restitution = 0;
                  loop5:
                  while(true)
                  {
                     this.density = 0;
                     loop6:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop5;
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        addr110:
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this.filter);
                           loop7:
                           while(true)
                           {
                              §§push(1);
                              addr91:
                              while(true)
                              {
                                 §§pop().§ #§ = §§pop();
                                 addr92:
                                 addr154:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr94:
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          break;
                                       }
                                       §§push(this.filter);
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    this.§!!%§ = null;
                                    §§goto(addr94);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.friction = 0.2;
                           break loop6;
                           §§goto(addr110);
                        }
                     }
                     continue loop4;
                  }
               }
               §§goto(addr158);
            }
         }
         §§goto(addr154);
      }
   }
}
