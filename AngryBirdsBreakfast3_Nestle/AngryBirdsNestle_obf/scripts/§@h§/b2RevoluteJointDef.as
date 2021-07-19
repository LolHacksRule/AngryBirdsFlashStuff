package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §7!L§:Number;
      
      public var §05§:Boolean;
      
      public var §3!i§:Number;
      
      public var §^!t§:Number;
      
      public var §9!g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §"7§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§8D§ = new b2Vec2();
            while(true)
            {
               this.§@"$§ = new b2Vec2();
               addr144:
               while(_loc1_)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     addr124:
                     while(true)
                     {
                        this.§8D§.Set(0,0);
                     }
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            this.§@"$§.Set(0,0);
            loop5:
            while(!_loc2_)
            {
               this.§7!L§ = 0;
               loop6:
               while(true)
               {
                  if(!_loc1_)
                  {
                     continue loop5;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  this.§3!i§ = 0;
                  while(true)
                  {
                     this.§^!t§ = 0;
                     loop8:
                     while(!_loc2_)
                     {
                        this.§"7§ = 0;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 this.motorSpeed = 0;
                                 loop10:
                                 while(!_loc2_)
                                 {
                                    this.§05§ = false;
                                    while(true)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr144);
                              }
                              break;
                           }
                           continue loop8;
                        }
                        §§goto(addr128);
                     }
                  }
               }
               continue loop4;
            }
            §§goto(addr124);
         }
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §9!w§ = param1;
            loop0:
            while(true)
            {
               §>!W§ = param2;
               loop1:
               while(true)
               {
                  this.§8D§ = §9!w§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§@"$§ = §>!W§.GetLocalPoint(param3);
                     loop3:
                     while(_loc5_ || this)
                     {
                        if(_loc5_)
                        {
                           while(true)
                           {
                              this.§7!L§ = §>!W§.GetAngle() - §9!w§.GetAngle();
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
   }
}
