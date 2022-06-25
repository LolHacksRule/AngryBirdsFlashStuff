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
         if(_loc2_)
         {
            this.filter = new b2FilterData();
            while(true)
            {
               super();
               addr163:
               while(true)
               {
                  this.shape = null;
                  loop2:
                  while(true)
                  {
                     this.§]!=§ = null;
                     addr154:
                     while(true)
                     {
                        this.friction = 0.2;
                        continue loop2;
                     }
                  }
               }
            }
            addr168:
         }
         loop6:
         while(true)
         {
            §§push(this.filter);
            while(true)
            {
               §§push(1);
               addr116:
               while(true)
               {
                  §§pop().§[!k§ = §§pop();
                  addr117:
                  while(true)
                  {
                     §§push(this.filter);
                     loop10:
                     while(true)
                     {
                        §§push(65535);
                        addr106:
                        while(true)
                        {
                           §§pop().§?!K§ = §§pop();
                           addr107:
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop10;
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr142);
                        }
                     }
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§push(0);
               if(!(_loc1_ && _loc1_))
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop().§"!7§ = §§pop();
                     for(; !(_loc1_ && _loc2_); this.§^$§ = false,if(_loc1_ && this)
                     {
                        continue;
                     },if(_loc2_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop6;
                        }
                        §§goto(addr44);
                     }
                     else
                     {
                        §§goto(addr117);
                     })
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr116);
               }
               §§goto(addr106);
            }
         }
      }
   }
}
