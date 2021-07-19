package §[!8§
{
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §4!E§;
      
      public var §8!5§:b2Body;
      
      public var §0n§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.type = b2Joint.§>!?§;
               loop1:
               for(; _loc2_ || _loc2_; if(_loc1_ && _loc2_)
               {
                  continue;
               },§§goto(addr66))
               {
                  this.§4!E§ = null;
                  loop2:
                  while(true)
                  {
                     this.§8!5§ = null;
                     loop3:
                     while(true)
                     {
                        this.§0n§ = null;
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                           addr66:
                           this.collideConnected = false;
                           if(!(_loc1_ && _loc2_))
                           {
                              return;
                              addr35:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
   }
}
