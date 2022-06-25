package §9!"§
{
   import §7!u§.b2internal;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §+!+§;
      
      public var §3x§:b2Body;
      
      public var §8P§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.type = b2Joint.§ `§;
               while(true)
               {
                  this.§+!+§ = null;
                  while(true)
                  {
                     this.§3x§ = null;
                     addr46:
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
                  loop4:
                  while(!(_loc2_ && this))
                  {
                     this.collideConnected = false;
                     if(_loc1_)
                     {
                        addr29:
                        if(_loc1_ || this)
                        {
                           §§goto(addr46);
                        }
                        while(true)
                        {
                           this.§8P§ = null;
                           continue loop4;
                           §§goto(addr29);
                        }
                        return;
                        addr65:
                        addr82:
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
   }
}
