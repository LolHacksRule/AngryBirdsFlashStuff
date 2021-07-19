package §`j§
{
   import §0!G§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^!T§:b2Vec2;
      
      public var §6s§:Number;
      
      public var §+!9§:Number;
      
      public var §?!'§:Number;
      
      public var §9W§:Boolean;
      
      public var §0-§:Boolean;
      
      public var §<K§:Boolean;
      
      public var §<!;§:Boolean;
      
      public var §3?§:Boolean;
      
      public var §4!E§;
      
      public var §'!>§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§^!T§ = new b2Vec2();
            }
            addr220:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            while(true)
            {
               this.§4!E§ = null;
               loop3:
               while(true)
               {
                  this.position.Set(0,0);
                  loop4:
                  while(true)
                  {
                     this.angle = 0;
                     loop5:
                     while(_loc2_)
                     {
                        this.§^!T§.Set(0,0);
                        loop6:
                        while(_loc2_)
                        {
                           this.§6s§ = 0;
                           while(true)
                           {
                              this.§+!9§ = 0;
                              do
                              {
                                 this.§?!'§ = 0;
                                 continue loop4;
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              if(!_loc1_)
                              {
                                 return;
                              }
                              continue loop6;
                           }
                        }
                        continue loop3;
                        addr114:
                        if(!(_loc1_ && _loc2_))
                        {
                           this.§<!;§ = false;
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 this.type = b2Body.b2_staticBody;
                                 continue loop1;
                              }
                              addr112:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr114);
                                 }
                                 else
                                 {
                                    §§goto(addr167);
                                 }
                              }
                              continue loop5;
                           }
                           continue loop2;
                           addr88:
                        }
                     }
                     §§goto(addr220);
                  }
               }
            }
         }
      }
   }
}
