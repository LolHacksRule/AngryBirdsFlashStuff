package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var length:Number;
      
      public var §&!a§:Number;
      
      public var §0J§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@b§ = new b2Vec2();
            while(true)
            {
               this.§=i§ = new b2Vec2();
               addr91:
               while(true)
               {
                  super();
                  addr75:
                  while(true)
                  {
                     type = b2Joint.§0=§;
                  }
               }
            }
            addr96:
         }
         loop3:
         while(true)
         {
            this.length = 1;
            loop4:
            while(_loc2_)
            {
               this.§&!a§ = 0;
               while(true)
               {
                  if(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           §§goto(addr96);
                        }
                        break;
                     }
                     continue loop3;
                  }
                  continue loop4;
               }
               §§goto(addr75);
            }
            §§goto(addr91);
         }
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §&]§ = param1;
            while(true)
            {
               §+0§ = param2;
               loop1:
               for(; !(_loc7_ && param3); while(!(_loc7_ && this))
               {
                  this.§=i§.SetV(§+0§.GetLocalPoint(param4));
                  if(!_loc8_)
                  {
                     continue;
                  }
                  §§goto(addr29);
               })
               {
                  while(true)
                  {
                     do
                     {
                        this.§@b§.SetV(§&]§.GetLocalPoint(param3));
                        continue loop1;
                     }
                     while(false);
                     
                     §§push(param4.x);
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() - param3.x);
                        if(!(_loc7_ && param3))
                        {
                           addr91:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        §§push(param4.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() - param3.y);
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc7_)
                        {
                           this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                           while(true)
                           {
                              this.§&!a§ = 0;
                              loop6:
                              while(_loc8_ || param1)
                              {
                                 while(true)
                                 {
                                    this.§0J§ = 0;
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr91);
                  }
               }
            }
         }
         §§goto(addr57);
      }
   }
}
