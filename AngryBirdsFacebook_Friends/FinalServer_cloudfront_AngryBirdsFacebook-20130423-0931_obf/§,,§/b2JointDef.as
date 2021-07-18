package §,,§
{
   import §,"[§.b2internal;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §-!"§;
      
      public var §`y§:b2Body;
      
      public var §8!7§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.type = b2Joint.§;!$§;
            loop1:
            while(true)
            {
               this.§-!"§ = null;
               while(true)
               {
                  this.§`y§ = null;
                  loop3:
                  while(_loc1_ || this)
                  {
                     if(_loc1_)
                     {
                        this.§8!7§ = null;
                        while(_loc1_)
                        {
                           this.collideConnected = false;
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
