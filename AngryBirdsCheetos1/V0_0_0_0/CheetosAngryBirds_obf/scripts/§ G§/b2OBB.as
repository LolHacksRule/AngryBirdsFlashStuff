package § G§
{
   import §9"§.b2Mat22;
   import §9"§.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var §1J§:b2Vec2;
      
      public function b2OBB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.R = new b2Mat22();
            while(true)
            {
               this.center = new b2Vec2();
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§1J§ = new b2Vec2();
            do
            {
               super();
            }
            while(!_loc2_);
            
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
