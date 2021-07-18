package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §-!F§ extends §9"k§
   {
      
      public static const §+"§:String = "RedBird";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §+"§ = "RedBird";
         }
      }
      
      private var §""B§:§@!W§;
      
      private var §2!m§:String;
      
      private var §,"+§:Boolean = false;
      
      public function §-!F§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
            do
            {
               this.§2!m§ = param4.getProperty("specialtyObject");
            }
            while(!_loc9_);
            
         }
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            super.specialPower(param1,param2,param3);
         }
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         var _loc6_:Number = §3!t§().GetAngle();
         if(_loc9_)
         {
            §§push(this);
            §§push(§§findproperty(§@!W§));
            §§push(param1);
            §§push(this.§2!m§);
            §§push(_loc4_);
            §§push(_loc5_);
            §§push(_loc6_);
            if(!_loc8_)
            {
               §§push(§§pop() - 2.5);
            }
            §§pop().§""B§ = §§pop().§@!W§(§§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop(),§;=§.§""3§));
            if(_loc9_)
            {
               addr77:
               this.§""B§.init(this);
            }
            var _loc7_:§ [§;
            if(_loc7_ = param1 as § [§)
            {
               if(!_loc8_)
               {
                  _loc7_.§&Q§(200,500,1000,0.2);
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §]l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§""B§ = null;
         }
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2!m§ == null);
            if(_loc1_)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        addr52:
                        §§push(super.canActivateSpecialPower);
                        if(!_loc2_)
                        {
                           addr56:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr56);
                  }
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§""B§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§""B§);
                     addr119:
                     while(true)
                     {
                        §§pop().§?2§(param2);
                        addr121:
                        while(true)
                        {
                        }
                     }
                     addr77:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     loop6:
                     while(true)
                     {
                        super.update(param1,param2);
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §2N§.setAnimation(§4!v§);
                           }
                           addr50:
                        }
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(_loc4_ && param1)
                              {
                                 break;
                              }
                              §§goto(addr77);
                           }
                           addr101:
                           addr100:
                           while(true)
                           {
                              §§push(§2N§.getCurrentAnimationName() == §4!v§);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr50);
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr101);
                           }
                        }
                        §§goto(addr121);
                     }
                     return;
                     addr37:
                  }
               }
               while(true)
               {
                  §§push(this.§,"+§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        addr98:
                        if(§§pop())
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr98);
                  §§goto(addr121);
               }
            }
            §§goto(addr119);
         }
         §§goto(addr37);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
         }
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,"+§ = true;
         }
         do
         {
            super.handleInitialCollision();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.updateBeforeRemoving(param1);
            while(this.§""B§)
            {
               if(!_loc3_)
               {
                  if(param1)
                  {
                     while(_loc2_)
                     {
                        while(true)
                        {
                           param1.removeObject(this.§""B§,false);
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr65:
                  }
                  do
                  {
                     this.§""B§ = null;
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                  }
                  while(!(_loc2_ || _loc3_));
                  
                  break;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
