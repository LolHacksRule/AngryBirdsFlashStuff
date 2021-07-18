package §%4§
{
   import §<!a§.b2Mat22;
   import §<!a§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §>I§:b2Vec2;
      
      public function b2OBB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.R = new b2Mat22();
            loop0:
            while(true)
            {
               this.center = new b2Vec2();
               loop1:
               do
               {
                  this.§>I§ = new b2Vec2();
                  while(!_loc2_)
                  {
                     super();
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc1_);
               
            }
         }
      }
   }
}
