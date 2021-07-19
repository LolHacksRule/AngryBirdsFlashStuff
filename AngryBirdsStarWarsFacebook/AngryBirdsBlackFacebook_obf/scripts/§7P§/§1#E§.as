package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§?#^§;
   import §<"B§.§94§;
   
   public class §1#E§ extends §#m§
   {
       
      
      protected var §5#T§:§?#^§;
      
      protected var §,"k§:Vector.<§7B§>;
      
      public function §1#E§(param1:Sprite, param2:b2World, param3:§"t§, param4:§?#^§, param5:§94§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            this.§,"k§ = new Vector.<§7B§>();
            while(true)
            {
               this.§5#T§ = param4;
               while(_loc7_ || param2)
               {
                  super(param1,param2,param3,param5);
                  do
                  {
                     this.§-"m§(§1!!§.x,§1!!§.y);
                  }
                  while(_loc6_ && param3);
                  
                  if(!_loc7_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §-"m§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc6_ || _loc3_)
         {
            _loc3_.type = b2Body.b2_staticBody;
            while(true)
            {
               §§push(_loc3_.position);
               addr78:
               loop1:
               while(true)
               {
                  §§push(param1);
                  addr79:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop1;
                  }
               }
            }
            addr85:
         }
         loop3:
         while(true)
         {
            §§push(_loc3_.position);
            if(_loc6_)
            {
               §§push(param2);
               if(_loc6_)
               {
                  §§pop().y = §§pop();
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §04§ = mWorld.CreateBody(_loc3_);
                        while(_loc6_)
                        {
                           §04§.SetUserData(this);
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 break loop5;
                              }
                              if(_loc6_ || _loc3_)
                              {
                                 if(true)
                                 {
                                    var _loc4_:b2FixtureDef;
                                    (_loc4_ = new b2FixtureDef()).shape = this.§5#T§.getB2Shape(this.scale);
                                    if(!(_loc5_ && param1))
                                    {
                                       _loc4_.§-"`§ = true;
                                       §^!L§ = §04§.CreateFixture(_loc4_);
                                       addr136:
                                       if(_loc5_ && param1)
                                       {
                                          §§goto(addr136);
                                       }
                                    }
                                 }
                                 continue loop5;
                                 return;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr85);
                     }
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr78);
         }
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_ || this)
               {
                  if(this.§,"k§.indexOf(param1) == -1)
                  {
                     if(_loc2_ || param1)
                     {
                        this.§,"k§.push(param1);
                     }
                  }
                  §§goto(addr19);
               }
               do
               {
                  param1.enteredSensor(this);
               }
               while(_loc3_ && _loc3_);
               
               addr44:
            }
            addr19:
            return;
         }
         §§goto(addr44);
      }
      
      override public function collisionEnded(param1:§7B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§,"k§.indexOf(param1)));
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ || this))
                        {
                           break;
                        }
                        if(§§pop() != -1)
                        {
                           while(true)
                           {
                              this.§,"k§.splice(_loc2_,1);
                              do
                              {
                                 param1.leftSensor(this);
                              }
                              while(!_loc3_);
                              
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                           addr59:
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
