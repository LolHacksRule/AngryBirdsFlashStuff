package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §#!`§;
      
      public var §7!K§:b2Body;
      
      public var §'P§:b2Body;
      
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
               this.type = b2Joint.dynamic;
               while(_loc1_)
               {
                  this.§#!`§ = null;
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     this.§7!K§ = null;
                     while(true)
                     {
                        this.§'P§ = null;
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
