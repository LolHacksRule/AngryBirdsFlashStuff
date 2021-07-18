package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var length:Number;
      
      public var §5X§:Number;
      
      public var §@N§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4B§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§ !Q§ = new b2Vec2();
            while(true)
            {
               super();
               loop2:
               while(true)
               {
                  type = b2Joint.§-!§;
                  loop3:
                  while(!_loc1_)
                  {
                     this.length = 1;
                     do
                     {
                        this.§5X§ = 0;
                        while(_loc2_ || _loc1_)
                        {
                           continue loop2;
                           this.§@N§ = 0;
                           if(!_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr35);
                        }
                        continue loop3;
                     }
                     while(!_loc2_);
                     
                     return;
                  }
                  continue loop0;
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr73);
            }
         }
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            §<§ = param1;
         }
         loop0:
         while(true)
         {
            §,!M§ = param2;
            while(true)
            {
               while(true)
               {
                  this.§4B§.SetV(§<§.GetLocalPoint(param3));
                  do
                  {
                     this.§ !Q§.SetV(§,!M§.GetLocalPoint(param4));
                  }
                  while(_loc8_ && this);
                  
                  if(_loc8_)
                  {
                     break;
                  }
                  if(_loc8_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     continue;
                  }
                  §§push(param4.x);
                  if(_loc7_)
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc7_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(param4.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() - param3.y);
                     if(!_loc8_)
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc7_ || param3)
                     {
                        this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                        this.§5X§ = 0;
                        addr145:
                     }
                     this.§@N§ = 0;
                     if(!_loc8_)
                     {
                        if(_loc8_)
                        {
                           §§goto(addr145);
                        }
                        return;
                     }
                     addr123:
                     §§goto(addr123);
                  }
                  §§goto(addr96);
               }
            }
         }
      }
   }
}
