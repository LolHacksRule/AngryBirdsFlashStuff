package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var §6""§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'G§ = new b2Vec2();
            while(true)
            {
               this.§true§ = new b2Vec2();
               while(_loc2_)
               {
                  while(_loc2_ || _loc2_)
                  {
                     type = b2Joint.§>!`§;
                     while(!(_loc1_ && _loc1_))
                     {
                        this.§6""§ = 0;
                        do
                        {
                           this.maxTorque = 0;
                        }
                        while(_loc1_ && _loc1_);
                        
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            super();
            §§goto(addr79);
         }
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §19§ = param1;
            while(true)
            {
               §"@§ = param2;
               while(!_loc4_)
               {
                  this.§'G§.SetV(§19§.GetLocalPoint(param3));
                  do
                  {
                     this.§true§.SetV(§"@§.GetLocalPoint(param3));
                  }
                  while(_loc4_);
                  
                  if(_loc5_)
                  {
                     return;
                     addr55:
                  }
               }
            }
         }
         §§goto(addr55);
      }
   }
}
