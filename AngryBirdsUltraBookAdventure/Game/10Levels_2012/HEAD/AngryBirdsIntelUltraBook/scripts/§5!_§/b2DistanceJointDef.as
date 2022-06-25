package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var length:Number;
      
      public var §!N§:Number;
      
      public var §^c§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§'!<§ = new b2Vec2();
            while(true)
            {
               this.§1!0§ = new b2Vec2();
               addr97:
               while(true)
               {
                  super();
                  addr91:
                  while(true)
                  {
                     type = b2Joint.§7z§;
                  }
               }
               loop5:
               while(_loc2_ || _loc1_)
               {
                  this.§^c§ = 0;
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
                              this.§!N§ = 0;
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
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            §7!K§ = param1;
            while(true)
            {
               §'P§ = param2;
               addr74:
               loop1:
               while(_loc8_)
               {
                  while(true)
                  {
                     this.§'!<§.SetV(§7!K§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§1!0§.SetV(§'P§.GetLocalPoint(param4));
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
                  this.§!N§ = 0;
                  loop5:
                  while(_loc8_)
                  {
                     while(true)
                     {
                        this.§^c§ = 0;
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
