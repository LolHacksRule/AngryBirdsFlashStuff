package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §49§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!U§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§"!'§ = new b2Vec2();
               loop1:
               do
               {
                  super();
                  while(_loc1_)
                  {
                     type = b2Joint.§%=§;
                     while(_loc1_)
                     {
                        this.§49§ = 0;
                        if(!(_loc2_ && _loc1_))
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(!(_loc1_ || _loc2_));
               
            }
         }
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §-'§ = param1;
            while(true)
            {
               §<!L§ = param2;
               loop1:
               while(true)
               {
                  this.§!!U§.SetV(§-'§.GetLocalPoint(param3));
                  while(true)
                  {
                     this.§"!'§.SetV(§<!L§.GetLocalPoint(param3));
                     while(!(_loc4_ && this))
                     {
                        continue loop1;
                        this.§49§ = §<!L§.GetAngle() - §-'§.GetAngle();
                        if(!(_loc4_ && param1))
                        {
                           return;
                           addr39:
                        }
                     }
                  }
               }
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr39);
      }
   }
}
