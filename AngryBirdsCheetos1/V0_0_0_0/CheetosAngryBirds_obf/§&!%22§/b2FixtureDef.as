package §&!"§
{
   import §-!C§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §7! §;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §&4§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  while(true)
                  {
                     this.§7! § = null;
                     while(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           this.friction = 0.2;
                           loop4:
                           while(!_loc2_)
                           {
                              this.restitution = 0;
                              loop5:
                              while(true)
                              {
                                 this.density = 0;
                                 loop6:
                                 while(!_loc2_)
                                 {
                                    §§push(this.filter);
                                    while(true)
                                    {
                                       §§push(1);
                                       addr88:
                                       while(true)
                                       {
                                          §§pop().§]@§ = §§pop();
                                          addr89:
                                          while(_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§push(this.filter);
                     loop10:
                     while(true)
                     {
                        §§push(65535);
                        addr65:
                        while(true)
                        {
                           §§pop().§+!0§ = §§pop();
                           addr66:
                           while(!(_loc2_ && _loc1_))
                           {
                              continue loop10;
                           }
                           §§goto(addr89);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
   }
}
