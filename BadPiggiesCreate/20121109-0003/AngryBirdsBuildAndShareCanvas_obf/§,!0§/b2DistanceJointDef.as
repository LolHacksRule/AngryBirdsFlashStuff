package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var length:Number;
      
      public var §@!8§:Number;
      
      public var §+!n§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§2!P§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§'t§;
                     loop3:
                     while(true)
                     {
                        this.length = 1;
                        loop4:
                        while(!_loc2_)
                        {
                           this.§@!8§ = 0;
                           while(true)
                           {
                              this.§+!n§ = 0;
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                        continue loop0;
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            § !T§ = param1;
            while(true)
            {
               §import§ = param2;
               addr28:
               if(!(_loc8_ && param2))
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§3!&§.SetV(§ !T§.GetLocalPoint(param3));
                        while(_loc7_)
                        {
                           this.§2!P§.SetV(§import§.GetLocalPoint(param4));
                           if(!_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr28);
                        }
                        addr51:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  §§push(param4.x);
                  if(!(_loc8_ && param1))
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc7_ || param3)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(param4.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() - param3.y);
                     if(_loc7_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc7_ || param3)
                  {
                     this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                     while(true)
                     {
                        this.§@!8§ = 0;
                        §§goto(addr128);
                     }
                  }
                  addr128:
                  while(true)
                  {
                     this.§+!n§ = 0;
                     if(!_loc8_)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop4;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
   }
}
