package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var length:Number;
      
      public var §4,§:Number;
      
      public var §>!k§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§;!1§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         if(_loc1_ || this)
         {
            super();
            type = b2Joint.§-r§;
            this.length = 1;
            if(!(_loc2_ && _loc2_))
            {
               this.§4,§ = 0;
               if(!(_loc2_ && _loc1_))
               {
                  this.§>!k§ = 0;
               }
            }
         }
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §[!i§ = param1;
            if(!_loc8_)
            {
               addr23:
               §;!K§ = param2;
               if(!(_loc8_ && param1))
               {
                  this.§;!1§.SetV(§[!i§.GetLocalPoint(param3));
                  if(_loc7_ || this)
                  {
                     this.§%?§.SetV(§;!K§.GetLocalPoint(param4));
                     addr46:
                  }
               }
               §§push(param4.x);
               if(_loc7_ || this)
               {
                  §§push(§§pop() - param3.x);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(param4.y);
               if(_loc7_)
               {
                  §§push(§§pop() - param3.y);
                  if(_loc7_ || param1)
                  {
                     addr92:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  if(_loc7_ || this)
                  {
                     this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                     if(_loc7_)
                     {
                        this.§4,§ = 0;
                        if(!_loc8_)
                        {
                           this.§>!k§ = 0;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr92);
            }
            §§goto(addr46);
         }
         §§goto(addr23);
      }
   }
}
