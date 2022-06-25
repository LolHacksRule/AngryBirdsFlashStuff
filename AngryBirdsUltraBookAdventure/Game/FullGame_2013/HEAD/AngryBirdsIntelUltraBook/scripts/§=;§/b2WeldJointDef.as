package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §6![§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!g§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§&1§ = new b2Vec2();
               while(true)
               {
                  super();
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     while(true)
                     {
                        type = b2Joint.§8!0§;
                        do
                        {
                           this.§6![§ = 0;
                        }
                        while(!_loc1_);
                        
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §7l§ = param1;
         }
         loop0:
         while(true)
         {
            §<H§ = param2;
            loop1:
            do
            {
               this.§>!g§.SetV(§7l§.GetLocalPoint(param3));
               while(!_loc4_)
               {
                  this.§&1§.SetV(§<H§.GetLocalPoint(param3));
                  while(_loc5_)
                  {
                     this.§6![§ = §<H§.GetAngle() - §7l§.GetAngle();
                     if(!(_loc4_ && param1))
                     {
                        continue loop1;
                     }
                  }
               }
               continue loop0;
            }
            while(_loc4_ && param1);
            
            return;
         }
      }
   }
}
