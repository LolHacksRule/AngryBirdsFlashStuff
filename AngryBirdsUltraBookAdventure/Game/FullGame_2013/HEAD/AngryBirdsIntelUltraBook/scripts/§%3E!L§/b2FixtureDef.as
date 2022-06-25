package §>!L§
{
   import §0!3§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §+!f§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §[!i§:Boolean;
      
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
               while(true)
               {
                  this.shape = null;
                  while(true)
                  {
                     this.§+!f§ = null;
                     continue loop0;
                     addr47:
                     if(_loc2_ || _loc1_)
                     {
                        return;
                        addr54:
                     }
                  }
                  loop12:
                  for(; _loc2_ || _loc1_; if(_loc1_ && _loc1_)
                  {
                     continue;
                  },§§goto(addr47))
                  {
                     addr112:
                     §§push(this.filter);
                     if(_loc2_ || _loc2_)
                     {
                        addr65:
                        if(_loc2_ || this)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              §§pop().§4U§ = §§pop();
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    addr88:
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(this.filter);
                                       addr116:
                                       while(true)
                                       {
                                          §§push(1);
                                          addr117:
                                          while(true)
                                          {
                                             §§pop().§4!<§ = §§pop();
                                          }
                                          §§goto(addr65);
                                       }
                                       §§goto(addr88);
                                    }
                                    addr130:
                                 }
                                 addr118:
                                 addr135:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    §§push(this.filter);
                                    while(true)
                                    {
                                       §§push(65535);
                                       §§goto(addr112);
                                    }
                                 }
                                 addr157:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    this.density = 0;
                                    §§goto(addr130);
                                    §§goto(addr118);
                                 }
                                 while(true)
                                 {
                                    this.restitution = 0;
                                    §§goto(addr135);
                                 }
                              }
                              continue loop0;
                           }
                           while(!_loc1_)
                           {
                              §§pop().§"!`§ = §§pop();
                              continue loop12;
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr101);
                  }
               }
            }
         }
         §§goto(addr54);
      }
   }
}
