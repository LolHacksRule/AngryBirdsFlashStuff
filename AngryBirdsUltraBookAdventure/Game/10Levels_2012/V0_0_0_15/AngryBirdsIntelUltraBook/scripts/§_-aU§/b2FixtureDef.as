package §_-aU§
{
   import §_-03n§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-05u§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-bz§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               addr162:
               while(true)
               {
                  this.shape = null;
                  loop2:
                  while(true)
                  {
                     this.§_-05u§ = null;
                     loop3:
                     while(true)
                     {
                        this.friction = 0.2;
                        addr148:
                        while(true)
                        {
                           this.restitution = 0;
                           loop5:
                           while(_loc1_)
                           {
                              this.density = 0;
                              while(_loc1_)
                              {
                                 while(_loc1_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr101);
         }
      }
   }
}
