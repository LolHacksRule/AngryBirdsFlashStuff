package §55§
{
   import §#]§.b2Mat22;
   import §#]§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §-!o§:b2Vec2;
      
      public function b2OBB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.R = new b2Mat22();
         }
         do
         {
            this.center = new b2Vec2();
            do
            {
               this.§-!o§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || this));
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
   }
}
