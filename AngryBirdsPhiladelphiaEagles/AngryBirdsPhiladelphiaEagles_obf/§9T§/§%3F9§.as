package §9T§
{
   import § N§.Sprite;
   import §#e§.§"!J§;
   import §#e§.§'?§;
   import §#e§.§1b§;
   import §#e§.§@!+§;
   import §-!&§.§20§;
   import §-!&§.§[J§;
   import §-!<§.§29§;
   import §-!<§.§5!5§;
   import §-!O§.§?Z§;
   import §1&§.§["§;
   import §1&§.§]T§;
   import §5Z§.§[Z§;
   import §<!A§.§,-§;
   import §^]§.§[z§;
   import §^]§.§]X§;
   import flash.display.Stage;
   
   public class §?9§ extends §1r§
   {
       
      
      private var §@&§:Stage;
      
      private var §?$§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §?9§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@&§ = param1;
         }
         do
         {
            super(param1);
         }
         while(!_loc3_);
         
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?$§ = param1;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§?$§)
            {
               while(true)
               {
                  §§push(param1);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * this.timeMultiplier);
                     if(_loc5_)
                     {
                        addr100:
                        §§push(Number(§§pop()));
                     }
                     loop1:
                     while(true)
                     {
                        param1 = §§pop();
                        addr102:
                        while(true)
                        {
                           §§push(§[Z§.§[A§);
                           if(_loc5_ || this)
                           {
                              if(!§§pop())
                              {
                                 continue loop1;
                              }
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              addr80:
                              §§pop().speed = this.timeMultiplier;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr19);
         }
         §§goto(addr102);
      }
      
      override public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(mReadyToRun)
            {
               if(_loc7_)
               {
                  addr23:
                  clearLevel();
               }
            }
            var _loc3_:§[z§ = §,o§();
            var _loc4_:§]X§;
            (_loc4_ = new §]X§()).left = 0;
            if(_loc7_)
            {
               §§push(_loc4_);
               §§push(§?Z§.§&5§);
               if(_loc7_ || _loc3_)
               {
                  §§push(-§§pop());
                  if(!_loc6_)
                  {
                     §§push(10);
                     if(!(_loc6_ && _loc3_))
                     {
                        addr171:
                        §§push(§§pop() / §§pop());
                        if(!(_loc6_ && this))
                        {
                           addr169:
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§?Z§.§&5§);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop() * 1.3);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(§?Z§.§@!C§);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * 1.3);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().right = §§pop();
                              _loc4_.y = -13.929;
                              while(true)
                              {
                                 if(_loc7_ || this)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                                 addr84:
                                 _loc4_.x = §?Z§.§@!C§;
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 addr47:
                                 _loc4_.id = §?Z§.§2d§;
                                 do
                                 {
                                    _loc3_.§-!L§(_loc4_);
                                 }
                                 while(!_loc7_);
                                 
                                 while(false)
                                 {
                                    §§goto(addr47);
                                 }
                                 var _loc5_:§]X§;
                                 (_loc5_ = new §]X§()).top = _loc4_.top;
                                 if(_loc7_)
                                 {
                                    _loc5_.bottom = _loc4_.bottom;
                                    loop5:
                                    while(true)
                                    {
                                       _loc5_.left = 150;
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + §?Z§.§@!C§);
                                       }
                                       §§pop().right = §§pop();
                                       §§push(_loc5_);
                                       §§push(_loc5_.top);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + §?Z§.§&5§);
                                       }
                                       §§pop().bottom = §§pop();
                                       _loc5_.y = _loc4_.y;
                                       addr289:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.left);
                                          if(_loc7_)
                                          {
                                             §§push(§?Z§.§@!C§);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() / 2);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().x = §§pop();
                                          _loc5_.id = §?Z§.§`"§;
                                          continue loop5;
                                       }
                                    }
                                 }
                                 §§goto(addr250);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr171);
               }
               §§goto(addr169);
            }
            §§goto(addr45);
         }
         §§goto(addr23);
      }
      
      override protected function initThemeGraphicsManager() : §1b§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§1b§));
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§@&§.loaderInfo.parameters.assetsUrl);
            if(_loc2_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr77);
                  }
                  §§push(this.§@&§.loaderInfo.parameters.buildNumber);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        addr76:
                        §§pop();
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr76);
            }
            addr77:
            if(_loc2_ || _loc2_)
            {
               §§pop();
               addr65:
               §§push("");
            }
            return new §§pop().§1b§(§§pop(),"");
         }
         §§goto(addr65);
      }
      
      override public function get backgroundTextureManager() : §'?§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§&?§)
            {
               if(_loc2_ || _loc2_)
               {
                  return §&?§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§'?§) : §@!+§
      {
         return new §"!J§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'?§, param4:Number) : §["§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(!(_loc5_ && param2))
               {
                  §§goto(addr44);
               }
            }
            return new §["§(param1,param2,param3,param4);
         }
         addr44:
         return new §]T§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§[z§) : §97§
      {
         return new §9j§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§[z§) : §20§
      {
         return new §[J§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§@!+§, param2:§'?§) : §5!5§
      {
         return new §29§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§[z§) : §?Z§
      {
         return new §,-§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§>>§, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(param1.name == "BIRD_SARDINE")
            {
               while(true)
               {
                  param1.§4!9§ = §6O§.§;v§;
                  while(true)
                  {
                  }
               }
               addr53:
            }
            do
            {
               super.shootBird(param1,param2,param3);
               if(!_loc4_)
               {
                  continue;
               }
            }
            while(!_loc4_);
            
            return;
         }
         §§goto(addr53);
      }
   }
}
