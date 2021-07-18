package §"J§
{
   import §2k§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var § S§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §]K§:Boolean;
      
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
               while(true)
               {
                  this.shape = null;
                  while(!_loc1_)
                  {
                     this.§ S§ = null;
                     while(true)
                     {
                        this.friction = 0.2;
                        loop4:
                        while(true)
                        {
                           this.restitution = 0;
                           while(true)
                           {
                              this.density = 0;
                              continue loop4;
                              addr35:
                              if(_loc2_ || _loc1_)
                              {
                                 return;
                                 addr42:
                              }
                           }
                        }
                        while(_loc2_ || _loc2_)
                        {
                           continue loop0;
                        }
                     }
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr80);
      }
   }
}
