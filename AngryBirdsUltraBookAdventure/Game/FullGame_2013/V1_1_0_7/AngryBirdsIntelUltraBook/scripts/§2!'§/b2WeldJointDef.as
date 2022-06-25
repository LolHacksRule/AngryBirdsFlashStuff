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
         if(_loc2_ || this)
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
                     type = b2Joint.§"!1§;
                     continue loop0;
                     if(!(_loc1_ && this))
                     {
                        return;
                        addr67:
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
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
                  do
                  {
                     this.§-!u§ = §"@§.GetAngle() - §19§.GetAngle();
                  }
                  while(!(_loc5_ || this));
                  
               }
               while(!_loc5_);
               
            }
            while(_loc4_ && param3);
            
         }
         while(_loc4_);
         
      }
   }
}
