package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §<!Y§:b2Vec2;
      
      public var §5S§:Number;
      
      public var §!X§:Boolean;
      
      public var §1!D§:Number;
      
      public var §#g§:Number;
      
      public var §0e§:Boolean;
      
      public var §#M§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§'!<§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§1!0§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§<!Y§ = new b2Vec2();
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
                        type = b2Joint.§#!D§;
                        while(true)
                        {
                           this.§<!Y§.Set(1,0);
                           continue loop3;
                           addr109:
                           if(!(_loc1_ && _loc1_))
                           {
                              this.§#g§ = 0;
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
                                       this.§1!D§ = 0;
                                       break loop10;
                                       §§goto(addr73);
                                    }
                                 }
                                 break;
                                 addr97:
                                 this.§0e§ = false;
                                 do
                                 {
                                    this.§#M§ = 0;
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
                                          this.§!X§ = false;
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
                        this.§5S§ = 0;
                        §§goto(addr126);
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §7!K§ = param1;
            while(true)
            {
               §'P§ = param2;
               while(true)
               {
                  this.§'!<§ = §7!K§.GetLocalPoint(param3);
                  loop3:
                  while(_loc6_ || param2)
                  {
                     this.§<!Y§ = §7!K§.GetLocalVector(param4);
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
                        this.§1!0§ = §'P§.GetLocalPoint(param3);
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
