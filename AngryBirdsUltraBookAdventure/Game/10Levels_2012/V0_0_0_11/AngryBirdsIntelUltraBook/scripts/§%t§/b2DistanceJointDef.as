package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var length:Number;
      
      public var §?!J§:Number;
      
      public var §9!7§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`!V§ = new b2Vec2();
            while(true)
            {
               this.§6$§ = new b2Vec2();
               addr97:
               while(true)
               {
                  super();
                  addr91:
                  while(true)
                  {
                     type = b2Joint.§7!L§;
                  }
               }
               loop5:
               while(_loc2_ || _loc1_)
               {
                  this.§9!7§ = 0;
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr35:
                  if(_loc2_)
                  {
                     return;
                  }
                  loop4:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              this.§?!J§ = 0;
                              continue loop5;
                           }
                           §§goto(addr97);
                        }
                        break;
                     }
                     addr87:
                     while(true)
                     {
                        this.length = 1;
                        continue loop4;
                     }
                  }
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            §^!G§ = param1;
            while(true)
            {
               §-z§ = param2;
               addr74:
               loop1:
               while(_loc8_)
               {
                  while(true)
                  {
                     this.§`!V§.SetV(§^!G§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§6$§.SetV(§-z§.GetLocalPoint(param4));
            if(!(_loc8_ || param2))
            {
               continue;
            }
            if(_loc8_ || param2)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr74);
            }
            §§goto(addr50);
         }
         §§push(param4.x);
         if(!(_loc7_ && param2))
         {
            §§push(§§pop() - param3.x);
            if(_loc8_)
            {
               addr95:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param4.y);
            if(_loc8_)
            {
               §§push(§§pop() - param3.y);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || this)
            {
               this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               while(true)
               {
                  this.§?!J§ = 0;
                  loop5:
                  while(_loc8_)
                  {
                     while(true)
                     {
                        this.§9!7§ = 0;
                        if(_loc8_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                     return;
                  }
               }
            }
            §§goto(addr143);
         }
         §§goto(addr95);
      }
   }
}
