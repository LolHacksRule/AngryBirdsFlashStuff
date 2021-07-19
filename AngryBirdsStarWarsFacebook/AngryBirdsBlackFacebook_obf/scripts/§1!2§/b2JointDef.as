package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §@"g§;
      
      public var §9"P§:b2Body;
      
      public var §continue§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.type = b2Joint.§+!o§;
               loop1:
               while(true)
               {
                  this.§@"g§ = null;
                  while(_loc1_)
                  {
                     this.§9"P§ = null;
                     while(_loc1_)
                     {
                        this.§continue§ = null;
                        loop4:
                        while(!_loc2_)
                        {
                           continue loop1;
                           while(true)
                           {
                              this.collideConnected = false;
                              if(!(_loc2_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
   }
}
