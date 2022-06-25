package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §-!u§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'G§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§true§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        type = b2Joint.§"!1§;
                        loop3:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              this.§-!u§ = 0;
                              if(!(_loc1_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §19§ = param1;
            loop0:
            while(true)
            {
               §"@§ = param2;
               while(true)
               {
                  this.§'G§.SetV(§19§.GetLocalPoint(param3));
                  while(_loc4_)
                  {
                     while(!(_loc5_ && param3))
                     {
                        this.§-!u§ = §"@§.GetAngle() - §19§.GetAngle();
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§true§.SetV(§"@§.GetLocalPoint(param3));
            §§goto(addr73);
         }
         §§goto(addr55);
      }
   }
}
