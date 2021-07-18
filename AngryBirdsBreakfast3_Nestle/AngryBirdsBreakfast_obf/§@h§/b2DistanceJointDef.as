package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var length:Number;
      
      public var §<!f§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§8D§ = new b2Vec2();
            while(true)
            {
               this.§@"$§ = new b2Vec2();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§4!-§;
                     loop3:
                     while(true)
                     {
                        this.length = 1;
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            §9!w§ = param1;
            while(true)
            {
               §>!W§ = param2;
               while(_loc8_ || param3)
               {
                  loop2:
                  while(true)
                  {
                     this.§8D§.SetV(§9!w§.GetLocalPoint(param3));
                     do
                     {
                        this.§@"$§.SetV(§>!W§.GetLocalPoint(param4));
                     }
                     while(_loc7_);
                     
                     if(!_loc8_)
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     §§push(param4.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() - param3.x);
                        if(_loc8_)
                        {
                           addr81:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        §§push(param4.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() - param3.y);
                           if(_loc8_)
                           {
                              addr92:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(!(_loc7_ && param3))
                           {
                              this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                              do
                              {
                                 this.§<!f§ = 0;
                                 do
                                 {
                                    this.dampingRatio = 0;
                                 }
                                 while(_loc7_ && param1);
                                 
                              }
                              while(_loc7_);
                              
                           }
                           return;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr36);
      }
   }
}
