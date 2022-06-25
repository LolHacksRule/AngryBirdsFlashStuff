package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §<!U§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
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
                  super();
                  while(_loc2_)
                  {
                     while(_loc2_ || this)
                     {
                        this.§<!U§ = 0;
                        while(!_loc1_)
                        {
                           this.maxTorque = 0;
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            type = b2Joint.§"!T§;
            §§goto(addr66);
         }
         §§goto(addr42);
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §7l§ = param1;
            while(true)
            {
               §<H§ = param2;
               addr60:
               if(_loc4_ && param3)
               {
                  continue;
               }
               return;
               addr67:
            }
         }
         while(true)
         {
            this.§>!g§.SetV(§7l§.GetLocalPoint(param3));
            while(!_loc4_)
            {
               this.§&1§.SetV(§<H§.GetLocalPoint(param3));
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr67);
      }
   }
}
