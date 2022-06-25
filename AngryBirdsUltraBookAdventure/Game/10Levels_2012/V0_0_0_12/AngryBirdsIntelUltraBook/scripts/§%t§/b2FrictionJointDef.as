package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §3!,§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`!V§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§6$§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§5![§;
                     loop3:
                     while(!_loc1_)
                     {
                        this.§3!,§ = 0;
                        while(!_loc1_)
                        {
                           continue loop1;
                           this.maxTorque = 0;
                           if(!(_loc1_ && this))
                           {
                              if(_loc2_)
                              {
                                 return;
                                 addr47:
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §^!G§ = param1;
         }
         do
         {
            §-z§ = param2;
            do
            {
               this.§`!V§.SetV(§^!G§.GetLocalPoint(param3));
               do
               {
                  this.§6$§.SetV(§-z§.GetLocalPoint(param3));
               }
               while(_loc4_ && param3);
               
            }
            while(_loc4_ && param1);
            
         }
         while(!(_loc5_ || param1));
         
      }
   }
}
