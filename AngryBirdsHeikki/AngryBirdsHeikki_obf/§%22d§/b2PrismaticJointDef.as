package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §^>§:b2Vec2;
      
      public var §;w§:Number;
      
      public var §3L§:Boolean;
      
      public var §<T§:Number;
      
      public var §[g§:Number;
      
      public var §;`§:Boolean;
      
      public var include:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@b§ = new b2Vec2();
            while(true)
            {
               this.§=i§ = new b2Vec2();
               while(true)
               {
                  this.§^>§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     addr139:
                     while(true)
                     {
                        type = b2Joint.§=x§;
                        while(true)
                        {
                           this.§^>§.Set(1,0);
                           continue loop2;
                           addr41:
                           if(_loc2_ || this)
                           {
                              return;
                              addr48:
                           }
                        }
                     }
                  }
                  addr67:
                  loop9:
                  while(_loc2_ || _loc1_)
                  {
                     this.§;`§ = false;
                     loop10:
                     while(true)
                     {
                        this.include = 0;
                        for(; _loc2_; this.motorSpeed = 0,if(_loc2_)
                        {
                           continue loop10;
                        })
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr139);
                        }
                        continue loop9;
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr41);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr48);
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               this.§[g§ = 0;
               §§goto(addr67);
            }
         }
         §§goto(addr62);
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §&]§ = param1;
            loop0:
            while(true)
            {
               §+0§ = param2;
               while(true)
               {
                  this.§@b§ = §&]§.GetLocalPoint(param3);
                  addr98:
                  loop4:
                  while(!(_loc5_ && param1))
                  {
                     if(_loc6_)
                     {
                        this.§;w§ = §+0§.GetAngle() - §&]§.GetAngle();
                        if(_loc5_)
                        {
                           continue;
                        }
                        addr39:
                        if(!(_loc5_ && param1))
                        {
                           if(_loc5_)
                           {
                              §§goto(addr98);
                           }
                           return;
                           addr58:
                        }
                        while(true)
                        {
                           this.§^>§ = §&]§.GetLocalVector(param4);
                           continue loop4;
                           §§goto(addr39);
                        }
                        §§goto(addr58);
                        continue;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     this.§=i§ = §+0§.GetLocalPoint(param3);
                  }
               }
            }
         }
         §§goto(addr81);
      }
   }
}
