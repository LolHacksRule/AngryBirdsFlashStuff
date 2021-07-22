package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §1b§:Number;
      
      public var §5!!§:Boolean;
      
      public var §?X§:Number;
      
      public var §>p§:Number;
      
      public var §<!0§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §4f§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§-!,§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§["9§ = new b2Vec2();
               while(true)
               {
                  super();
                  addr161:
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                  }
                  loop5:
                  for(; _loc2_ || _loc2_; if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },if(!_loc1_)
                  {
                     this.§5!!§ = false;
                     §§goto(addr42);
                  },§§goto(addr149))
                  {
                     this.§1b§ = 0;
                     while(_loc2_)
                     {
                        continue loop0;
                        addr56:
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        this.§<!0§ = false;
                        addr63:
                        if(!_loc2_)
                        {
                           loop11:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr49:
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr56);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§4f§ = 0;
                                       §§goto(addr49);
                                    }
                                    addr99:
                                 }
                              }
                              while(true)
                              {
                                 this.motorSpeed = 0;
                                 addr68:
                                 addr149:
                                 loop10:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    addr104:
                                    while(true)
                                    {
                                       this.§>p§ = 0;
                                       §§goto(addr99);
                                       continue loop10;
                                    }
                                 }
                                 while(_loc2_)
                                 {
                                    this.§["9§.Set(0,0);
                                    continue loop5;
                                 }
                                 §§goto(addr161);
                                 continue loop11;
                              }
                           }
                           continue;
                           addr42:
                        }
                        if(_loc2_)
                        {
                           return;
                        }
                        §§goto(addr68);
                     }
                     while(true)
                     {
                        this.§-!,§.Set(0,0);
                        §§goto(addr149);
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §`y§ = param1;
         }
         while(true)
         {
            §8!7§ = param2;
            while(_loc4_ || param3)
            {
               this.§-!,§ = §`y§.GetLocalPoint(param3);
               do
               {
                  this.§["9§ = §8!7§.GetLocalPoint(param3);
                  do
                  {
                     this.§1b§ = §8!7§.GetAngle() - §`y§.GetAngle();
                  }
                  while(!_loc4_);
                  
               }
               while(_loc5_ && param2);
               
               if(!_loc5_)
               {
                  return;
               }
            }
         }
      }
   }
}
