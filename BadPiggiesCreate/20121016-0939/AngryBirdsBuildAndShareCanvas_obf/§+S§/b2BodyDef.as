package §+S§
{
   import §2"=§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §;!k§:b2Vec2;
      
      public var §@n§:Number;
      
      public var §[!E§:Number;
      
      public var §[!u§:Number;
      
      public var §'!H§:Boolean;
      
      public var §54§:Boolean;
      
      public var §4_§:Boolean;
      
      public var §@!§:Boolean;
      
      public var §4!N§:Boolean;
      
      public var §1P§;
      
      public var §7!p§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§;!k§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§1P§ = null;
                     while(true)
                     {
                        this.position.Set(0,0);
                        while(true)
                        {
                           this.angle = 0;
                           while(true)
                           {
                              this.§;!k§.Set(0,0);
                              while(_loc1_ || _loc2_)
                              {
                                 this.§@n§ = 0;
                                 while(true)
                                 {
                                    this.§[!E§ = 0;
                                    continue loop0;
                                    addr91:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       this.type = b2Body.b2_staticBody;
                                       loop15:
                                       while(_loc1_)
                                       {
                                          this.§4!N§ = true;
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr69:
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop15;
                                          }
                                          while(true)
                                          {
                                             this.§4_§ = false;
                                             §§goto(addr113);
                                             §§goto(addr69);
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           this.§54§ = true;
                           §§goto(addr127);
                        }
                        if(!(_loc2_ && this))
                        {
                           return;
                        }
                     }
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     this.§@!§ = false;
                     §§goto(addr89);
                  }
               }
            }
         }
         while(true)
         {
            this.§[!u§ = 0;
            §§goto(addr146);
         }
      }
   }
}
