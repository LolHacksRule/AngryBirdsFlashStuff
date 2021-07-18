package §"d§
{
   import §3!R§.b2Body;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §<!B§;
      
      public var §&]§:b2Body;
      
      public var §+0§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.type = b2Joint.§7M§;
               loop1:
               while(true)
               {
                  this.§<!B§ = null;
                  loop2:
                  while(true)
                  {
                     this.§&]§ = null;
                     while(true)
                     {
                        this.§+0§ = null;
                        addr59:
                        while(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                        addr35:
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.collideConnected = false;
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr35);
            }
            §§goto(addr59);
         }
         §§goto(addr54);
      }
   }
}
