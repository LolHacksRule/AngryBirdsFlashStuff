package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §'!n§:b2Body;
      
      public var § 5§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.type = b2Joint.§?!j§;
               while(_loc1_)
               {
                  this.userData = null;
                  loop2:
                  while(_loc1_)
                  {
                     this.§'!n§ = null;
                     loop3:
                     while(true)
                     {
                        this.§ 5§ = null;
                        do
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        while(this.collideConnected = false, _loc2_);
                        
                     }
                  }
               }
            }
         }
      }
   }
}
