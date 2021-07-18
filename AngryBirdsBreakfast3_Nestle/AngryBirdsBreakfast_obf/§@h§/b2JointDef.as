package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §9!w§:b2Body;
      
      public var §>!W§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            while(true)
            {
               this.type = b2Joint.§7&§;
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  this.userData = null;
                  while(true)
                  {
                     this.§9!w§ = null;
                     while(_loc2_ || _loc1_)
                     {
                        this.§>!W§ = null;
                        loop4:
                        while(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 this.collideConnected = false;
                                 if(!(_loc1_ && this))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
   }
}
