package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §5b§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!<§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§1!0§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§,?§;
                     loop3:
                     while(!_loc1_)
                     {
                        this.§5b§ = 0;
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
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §7!K§ = param1;
         }
         do
         {
            §'P§ = param2;
            do
            {
               this.§'!<§.SetV(§7!K§.GetLocalPoint(param3));
               do
               {
                  this.§1!0§.SetV(§'P§.GetLocalPoint(param3));
               }
               while(_loc4_ && param3);
               
            }
            while(_loc4_ && param1);
            
         }
         while(!(_loc5_ || param1));
         
      }
   }
}
