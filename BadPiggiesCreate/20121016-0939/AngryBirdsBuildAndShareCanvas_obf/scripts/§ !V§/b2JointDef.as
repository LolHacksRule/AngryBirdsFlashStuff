package § !V§
{
   import §+S§.b2Body;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §1P§;
      
      public var §@!<§:b2Body;
      
      public var §3j§:b2Body;
      
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
               this.type = b2Joint.§--§;
               addr93:
               while(true)
               {
                  this.§1P§ = null;
               }
               addr34:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         loop2:
         while(true)
         {
            this.§@!<§ = null;
            while(true)
            {
               if(_loc1_)
               {
                  this.§3j§ = null;
                  continue;
               }
               continue loop2;
            }
         }
         §§goto(addr51);
      }
   }
}
