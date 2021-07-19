package §0"!§
{
   import §@!E§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%!7§:b2Vec2;
      
      public var §9!A§:Number;
      
      public var §>"#§:Number;
      
      public var §7e§:Number;
      
      public var §`",§:Boolean;
      
      public var §0!z§:Boolean;
      
      public var §3"2§:Boolean;
      
      public var §5!J§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §#!A§:Number;
      
      public var §,?§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§%!7§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.userData = null;
                     while(true)
                     {
                        this.position.Set(0,0);
                        addr192:
                        while(true)
                        {
                           this.angle = 0;
                        }
                        while(_loc2_ || _loc1_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                           loop10:
                           for(; _loc2_ || _loc1_; while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 this.type = b2Body.b2_staticBody;
                                 continue;
                              }
                              continue loop10;
                           },loop6:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 this.§9!A§ = 0;
                                 break loop10;
                              }
                              addr185:
                              while(true)
                              {
                                 this.§%!7§.Set(0,0);
                                 continue loop6;
                              }
                           })
                           {
                              this.§0!z§ = true;
                              while(_loc2_ || this)
                              {
                                 this.§3"2§ = false;
                                 while(true)
                                 {
                                    this.§5!J§ = false;
                                    continue loop10;
                                 }
                                 loop15:
                                 while(_loc2_ || _loc1_)
                                 {
                                    this.§#!A§ = 1;
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          addr71:
                                          while(!(_loc1_ && this))
                                          {
                                             if(!_loc1_)
                                             {
                                                this.active = true;
                                                continue loop15;
                                             }
                                             §§goto(addr99);
                                          }
                                          continue loop10;
                                       }
                                       continue loop15;
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              while(_loc2_ || this)
                              {
                                 this.§`",§ = true;
                                 continue loop10;
                                 §§goto(addr114);
                              }
                              addr114:
                              while(true)
                              {
                                 this.§7e§ = 0;
                                 §§goto(addr138);
                              }
                              addr138:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr185);
      }
   }
}
