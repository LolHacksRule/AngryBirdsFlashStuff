package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §0?§:b2Vec2;
      
      public var §0$§:Boolean;
      
      public var §[9§:Number;
      
      public var §@!f§:Number;
      
      public var § in§:Boolean;
      
      public var each:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!g§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§&1§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§0?§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§+"§;
                        continue loop1;
                        addr87:
                        while(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0?§.Set(1,0);
            §§goto(addr116);
         }
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §7l§ = param1;
            while(true)
            {
               §<H§ = param2;
               loop1:
               for(; !(_loc5_ && param3); while(!(_loc5_ && param3))
               {
                  this.§0?§ = §7l§.GetLocalVector(param4);
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr33);
               })
               {
                  while(true)
                  {
                     this.§>!g§ = §7l§.GetLocalPoint(param3);
                     do
                     {
                        this.§&1§ = §<H§.GetLocalPoint(param3);
                        continue loop1;
                     }
                     while(!(_loc6_ || this));
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr95);
      }
   }
}
