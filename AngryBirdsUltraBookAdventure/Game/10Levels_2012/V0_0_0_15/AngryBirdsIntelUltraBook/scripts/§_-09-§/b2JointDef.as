package §_-09-§
{
   import §_-5§.b2internal;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-05u§;
      
      public var §_-ZR§:b2Body;
      
      public var §_-7b§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            while(true)
            {
               this.type = b2Joint.§_-fY§;
               while(_loc2_ || _loc2_)
               {
                  this.§_-ZR§ = null;
                  loop3:
                  while(_loc2_ || _loc1_)
                  {
                     addr74:
                     if(_loc2_ || _loc2_)
                     {
                        this.§_-7b§ = null;
                        while(_loc2_)
                        {
                           this.collideConnected = false;
                           if(_loc2_)
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     addr99:
                     while(true)
                     {
                        this.§_-05u§ = null;
                        break loop3;
                        §§goto(addr74);
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
   }
}
