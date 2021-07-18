package §!4§
{
   import §6A§.b2Mat22;
   import §6A§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §!N§:b2Vec2;
      
      public function b2OBB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.R = new b2Mat22();
         }
         loop0:
         do
         {
            this.center = new b2Vec2();
            while(true)
            {
               this.§!N§ = new b2Vec2();
               while(_loc1_)
               {
                  super();
                  if(_loc1_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
