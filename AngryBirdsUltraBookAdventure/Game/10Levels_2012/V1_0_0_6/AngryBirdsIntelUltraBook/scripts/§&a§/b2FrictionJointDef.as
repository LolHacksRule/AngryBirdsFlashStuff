package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §2A§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4!%§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§=!I§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§0!!§;
                     while(_loc2_)
                     {
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        while(_loc2_ || this)
                        {
                           continue loop0;
                           this.maxTorque = 0;
                           if(_loc2_ || _loc1_)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§2A§ = 0;
            §§goto(addr50);
         }
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §0w§ = param1;
         }
         loop0:
         while(true)
         {
            §^2§ = param2;
            while(true)
            {
               this.§4!%§.SetV(§0w§.GetLocalPoint(param3));
               while(!(_loc5_ && param2))
               {
                  if(_loc4_)
                  {
                     this.§=!I§.SetV(§^2§.GetLocalPoint(param3));
                     if(!_loc5_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
