package §3!`§
{
   import §6Z§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §`'§:b2Vec2;
      
      public var §>!f§:Number;
      
      public var §94§:Number;
      
      public var §&!&§:Number;
      
      public var §?!n§:Boolean;
      
      public var §5!5§:Boolean;
      
      public var §6"-§:Boolean;
      
      public var §6!D§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §<!x§:Number;
      
      public var §3]§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§`'§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.userData = null;
                     loop3:
                     while(true)
                     {
                        this.position.Set(0,0);
                        loop4:
                        while(true)
                        {
                           this.angle = 0;
                           loop5:
                           while(true)
                           {
                              this.§`'§.Set(0,0);
                              while(!_loc1_)
                              {
                                 this.§>!f§ = 0;
                                 continue loop0;
                                 loop11:
                                 while(!(_loc1_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop2;
                                    }
                                    this.§6"-§ = false;
                                    loop12:
                                    while(true)
                                    {
                                       this.§6!D§ = false;
                                       addr114:
                                       addr145:
                                       while(_loc2_ || this)
                                       {
                                          this.type = b2Body.b2_staticBody;
                                          while(_loc2_)
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                this.active = true;
                                                while(_loc2_)
                                                {
                                                   continue loop4;
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      addr42:
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         return;
                                                         addr49:
                                                      }
                                                      else
                                                      {
                                                         addr162:
                                                      }
                                                      while(_loc2_ || _loc2_)
                                                      {
                                                         this.§&!&§ = 0;
                                                         continue loop3;
                                                         §§goto(addr42);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                continue loop5;
                                                addr75:
                                             }
                                             continue loop3;
                                          }
                                          continue loop11;
                                          if(_loc2_ || _loc1_)
                                          {
                                             continue loop12;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§5!5§ = true;
                                          continue loop11;
                                          §§goto(addr114);
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
