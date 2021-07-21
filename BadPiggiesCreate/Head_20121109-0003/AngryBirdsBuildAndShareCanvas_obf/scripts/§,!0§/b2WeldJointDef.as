package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var § "2§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§2!P§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(!(_loc1_ && this))
                  {
                     if(!_loc1_)
                     {
                        type = b2Joint.§'7§;
                        loop3:
                        while(!(_loc1_ && _loc2_))
                        {
                           while(true)
                           {
                              this.§ "2§ = 0;
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            § !T§ = param1;
            loop0:
            while(true)
            {
               §import§ = param2;
               loop1:
               while(true)
               {
                  this.§3!&§.SetV(§ !T§.GetLocalPoint(param3));
                  while(!_loc5_)
                  {
                     this.§2!P§.SetV(§import§.GetLocalPoint(param3));
                     continue loop1;
                     if(_loc4_ || param2)
                     {
                        return;
                        addr55:
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr55);
      }
   }
}
