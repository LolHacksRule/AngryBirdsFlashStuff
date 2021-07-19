package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var length:Number;
      
      public var §^J§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!8§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@W§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§4!Z§;
                     while(_loc1_)
                     {
                        while(!(_loc2_ && _loc2_))
                        {
                           this.dampingRatio = 0;
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                    addr38:
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.length = 1;
            §§goto(addr65);
         }
         §§goto(addr38);
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §+,§ = param1;
            while(true)
            {
               §"R§ = param2;
               addr36:
               if(_loc7_ && param2)
               {
                  continue;
               }
               if(false)
               {
                  while(true)
                  {
                     this.§!8§.SetV(§+,§.GetLocalPoint(param3));
                     do
                     {
                        this.§@W§.SetV(§"R§.GetLocalPoint(param4));
                     }
                     while(!_loc8_);
                     
                     if(!(_loc8_ || this))
                     {
                        break;
                     }
                     §§goto(addr36);
                  }
                  while(true)
                  {
                     §§goto(addr45);
                  }
                  addr45:
                  addr57:
               }
               §§push(param4.x);
               if(!_loc7_)
               {
                  §§push(§§pop() - param3.x);
                  if(!(_loc7_ && param3))
                  {
                     addr86:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param4.y);
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() - param3.y);
                     if(!_loc7_)
                     {
                        addr102:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc8_)
                     {
                        this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                        while(true)
                        {
                           this.§^J§ = 0;
                           §§goto(addr124);
                        }
                     }
                     addr124:
                     while(true)
                     {
                        this.dampingRatio = 0;
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                     }
                     return;
                  }
                  §§goto(addr102);
               }
               §§goto(addr86);
            }
         }
         §§goto(addr57);
      }
   }
}
