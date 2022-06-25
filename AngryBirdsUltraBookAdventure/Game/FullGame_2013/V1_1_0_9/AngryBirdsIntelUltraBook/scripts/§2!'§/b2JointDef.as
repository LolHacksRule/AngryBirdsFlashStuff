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
            while(true)
            {
               this.type = b2Joint.§'2§;
               addr49:
               if(_loc2_ || _loc1_)
               {
                  this.collideConnected = false;
                  addr66:
                  if(!_loc2_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr49);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§19§ = null;
                                 break loop4;
                              }
                              addr83:
                           }
                        }
                        break;
                        §§goto(addr66);
                     }
                     while(_loc2_ || _loc1_)
                     {
                        this.§"@§ = null;
                        §§goto(addr45);
                     }
                     addr45:
                     while(true)
                     {
                        this.§]!=§ = null;
                        §§goto(addr83);
                        §§goto(addr71);
                     }
                     addr71:
                     addr89:
                  }
                  return;
               }
            }
         }
         §§goto(addr89);
      }
   }
}
