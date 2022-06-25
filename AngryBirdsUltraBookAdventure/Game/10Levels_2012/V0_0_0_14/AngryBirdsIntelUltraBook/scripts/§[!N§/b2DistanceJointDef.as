package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var length:Number;
      
      public var § $§:Number;
      
      public var §7B§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9!9§ = new b2Vec2();
            while(true)
            {
               this.§^G§ = new b2Vec2();
               addr95:
               while(true)
               {
                  super();
                  addr89:
                  while(true)
                  {
                     type = b2Joint.§-!u§;
                  }
               }
               addr46:
               if(_loc1_ || _loc1_)
               {
                  this.§7B§ = 0;
                  addr53:
                  if(_loc2_)
                  {
                     while(_loc1_)
                     {
                        §§goto(addr46);
                        §§goto(addr53);
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 this.§ $§ = 0;
                                 continue;
                              }
                              §§goto(addr95);
                           }
                           break;
                        }
                        addr85:
                        while(true)
                        {
                           this.length = 1;
                           continue loop4;
                        }
                     }
                     addr34:
                     §§goto(addr89);
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            §-!O§ = param1;
         }
         loop0:
         while(true)
         {
            §3!u§ = param2;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  this.§9!9§.SetV(§-!O§.GetLocalPoint(param3));
                  while(!_loc7_)
                  {
                     this.§^G§.SetV(§3!u§.GetLocalPoint(param4));
                     if(!_loc8_)
                     {
                        continue;
                     }
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     §§push(param4.x);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - param3.x);
                        if(!(_loc7_ && param1))
                        {
                           addr81:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        §§push(param4.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() - param3.y);
                           if(!_loc7_)
                           {
                              addr92:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(!_loc7_)
                           {
                              this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                           }
                           this.§ $§ = 0;
                           this.§7B§ = 0;
                           addr146:
                           if(!(_loc7_ && param1))
                           {
                              if(_loc7_ && param3)
                              {
                                 §§goto(addr146);
                              }
                              return;
                           }
                           addr134:
                           §§goto(addr134);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr81);
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
   }
}
