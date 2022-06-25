package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §-!u§:Number;
      
      public var §&!A§:Boolean;
      
      public var §;U§:Number;
      
      public var §'S§:Number;
      
      public var § !q§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §&!u§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§'G§ = new b2Vec2();
            while(true)
            {
               this.§true§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     loop3:
                     while(true)
                     {
                        this.§'G§.Set(0,0);
                        addr166:
                        while(true)
                        {
                           this.§true§.Set(0,0);
                           continue loop3;
                        }
                     }
                     addr109:
                     while(_loc2_ || this)
                     {
                        this.§'S§ = 0;
                        §§goto(addr100);
                     }
                  }
                  addr121:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§;U§ = 0;
                        §§goto(addr109);
                     }
                     §§goto(addr59);
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               this.§-!u§ = 0;
               §§goto(addr121);
            }
         }
         §§goto(addr128);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §19§ = param1;
         }
         loop0:
         while(true)
         {
            §"@§ = param2;
            while(true)
            {
               this.§'G§ = §19§.GetLocalPoint(param3);
               while(_loc5_)
               {
                  if(!_loc4_)
                  {
                     this.§true§ = §"@§.GetLocalPoint(param3);
                     do
                     {
                        this.§-!u§ = §"@§.GetAngle() - §19§.GetAngle();
                     }
                     while(!(_loc5_ || param2));
                     
                     if(_loc5_ || param1)
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
