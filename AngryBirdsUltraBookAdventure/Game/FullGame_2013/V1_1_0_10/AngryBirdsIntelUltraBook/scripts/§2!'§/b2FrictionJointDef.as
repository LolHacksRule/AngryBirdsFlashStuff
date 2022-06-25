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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'G§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§true§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§>!`§;
                     loop4:
                     while(_loc1_ || _loc1_)
                     {
                        continue loop0;
                        this.maxTorque = 0;
                        if(!_loc2_)
                        {
                           addr34:
                           if(!(_loc1_ || this))
                           {
                              while(true)
                              {
                                 this.§6""§ = 0;
                                 continue loop4;
                                 §§goto(addr34);
                              }
                              return;
                           }
                           addr93:
                           addr58:
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §19§ = param1;
         }
         do
         {
            §"@§ = param2;
            do
            {
               this.§'G§.SetV(§19§.GetLocalPoint(param3));
               do
               {
                  this.§true§.SetV(§"@§.GetLocalPoint(param3));
               }
               while(_loc5_);
               
            }
            while(_loc5_);
            
         }
         while(_loc5_ && param3);
         
      }
   }
}
