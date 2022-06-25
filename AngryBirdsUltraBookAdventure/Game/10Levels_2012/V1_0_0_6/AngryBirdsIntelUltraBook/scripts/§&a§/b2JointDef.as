package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §#+§;
      
      public var §0w§:b2Body;
      
      public var §^2§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.type = b2Joint.§9!j§;
               while(true)
               {
                  this.§#+§ = null;
                  addr81:
                  while(_loc2_)
                  {
                     this.§0w§ = null;
                  }
                  continue loop0;
                  addr64:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  this.collideConnected = false;
                  addr71:
                  if(_loc2_ || _loc1_)
                  {
                     addr45:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           this.§^2§ = null;
                           addr62:
                           while(!_loc1_)
                           {
                              §§goto(addr64);
                              §§goto(addr71);
                           }
                           §§goto(addr81);
                           §§goto(addr45);
                        }
                        addr76:
                     }
                     return;
                  }
                  §§goto(addr62);
               }
            }
         }
         §§goto(addr76);
      }
   }
}
