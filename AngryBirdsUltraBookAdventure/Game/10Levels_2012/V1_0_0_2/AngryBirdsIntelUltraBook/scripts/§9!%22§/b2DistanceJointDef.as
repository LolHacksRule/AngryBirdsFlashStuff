package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var length:Number;
      
      public var § y§:Number;
      
      public var §`!X§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<?§ = new b2Vec2();
            while(true)
            {
               this.§%!e§ = new b2Vec2();
               addr53:
               if(_loc1_ || _loc2_)
               {
                  this.§`!X§ = 0;
                  addr70:
                  if(!_loc1_)
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§goto(addr53);
                        }
                        addr75:
                        addr83:
                        while(!_loc2_)
                        {
                           this.§ y§ = 0;
                           continue loop5;
                        }
                        addr89:
                        while(!_loc2_)
                        {
                           this.length = 1;
                           §§goto(addr75);
                        }
                        while(true)
                        {
                           type = b2Joint.§09§;
                           §§goto(addr83);
                        }
                     }
                     while(true)
                     {
                        super();
                        §§goto(addr89);
                     }
                     addr95:
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            §3x§ = param1;
            loop0:
            while(true)
            {
               §8P§ = param2;
               loop1:
               while(true)
               {
                  addr42:
                  loop2:
                  while(true)
                  {
                     this.§<?§.SetV(§3x§.GetLocalPoint(param3));
                     while(!_loc8_)
                     {
                        this.§%!e§.SetV(§8P§.GetLocalPoint(param4));
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr42);
         }
         §§push(param4.x);
         if(!_loc8_)
         {
            §§push(§§pop() - param3.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param4.y);
         if(_loc7_ || param3)
         {
            §§push(§§pop() - param3.y);
            if(_loc7_)
            {
               addr96:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && param3))
            {
               this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               while(true)
               {
                  this.§ y§ = 0;
                  §§goto(addr133);
               }
            }
            addr133:
            while(true)
            {
               this.§`!X§ = 0;
               if(!_loc8_)
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  continue loop5;
               }
            }
            return;
         }
         §§goto(addr96);
      }
   }
}
