package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §;w§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@b§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§=i§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(_loc2_)
                  {
                     type = b2Joint.§;'§;
                     loop3:
                     while(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§;w§ = 0;
                              if(!(_loc1_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §&]§ = param1;
            loop0:
            do
            {
               §+0§ = param2;
               while(true)
               {
                  this.§@b§.SetV(§&]§.GetLocalPoint(param3));
                  while(!(_loc4_ && param2))
                  {
                     this.§=i§.SetV(§+0§.GetLocalPoint(param3));
                     do
                     {
                        this.§;w§ = §+0§.GetAngle() - §&]§.GetAngle();
                     }
                     while(!(_loc5_ || param1));
                     
                     if(_loc5_ || param3)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc4_ && param3);
            
         }
      }
   }
}
