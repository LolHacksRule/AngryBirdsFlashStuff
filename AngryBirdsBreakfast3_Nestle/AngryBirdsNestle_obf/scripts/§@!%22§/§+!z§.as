package §@!"§
{
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §0"!§.b2Body;
   import §0"!§.b2BodyDef;
   import §0"!§.b2FixtureDef;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §3!J§.Sprite;
   
   public class §+!z§ extends §6"$§
   {
       
      
      protected var §+G§:§[_§;
      
      protected var §5r§:Vector.<§#!v§>;
      
      public function §+!z§(param1:Sprite, param2:b2World, param3:§@-§, param4:§[_§, param5:§,!A§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§5r§ = new Vector.<§#!v§>();
            loop0:
            while(true)
            {
               this.§+G§ = param4;
               while(true)
               {
                  super(param1,param2,param3,param5);
                  loop2:
                  while(!(_loc6_ && param3))
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§@!T§(§ "8§.x,§ "8§.y);
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §@!T§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_ || this)
         {
            _loc3_.type = b2Body.b2_staticBody;
            while(true)
            {
               §§push(_loc3_.position);
               loop1:
               while(true)
               {
                  §§push(param1);
                  addr88:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop1;
                  }
               }
            }
            addr94:
         }
         loop4:
         while(true)
         {
            addr50:
            addr95:
            while(true)
            {
               §<!@§ = §^d§.CreateBody(_loc3_);
               while(true)
               {
                  if(_loc5_)
                  {
                     §<!@§.SetUserData(this);
                     if(!(_loc6_ && this))
                     {
                        continue loop4;
                     }
                     continue;
                  }
                  §§goto(addr94);
               }
            }
            var _loc4_:b2FixtureDef;
            (_loc4_ = new b2FixtureDef()).shape = this.§+G§.getB2Shape(this.scale);
            if(_loc5_)
            {
               _loc4_.§7'§ = true;
            }
            addr140:
            §," § = §<!@§.CreateFixture(_loc4_);
            if(_loc6_ && param1)
            {
               §§goto(addr140);
            }
            return;
         }
      }
      
      override public function collidedWith(param1:§#!v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               loop0:
               for(; this.§5r§.indexOf(param1) == -1; if(_loc3_ || _loc3_)
               {
                  break;
               })
               {
                  loop1:
                  while(true)
                  {
                     this.§5r§.push(param1);
                     addr72:
                     while(true)
                     {
                        param1.§9!2§(this);
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function collisionEnded(param1:§#!v§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§5r§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr99:
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc2_)
                        {
                           if(§§pop() != -1)
                           {
                              do
                              {
                                 this.§5r§.splice(_loc2_,1);
                                 while(_loc4_ || this)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              while(_loc3_ && _loc3_);
                              
                              break;
                           }
                           break;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
   }
}
