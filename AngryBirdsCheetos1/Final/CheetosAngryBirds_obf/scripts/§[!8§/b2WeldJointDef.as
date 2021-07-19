package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §;=§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§;9§ = new b2Vec2();
            while(true)
            {
               this.§-y§ = new b2Vec2();
               while(_loc2_ || _loc2_)
               {
                  super();
                  loop2:
                  while(_loc2_ || this)
                  {
                     type = b2Joint.§@P§;
                     while(true)
                     {
                        this.§;=§ = 0;
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §8!5§ = param1;
            loop0:
            while(true)
            {
               §0n§ = param2;
               loop1:
               while(true)
               {
                  this.§;9§.SetV(§8!5§.GetLocalPoint(param3));
                  while(true)
                  {
                     this.§-y§.SetV(§0n§.GetLocalPoint(param3));
                     loop3:
                     while(_loc4_ || this)
                     {
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§;=§ = §0n§.GetAngle() - §8!5§.GetAngle();
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
   }
}
