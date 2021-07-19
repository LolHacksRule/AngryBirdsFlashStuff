package §^9§
{
   import §6Z§.b2Mat22;
   import §6Z§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §?G§:b2Vec2;
      
      public function b2OBB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.R = new b2Mat22();
            while(true)
            {
               this.center = new b2Vec2();
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     this.§?G§ = new b2Vec2();
                     do
                     {
                        super();
                     }
                     while(_loc1_);
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
   }
}
