package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §"$§:b2Vec2;
      
      public var §]!4§:Number;
      
      public var §?P§:Boolean;
      
      public var §8!`§:Number;
      
      public var §?7§:Number;
      
      public var §"!<§:Boolean;
      
      public var §;!9§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§`!V§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§6$§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§"$§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     for(; !_loc1_; while(_loc2_ || this)
                     {
                        continue loop2;
                        §§goto(addr102);
                     })
                     {
                        type = b2Joint.§@$§;
                        while(true)
                        {
                           this.§"$§.Set(1,0);
                           continue loop3;
                           addr109:
                           if(!(_loc1_ && _loc1_))
                           {
                              this.§?7§ = 0;
                              loop10:
                              while(true)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    addr73:
                                    if(_loc2_ || this)
                                    {
                                       continue loop1;
                                    }
                                    addr121:
                                    while(true)
                                    {
                                       this.§8!`§ = 0;
                                       break loop10;
                                       §§goto(addr73);
                                    }
                                 }
                                 break;
                                 addr97:
                                 this.§"!<§ = false;
                                 do
                                 {
                                    this.§;!9§ = 0;
                                    do
                                    {
                                       this.motorSpeed = 0;
                                    }
                                    while(!(_loc2_ || this));
                                    
                                 }
                                 while(_loc1_);
                                 
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr49:
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§?P§ = false;
                                          §§goto(addr121);
                                          §§goto(addr49);
                                       }
                                       addr126:
                                    }
                                    return;
                                 }
                              }
                              while(!(_loc1_ && _loc1_))
                              {
                                 §§goto(addr109);
                                 §§goto(addr66);
                              }
                              addr66:
                              continue loop3;
                              addr102:
                           }
                        }
                     }
                     continue loop0;
                     if(!_loc2_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§]!4§ = 0;
                        §§goto(addr126);
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §^!G§ = param1;
            while(true)
            {
               §-z§ = param2;
               while(true)
               {
                  this.§`!V§ = §^!G§.GetLocalPoint(param3);
                  loop3:
                  while(_loc6_ || param2)
                  {
                     this.§"$§ = §^!G§.GetLocalVector(param4);
                     while(true)
                     {
                        if(_loc6_ || param1)
                        {
                           addr68:
                           if(_loc5_ && param2)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        this.§6$§ = §-z§.GetLocalPoint(param3);
                        continue loop3;
                        §§goto(addr68);
                     }
                     return;
                  }
               }
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               §§goto(addr43);
            }
         }
         §§goto(addr108);
      }
   }
}
