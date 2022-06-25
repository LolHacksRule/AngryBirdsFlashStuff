package §`w§
{
   import §2!+§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §+!+§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §6I§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               addr143:
               while(true)
               {
                  this.shape = null;
               }
               loop5:
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  this.density = 0;
                  while(!_loc1_)
                  {
                     §§push(this.filter);
                     while(true)
                     {
                        §§push(1);
                        addr85:
                        while(true)
                        {
                           §§pop().§`!U§ = §§pop();
                           continue loop5;
                        }
                     }
                  }
                  loop3:
                  while(true)
                  {
                     this.friction = 0.2;
                     while(_loc2_)
                     {
                        this.restitution = 0;
                        continue loop5;
                        loop12:
                        for(; !(_loc1_ && _loc2_); while(_loc2_ || _loc2_)
                        {
                           this.§6I§ = false;
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc2_)
                           {
                              return;
                           }
                           §§goto(addr98);
                        })
                        {
                           if(_loc2_)
                           {
                              addr80:
                              §§push(this.filter);
                              if(_loc2_)
                              {
                                 §§push(0);
                                 if(_loc2_)
                                 {
                                    §§pop().§6L§ = §§pop();
                                    continue;
                                 }
                              }
                              else
                              {
                                 while(!_loc1_)
                                 {
                                    §§push(65535);
                                    §§goto(addr80);
                                 }
                                 §§goto(addr84);
                                 addr55:
                              }
                              while(_loc2_)
                              {
                                 §§pop().§?!^§ = §§pop();
                                 continue loop12;
                              }
                              §§goto(addr85);
                           }
                           else
                           {
                              §§goto(addr143);
                           }
                        }
                     }
                     addr139:
                     while(true)
                     {
                        this.§+!+§ = null;
                        continue loop3;
                     }
                  }
                  addr98:
               }
            }
         }
         §§goto(addr139);
      }
   }
}
