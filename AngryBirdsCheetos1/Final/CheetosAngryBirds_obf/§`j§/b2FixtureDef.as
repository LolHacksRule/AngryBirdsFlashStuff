package §`j§
{
   import §&U§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §4!E§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §0!N§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.shape = null;
                  loop2:
                  for(; !(_loc1_ && _loc1_); loop4:
                  for(; _loc2_ || _loc1_; loop10:
                  while(_loc2_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        §§push(this.filter);
                        loop11:
                        for(; _loc2_; while(true)
                        {
                           §§push(this.filter);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr62);
                           §§goto(addr71);
                        })
                        {
                           §§push(65535);
                           while(!_loc1_)
                           {
                              §§pop().§&!8§ = §§pop();
                              continue loop11;
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().§4g§ = §§pop();
                                 while(!_loc1_)
                                 {
                                    this.§0!N§ = false;
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop10;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr113);
                                 }
                                 continue loop11;
                                 addr71:
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        §§goto(addr137);
                     }
                  })
                  {
                     this.restitution = 0;
                     while(true)
                     {
                        this.density = 0;
                        addr113:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              §§push(this.filter);
                              addr97:
                              while(true)
                              {
                                 §§push(1);
                                 addr98:
                                 while(true)
                                 {
                                    §§pop().§^-§ = §§pop();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  })
                  {
                     this.§4!E§ = null;
                     while(true)
                     {
                        this.friction = 0.2;
                        continue loop2;
                     }
                  }
               }
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
         §§goto(addr115);
      }
   }
}
