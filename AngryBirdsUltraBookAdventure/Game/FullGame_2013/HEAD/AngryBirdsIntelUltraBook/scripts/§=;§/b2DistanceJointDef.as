package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var length:Number;
      
      public var §5Q§:Number;
      
      public var §=$§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§>!g§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§&1§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§@5§;
                     continue loop0;
                     loop5:
                     while(!(_loc1_ && _loc2_))
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              this.§=$§ = 0;
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 addr66:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    this.§5Q§ = 0;
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              continue loop5;
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
         §§goto(addr61);
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §7l§ = param1;
         }
         while(true)
         {
            §<H§ = param2;
            while(!_loc7_)
            {
               while(true)
               {
                  this.§>!g§.SetV(§7l§.GetLocalPoint(param3));
                  do
                  {
                     this.§&1§.SetV(§<H§.GetLocalPoint(param4));
                  }
                  while(_loc7_);
                  
                  if(_loc7_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  §§push(param4.x);
                  if(_loc8_ || param2)
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc8_)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param4.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - param3.y);
                        if(!(_loc7_ && param3))
                        {
                           addr96:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc7_)
                        {
                           this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                           while(true)
                           {
                              this.§5Q§ = 0;
                              loop5:
                              while(!_loc7_)
                              {
                                 while(true)
                                 {
                                    this.§=$§ = 0;
                                    if(!(_loc7_ && param1))
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr80);
               }
            }
         }
      }
   }
}
