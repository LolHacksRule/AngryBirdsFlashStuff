package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §""'§:b2Vec2;
      
      public var §5!!§:Boolean;
      
      public var §9V§:Number;
      
      public var §3!t§:Number;
      
      public var §<!0§:Boolean;
      
      public var §%!7§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§-!,§ = new b2Vec2();
            while(true)
            {
               this.§["9§ = new b2Vec2();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  this.§""'§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     while(!_loc1_)
                     {
                        type = b2Joint.§^A§;
                        while(!(_loc1_ && _loc2_))
                        {
                           this.§""'§.Set(1,0);
                           loop5:
                           while(true)
                           {
                              this.§5!!§ = false;
                              addr102:
                              while(_loc2_)
                              {
                                 this.§9V§ = 0;
                                 continue loop5;
                              }
                              continue loop2;
                           }
                           if(_loc2_ || this)
                           {
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §`y§ = param1;
         }
         while(true)
         {
            §8!7§ = param2;
            while(_loc5_ || this)
            {
               this.§-!,§ = §`y§.GetLocalPoint(param3);
               while(!_loc6_)
               {
                  this.§["9§ = §8!7§.GetLocalPoint(param3);
                  do
                  {
                     this.§""'§ = §`y§.GetLocalVector(param4);
                  }
                  while(!_loc5_);
                  
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
