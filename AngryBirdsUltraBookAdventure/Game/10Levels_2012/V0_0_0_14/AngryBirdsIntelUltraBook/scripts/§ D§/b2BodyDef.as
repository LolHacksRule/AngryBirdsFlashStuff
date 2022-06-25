package § D§
{
   import §8>§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^!h§:b2Vec2;
      
      public var §=w§:Number;
      
      public var §#d§:Number;
      
      public var §"v§:Number;
      
      public var §+!&§:Boolean;
      
      public var §+!T§:Boolean;
      
      public var §?!#§:Boolean;
      
      public var §5!f§:Boolean;
      
      public var §=r§:Boolean;
      
      public var §1o§;
      
      public var §^?§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§^!h§ = new b2Vec2();
               while(true)
               {
                  super();
                  loop2:
                  for(; !_loc1_; if(_loc1_ && _loc2_)
                  {
                     continue;
                  },this.§5!f§ = false,loop13:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        this.type = b2Body.b2_staticBody;
                        loop14:
                        while(!(_loc1_ && _loc2_))
                        {
                           addr68:
                           if(!(_loc1_ && this))
                           {
                              this.§=r§ = true;
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    addr46:
                                    if(_loc1_ && _loc1_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop14;
                              }
                              while(true)
                              {
                                 this.angle = 0;
                                 addr171:
                                 while(true)
                                 {
                                    this.§^!h§.Set(0,0);
                                    addr156:
                                    while(true)
                                    {
                                       this.§=w§ = 0;
                                       addr149:
                                       while(true)
                                       {
                                          this.§#d§ = 0;
                                       }
                                       break loop14;
                                    }
                                 }
                                 §§goto(addr46);
                              }
                              addr178:
                           }
                           while(true)
                           {
                              this.§"v§ = 0;
                              break loop14;
                              §§goto(addr68);
                           }
                        }
                        while(true)
                        {
                           if(!(_loc1_ && this))
                           {
                              this.§+!&§ = true;
                              while(true)
                              {
                                 this.§+!T§ = true;
                                 break loop13;
                              }
                              addr127:
                           }
                           break;
                           §§goto(addr61);
                        }
                        addr61:
                        §§goto(addr156);
                     }
                     break;
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        return;
                     }
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr183);
                     addr97:
                  },while(_loc2_)
                  {
                     this.§?!#§ = false;
                     §§goto(addr97);
                  },§§goto(addr149))
                  {
                     this.§1o§ = null;
                     while(true)
                     {
                        this.position.Set(0,0);
                        addr101:
                        if(_loc2_ || _loc1_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
   }
}
