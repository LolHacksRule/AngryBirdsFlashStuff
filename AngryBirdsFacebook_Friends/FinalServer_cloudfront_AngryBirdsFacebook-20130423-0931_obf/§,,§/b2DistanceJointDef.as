package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var length:Number;
      
      public var §0c§:Number;
      
      public var §6!i§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!,§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§["9§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(!_loc1_)
                  {
                     addr59:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     this.§6!i§ = 0;
                     addr76:
                     if(_loc2_)
                     {
                        addr30:
                        if(_loc1_ && _loc2_)
                        {
                           while(true)
                           {
                              this.length = 1;
                              while(!_loc1_)
                              {
                                 this.§0c§ = 0;
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    §§goto(addr59);
                                    §§goto(addr76);
                                 }
                              }
                              continue loop1;
                              §§goto(addr30);
                           }
                           addr89:
                        }
                        return;
                     }
                     §§goto(addr52);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            type = b2Joint.§&"W§;
            §§goto(addr89);
         }
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §`y§ = param1;
            while(true)
            {
               §8!7§ = param2;
               addr45:
               if(_loc7_ && this)
               {
                  continue;
               }
               this.§["9§.SetV(§8!7§.GetLocalPoint(param4));
               if(_loc8_)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§-!,§.SetV(§`y§.GetLocalPoint(param3));
                        addr38:
                        addr57:
                        while(_loc8_ || param3)
                        {
                           §§goto(addr45);
                        }
                        while(true)
                        {
                           continue loop2;
                           §§goto(addr38);
                        }
                     }
                  }
                  §§push(param4.x);
                  if(_loc8_)
                  {
                     §§push(§§pop() - param3.x);
                     if(!(_loc7_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(param4.y);
                  if(_loc8_ || param3)
                  {
                     §§push(§§pop() - param3.y);
                     if(!(_loc7_ && param1))
                     {
                        addr107:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc8_ || this)
                     {
                        this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                        do
                        {
                           this.§0c§ = 0;
                           do
                           {
                              this.§6!i§ = 0;
                           }
                           while(_loc7_);
                           
                        }
                        while(!_loc8_);
                        
                     }
                     return;
                  }
                  §§goto(addr107);
               }
               §§goto(addr38);
            }
         }
         §§goto(addr57);
      }
   }
}
