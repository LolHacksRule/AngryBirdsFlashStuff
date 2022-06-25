package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §0?§:b2Vec2;
      
      public var §6![§:Number;
      
      public var §0$§:Boolean;
      
      public var §[9§:Number;
      
      public var §@!f§:Number;
      
      public var § in§:Boolean;
      
      public var each:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
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
                  this.§0?§ = new b2Vec2();
                  addr64:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  this.§@!f§ = 0;
                  loop9:
                  while(true)
                  {
                     this.§ in§ = false;
                     loop10:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop9;
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        this.each = 0;
                        while(!_loc2_)
                        {
                           this.motorSpeed = 0;
                           if(!_loc2_)
                           {
                              continue loop10;
                           }
                        }
                        loop6:
                        while(_loc1_ || _loc1_)
                        {
                           this.§0$§ = false;
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr122:
                              while(true)
                              {
                                 this.§6![§ = 0;
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              type = b2Joint.§2!V§;
                              break loop6;
                           }
                        }
                        while(_loc1_ || _loc1_)
                        {
                           this.§0?§.Set(1,0);
                           §§goto(addr122);
                           §§goto(addr107);
                        }
                        addr107:
                        while(true)
                        {
                           super();
                           §§goto(addr150);
                           §§goto(addr139);
                        }
                        addr139:
                     }
                     addr62:
                     while(!_loc2_)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr86);
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §7l§ = param1;
            while(true)
            {
               §<H§ = param2;
               loop1:
               for(; _loc6_ || this; if(_loc5_ && this)
               {
                  continue;
               },§§goto(addr93))
               {
                  this.§>!g§ = §7l§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§&1§ = §<H§.GetLocalPoint(param3);
                     loop3:
                     while(!_loc5_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§0?§ = §7l§.GetLocalVector(param4);
                           do
                           {
                              this.§6![§ = §<H§.GetAngle() - §7l§.GetAngle();
                           }
                           while(!_loc6_);
                           
                           if(!(_loc5_ && param1))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
   }
}
