package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §=L§:b2Vec2;
      
      public var §49§:Number;
      
      public var § c§:Boolean;
      
      public var §&#§:Number;
      
      public var §7o§:Number;
      
      public var §32§:Boolean;
      
      public var §&j§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!!U§ = new b2Vec2();
            while(true)
            {
               this.§"!'§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§=L§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     loop3:
                     while(!_loc2_)
                     {
                        type = b2Joint.§3!;§;
                        loop4:
                        while(true)
                        {
                           this.§=L§.Set(1,0);
                           addr129:
                           loop5:
                           while(!_loc2_)
                           {
                              this.§49§ = 0;
                              loop6:
                              while(true)
                              {
                                 this.§ c§ = false;
                                 while(true)
                                 {
                                    this.§&#§ = 0;
                                    continue loop6;
                                    addr62:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                     addr41:
                     while(_loc1_ || _loc1_)
                     {
                        this.motorSpeed = 0;
                        if(!_loc2_)
                        {
                           addr29:
                           if(_loc2_ && _loc1_)
                           {
                              loop10:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr55);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§32§ = false;
                                       continue loop10;
                                    }
                                    addr93:
                                 }
                              }
                              §§goto(addr129);
                           }
                           return;
                           addr36:
                        }
                     }
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               this.§7o§ = 0;
               §§goto(addr93);
            }
         }
         while(true)
         {
            this.§&j§ = 0;
            §§goto(addr41);
         }
         §§goto(addr36);
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §-'§ = param1;
            loop0:
            while(true)
            {
               §<!L§ = param2;
               while(true)
               {
                  this.§!!U§ = §-'§.GetLocalPoint(param3);
                  while(_loc5_)
                  {
                     this.§"!'§ = §<!L§.GetLocalPoint(param3);
                     while(!_loc6_)
                     {
                        while(!(_loc6_ && param3))
                        {
                           if(!_loc6_)
                           {
                              this.§49§ = §<!L§.GetAngle() - §-'§.GetAngle();
                              if(_loc5_)
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
         while(true)
         {
            this.§=L§ = §-'§.GetLocalVector(param4);
            §§goto(addr50);
         }
      }
   }
}
