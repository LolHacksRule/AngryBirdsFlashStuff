package §2!'§
{
   import §#I§.b2Body;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §]!=§;
      
      public var §19§:b2Body;
      
      public var §"@§:b2Body;
      
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
               this.type = b2Joint.§'2§;
               loop1:
               while(true)
               {
                  this.§]!=§ = null;
                  while(true)
                  {
                     this.§19§ = null;
                     while(_loc2_ || this)
                     {
                        continue loop1;
                        loop4:
                        while(_loc2_ || _loc2_)
                        {
                           continue loop0;
                           while(true)
                           {
                              this.collideConnected = false;
                              if(!(_loc1_ && _loc2_))
                              {
                                 break;
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
         §§goto(addr64);
      }
   }
}
