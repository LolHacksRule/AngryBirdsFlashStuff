package §%t§
{
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §?!X§;
      
      public var §^!G§:b2Body;
      
      public var §-z§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               this.type = b2Joint.§ !"§;
               while(_loc1_)
               {
                  this.§?!X§ = null;
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     this.§^!G§ = null;
                     while(true)
                     {
                        this.§-z§ = null;
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.collideConnected = false;
                              if(_loc1_ || this)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
   }
}
