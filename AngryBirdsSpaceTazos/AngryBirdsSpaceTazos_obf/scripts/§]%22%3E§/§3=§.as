package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.set;
   import §'!&§.b2Body;
   import §'!&§.b2BodyDef;
   import §'!&§.b2FixtureDef;
   import §'!&§.b2World;
   import §7!8§.Sprite;
   
   public class §3=§ extends §%!+§
   {
       
      
      protected var §1"+§:set;
      
      protected var §>0§:Vector.<§<!=§>;
      
      public function §3=§(param1:Sprite, param2:b2World, param3:§8X§, param4:set, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§>0§ = new Vector.<§<!=§>();
            while(true)
            {
               this.§1"+§ = param4;
            }
            addr81:
         }
         loop1:
         while(true)
         {
            super(param1,param2,param3,param5,param6,0);
            while(_loc7_)
            {
               this.§6n§(param5,param6);
               if(!(_loc7_ || param2))
               {
                  continue;
               }
               if(!_loc8_)
               {
                  break loop1;
               }
               §§goto(addr81);
            }
         }
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §6n§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_ || param1)
         {
            _loc3_.type = b2Body.b2_staticBody;
            while(true)
            {
               §§push(_loc3_.position);
               addr87:
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
               loop6:
               while(!(_loc6_ && param2))
               {
                  §'"F§.SetUserData(this);
                  if(!_loc5_)
                  {
                     continue;
                  }
                  addr34:
                  if(_loc5_ || this)
                  {
                     if(_loc5_)
                     {
                        if(true)
                        {
                           var _loc4_:b2FixtureDef;
                           (_loc4_ = new b2FixtureDef()).shape = this.§1"+§.getB2Shape(this.scale);
                           if(_loc5_ || _loc3_)
                           {
                              _loc4_.§!!h§ = true;
                           }
                           § ]§ = §'"F§.CreateFixture(_loc4_);
                           addr140:
                           if(!_loc5_)
                           {
                              §§goto(addr140);
                           }
                           return;
                        }
                        while(true)
                        {
                           §'"F§ = mWorld.CreateBody(_loc3_);
                           continue loop6;
                        }
                        addr45:
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(_loc3_.position);
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(_loc5_ || param1)
                              {
                                 §§pop().y = §§pop();
                                 while(true)
                                 {
                                    §§goto(addr45);
                                    §§goto(addr34);
                                 }
                                 addr83:
                              }
                           }
                           else
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr88);
                        }
                        addr89:
                     }
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function addSensedObject(param1:§<!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1)
            {
               loop0:
               while(this.§>0§.indexOf(param1) == -1)
               {
                  while(true)
                  {
                     this.§>0§.push(param1);
                     do
                     {
                        param1.enteredSensor(this);
                     }
                     while(_loc2_);
                     
                     if(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && this))
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function removeSensedObject(param1:§<!=§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(!(_loc3_ && param1))
               {
                  addr93:
                  §§push(int(this.§>0§.indexOf(param1)));
                  while(true)
                  {
                     _loc2_ = §§pop();
                  }
                  addr98:
               }
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() == -1)
                     {
                        break;
                     }
                     while(_loc4_ || this)
                     {
                        this.§>0§.splice(_loc2_,1);
                        do
                        {
                           param1.leftSensor(this);
                        }
                        while(!_loc4_);
                        
                        if(_loc4_ || _loc2_)
                        {
                           break loop0;
                        }
                     }
                     continue;
                  }
                  §§goto(addr98);
               }
            }
            return;
         }
         §§goto(addr93);
      }
   }
}
