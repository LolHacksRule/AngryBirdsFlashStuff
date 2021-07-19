package §,!0§
{
   import §"J§.b2Body;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var § S§;
      
      public var § !T§:b2Body;
      
      public var §import§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.type = b2Joint.§&!Z§;
            while(true)
            {
               this.§ S§ = null;
               while(!_loc2_)
               {
                  this.§ !T§ = null;
                  loop3:
                  while(_loc1_ || _loc2_)
                  {
                     this.§import§ = null;
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
