package §^#>§
{
   import §!!U§.Sprite;
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §1!2§.b2Joint;
   import §2"Y§.§%"3§;
   import §2"Y§.§,§;
   import §2"Y§.§=+§;
   import §2"Y§.§>"X§;
   import §2"Y§.§?#Q§;
   import §5"i§.b2Settings;
   import §5t§.Log;
   import §69§.§!!u§;
   import §69§.§""H§;
   import §69§.§4!e§;
   import §7!F§.§+r§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7P§.§," §;
   import §7P§.§3!y§;
   import §7P§.§;=§;
   import §9#@§.§ "V§;
   import §9#@§.§1"6§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import §[R§.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §;!;§ extends §#_§
   {
       
      
      protected var §-!4§:§##J§;
      
      protected var §[2§:BitmapData;
      
      protected var §7"n§:Texture;
      
      public function §;!;§(param1:Stage, param2:§,#5§, param3:§!!u§, param4:§+"2§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function get §0"l§() : §>"X§
      {
         return §?4§ as §>"X§;
      }
      
      override protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new §2#!§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §1x§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§+r§));
         if(!_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr80);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        addr79:
                        §§pop();
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr79);
            }
            addr80:
            if(!(_loc1_ && _loc2_))
            {
               §§pop();
               addr54:
               §§push("");
            }
            return new §§pop().§+r§(§§pop(),"",§+!b§,§>"X§(§?4§));
         }
         §§goto(addr54);
      }
      
      override protected function initThemeSoundsManager() : §1x§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§+r§));
         if(_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr52:
                        §§pop();
                        addr54:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc1_)
                        {
                           return new §§pop().§+r§(§§pop(),§§pop() || "",§+!b§,§>"X§(§?4§),false);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr54);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr52);
      }
      
      override protected function initCutSceneManager() : §1x§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§+r§));
         if(_loc1_ || _loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_)
            {
               §§push(§§pop());
               if(_loc1_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr74);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!_loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr73);
               }
               addr61:
               if(!§§pop())
               {
                  addr73:
                  §§pop();
               }
               §§goto(addr74);
            }
            addr74:
            if(_loc1_)
            {
               §§pop();
               addr53:
               §§push("");
            }
            return new §§pop().§+r§(§§pop(),"",§+!b§,§>"X§(§?4§));
         }
         §§goto(addr53);
      }
      
      override protected function initLevelEngine(param1:§8!B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.worldGravity);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            mLevelEngine = new §^P§(this,_loc2_);
         }
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§7#5§, param4:Number) : § "V§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§""H§ = null;
         var _loc5_:§4!e§;
         if((_loc5_ = §?"1§.getBackground(param1)) == null)
         {
            if(_loc8_ || param1)
            {
               Log.log("UNKNOWN LEVEL THEME! " + param1);
               if(!(_loc9_ && this))
               {
                  addr46:
                  §§push(§8!B§.§7#M§);
                  if(!(_loc9_ && param2))
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
               }
               _loc5_ = §?"1§.getBackground(param1);
               addr62:
               var _loc6_:§%"3§ = null;
               if(!(_loc9_ && param1))
               {
                  §§push(this.§0"l§);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param3)
                        {
                           addr96:
                           _loc6_ = this.§0"l§.soundManager;
                           addr99:
                           if(_loc5_ is §""H§)
                           {
                              addr103:
                              _loc7_ = _loc5_ as §""H§;
                              if(!(_loc9_ && param2))
                              {
                                 §§push(this);
                                 §§push(_loc7_);
                                 §§push(param2);
                                 §§push(param3);
                                 §§push(_loc6_);
                                 §§push(param4);
                                 §§push(§3#J§.§3!s§);
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(!§§pop());
                                 }
                                 return §§pop().§9#W§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                              }
                           }
                           return super.initializeLevelBackground(param1,param2,param3,param4);
                           addr94:
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr96);
               }
               §§goto(addr94);
            }
            §§goto(addr46);
         }
         §§goto(addr62);
      }
      
      private function §9#W§(param1:§""H§, param2:Number, param3:§7#5§, param4:§%"3§, param5:Number, param6:Boolean = true) : §1"6§
      {
         return new §1"6§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§8!B§) : §;=§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§1"6§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         §§push(§4!e§.§0!K§);
         if(_loc6_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            if(!(param1 is §=!z§))
            {
               return super.initializeLevelObjectManager(param1);
            }
         }
         _loc3_ = §1!C§ as §1"6§;
         if(!(_loc7_ && _loc3_))
         {
            if(!_loc3_)
            {
               return new §," §(this,param1 as §=!z§,new Sprite(),_loc2_);
            }
            loop0:
            do
            {
               §§push(_loc3_.§?c§);
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     _loc4_ = §§pop();
                     §§push(_loc3_.§ "&§);
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(§§pop());
                     }
                     if(!(_loc7_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_ = §§pop(), _loc7_ && this);
            
         }
         return new §," §(this,param1 as §=!z§,new Sprite(),_loc4_,_loc5_);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§""H§ = null;
         var _loc2_:§4!e§ = §?"1§.getBackground(param1);
         if(_loc4_)
         {
            if(_loc2_ is §""H§)
            {
               addr40:
               _loc3_ = _loc2_ as §""H§;
               if(!(_loc5_ && this))
               {
                  return _loc3_.§9#K§;
               }
            }
            return null;
         }
         §§goto(addr40);
      }
      
      override protected function initializePhysicsConstants(param1:§8!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1.hasGround)
            {
               b2Settings.b2_linearSleepTolerance = b2Settings.§%"A§;
               if(_loc3_)
               {
                  addr43:
               }
               else
               {
                  addr67:
               }
               return;
            }
            if(_loc3_ || _loc2_)
            {
               super.initializePhysicsConstants(param1);
            }
            §§goto(addr67);
         }
         §§goto(addr43);
      }
      
      override protected function levelInitialized() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.levelInitialized();
            while(true)
            {
               this.§["-§();
               while(_loc2_)
               {
                  this.§@"w§();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      protected function §["-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[2§ = new BitmapData(16,16,true,2298413056);
            while(true)
            {
               this.§7"n§ = textureManager.getTextureFromBitmapData(this.§[2§);
               while(true)
               {
                  this.§-!4§ = new §##J§(new Sprite(),this.§7"n§,§3!y§.§>!1§ / 1000,§3!y§.§9#3§);
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            slingshot.aimingLineSprite.addChild(this.§-!4§.sprite);
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function §@"w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;"P§(20,1000 / 30);
         }
      }
      
      protected function §;"P§(param1:int, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = new b2Vec2();
         if(!(_loc10_ && this))
         {
            _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
            loop0:
            while(true)
            {
               §§push(this.§!#3§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr91:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                        }
                        addr93:
                     }
                     else
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
                                 }
                                 addr75:
                              }
                           }
                           else
                           {
                              mLevelEngine.mWorld.SetGravity(new b2Vec2(_loc3_.x / 10,_loc3_.y / 10));
                              if(!(_loc10_ && this))
                              {
                                 if(false)
                                 {
                                    continue loop1;
                                 }
                                 addr101:
                                 var _loc4_:b2Joint = mLevelEngine.mWorld.GetJointList();
                                 var _loc5_:Vector.<b2Joint> = new Vector.<b2Joint>();
                                 addr153:
                                 if(_loc4_)
                                 {
                                    if(_loc4_.IsMotorEnabled())
                                    {
                                       if(_loc9_)
                                       {
                                          _loc5_.push(_loc4_);
                                          if(_loc9_ || this)
                                          {
                                             _loc4_.EnableMotor(false);
                                             if(_loc9_ || param2)
                                             {
                                             }
                                             addr155:
                                             var _loc6_:int = 0;
                                             if(!_loc10_)
                                             {
                                                addr210:
                                                §§push(_loc6_);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   addr219:
                                                   if(§§pop() < param1)
                                                   {
                                                      mLevelEngine.mWorld.Step(param2,10,10);
                                                      mLevelEngine.mWorld.ClearForces();
                                                      addr175:
                                                      addr209:
                                                      addr200:
                                                      §§push(_loc6_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc10_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §%H§.setCollisionsEnabled(false);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     addr160:
                                                                     _loc6_++;
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr175);
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                     return;
                                                                     addr261:
                                                                  }
                                                                  mLevelEngine.mWorld.SetWarmStarting(true);
                                                                  addr267:
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     §%H§.setCollisionsEnabled(true);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr261);
                                                                     addr284:
                                                                  }
                                                                  addr289:
                                                                  §§goto(addr289);
                                                               }
                                                               addr223:
                                                               var _loc7_:int = 0;
                                                               addr222:
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  var _loc8_:* = _loc5_;
                                                                  addr244:
                                                                  for each(_loc4_ in _loc8_)
                                                                  {
                                                                     _loc4_.EnableMotor(true);
                                                                     §§goto(addr244);
                                                                  }
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  mLevelEngine.mWorld.SetGravity(_loc3_);
                                                                  §§goto(addr267);
                                                                  addr250:
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    _loc4_ = _loc4_.§>!>§();
                                    §§goto(addr153);
                                 }
                                 §§goto(addr155);
                              }
                           }
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 break loop6;
                              }
                           }
                        }
                        if(!_loc9_)
                        {
                           continue loop0;
                        }
                        §§goto(addr101);
                        addr71:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§7"n§)
            {
               loop7:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§7"n§);
                  addr109:
                  addr86:
                  while(true)
                  {
                     this.§7"n§ = null;
                     loop4:
                     while(true)
                     {
                        this.§[2§ = null;
                        addr77:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop7;
                  }
               }
               addr105:
            }
            while(true)
            {
               §§push(this.§-!4§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr71:
                        this.§-!4§.dispose();
                     }
                     loop1:
                     while(true)
                     {
                        this.§-!4§ = null;
                        loop2:
                        while(_loc2_)
                        {
                           if(!(_loc1_ && this))
                           {
                              while(true)
                              {
                                 super.clearLevel();
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              return;
                              addr36:
                              addr24:
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr71);
               §§goto(addr86);
            }
         }
         §§goto(addr105);
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(super.update(param1,param2));
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§#"6§();
         }
         return _loc3_;
      }
      
      protected function §#"6§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:Point = null;
         var _loc3_:§=+§ = null;
         var _loc4_:String = null;
         var _loc5_:§8!W§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!(_loc10_ && _loc1_))
         {
            §§push(Boolean(this.§-!4§));
            if(_loc9_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     §§pop();
                     addr84:
                     if(_loc9_)
                     {
                        §§push(Boolean(slingshot));
                     }
                     if(_loc1_)
                     {
                        addr86:
                        _loc3_ = §?4§.getItem(_loc1_) as §=+§;
                        if(_loc9_)
                        {
                           if(_loc3_)
                           {
                              if(!_loc10_)
                              {
                                 addr99:
                                 _loc4_ = _loc3_.getProperty("aimingAidSprite");
                              }
                              if(_loc5_ = §6V§.getTexture(_loc4_))
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(this.§-!4§);
                                    if(_loc9_)
                                    {
                                       §§pop().§>!o§(_loc5_.texture);
                                       if(_loc9_ || _loc1_)
                                       {
                                          addr127:
                                          if(_loc3_.shape is §?#Q§)
                                          {
                                             if(_loc9_ || _loc3_)
                                             {
                                                addr154:
                                                §§push(§?#Q§(_loc3_.shape).radius);
                                                if(_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc6_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   addr150:
                                                   §§push(this.§-!4§);
                                                }
                                                _loc2_ = slingshot.getPosition();
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§push(this.§-!4§);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(slingshot.mDragging));
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(slingshot.canShootTheBird));
                                                                  loop4:
                                                                  for(; _loc9_ || _loc2_; §§push(this.§-!4§),if(!_loc9_)
                                                                  {
                                                                     continue;
                                                                  },§§pop().§-!V§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects),if(!_loc10_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr197);
                                                                        }
                                                                        §§goto(addr350);
                                                                     }
                                                                     §§goto(addr297);
                                                                  },§§goto(addr211))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(§§pop().enabled);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr317:
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_ == null);
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(-Math.cos(slingshot.shootingAngle / (180 / Math.PI)));
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                         }
                                                                                                         addr266:
                                                                                                      }
                                                                                                      loop14:
                                                                                                      while(!_loc10_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Math.sin(slingshot.shootingAngle / (180 / Math.PI))));
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               break;
                                                                                                               addr211:
                                                                                                            }
                                                                                                            _loc8_ = §§pop();
                                                                                                            while(!(_loc10_ && this))
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§goto(addr266);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   addr244:
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                             addr282:
                                                                                          }
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                   addr297:
                                                                                                }
                                                                                                §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(Boolean(slingshot.mDragging));
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().enabled = §§pop();
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                }
                                                §§goto(addr317);
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§pop().§"Q§(_loc6_);
                                    §§goto(addr154);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr154);
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc10_ && _loc2_))
               {
                  §§push(slingshot.getCurrentBirdType());
                  if(_loc9_)
                  {
                     _loc1_ = §§pop();
                     if(!(_loc10_ && _loc1_))
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr84);
               }
               §§goto(addr86);
            }
            addr350:
            return;
         }
         §§goto(addr84);
      }
      
      protected function get §!#3§() : §," §
      {
         return levelObjects as §," §;
      }
   }
}
