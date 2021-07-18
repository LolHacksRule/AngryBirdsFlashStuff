package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var length:Number;
      
      public var §""u§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!"4§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§#"B§ = new b2Vec2();
               while(true)
               {
                  super();
                  loop5:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_)
                     {
                        this.dampingRatio = 0;
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           return;
                        }
                        loop4:
                        while(!_loc2_)
                        {
                           addr67:
                           if(!(_loc2_ && _loc1_))
                           {
                              this.§""u§ = 0;
                              continue loop5;
                           }
                           addr84:
                           while(true)
                           {
                              type = b2Joint.§83§;
                              break loop4;
                              §§goto(addr67);
                           }
                        }
                        while(true)
                        {
                           this.length = 1;
                           §§goto(addr65);
                        }
                        addr65:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            §9"P§ = param1;
            while(true)
            {
               §continue§ = param2;
               loop1:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     this.§!"4§.SetV(§9"P§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
               if(_loc8_ && param3)
               {
                  continue;
               }
               this.§#"B§.SetV(§continue§.GetLocalPoint(param4));
               if(_loc7_ || param2)
               {
                  while(false)
                  {
                     §§goto(addr40);
                  }
                  §§push(param4.x);
                  if(!(_loc8_ && param1))
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc7_)
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param4.y);
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() - param3.y);
                        if(_loc7_)
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
                           this.§""u§ = 0;
                           loop6:
                           while(_loc7_ || param1)
                           {
                              while(true)
                              {
                                 this.dampingRatio = 0;
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr95);
                  addr38:
               }
               §§goto(addr47);
            }
         }
         §§goto(addr38);
      }
   }
}
