package §;+§
{
   import §#!,§.Sprite;
   import §,!7§.§%$§;
   import §,!7§.AnimationManager;
   import §,!7§.DynamicContentManager;
   import §,!7§.TextureManager;
   import §-s§.LevelBackground;
   import §6!!§.LevelObjectManager;
   import §7!>§.Starling;
   import §91§.§else§;
   import §=C§.FacebookLevelObjectManager;
   import §>!_§.LevelModel;
   import §[!h§.§?X§;
   import §[w§.§?O§;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import flash.display.Stage;
   
   public class FacebookLeveLMain extends LevelMain
   {
       
      
      private var §[;§:Stage;
      
      private var §3v§:Array;
      
      public function FacebookLeveLMain(stage:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§[;§ = stage;
               loop2:
               while(true)
               {
                  while(true)
                  {
                     super(stage);
                     while(!(_loc3_ && this))
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §!!X§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            for(§§push(this.§3v§); §§pop(); )
            {
               §§push(this.§3v§);
               if(!_loc1_)
               {
                  return §§pop().concat();
               }
            }
         }
         return null;
      }
      
      public function §@n§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               §§push(this.§3v§);
               loop1:
               while(§§pop())
               {
                  continue loop0;
                  while(true)
                  {
                     §§push(this.§3v§);
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return §§pop().length;
               }
               return 0;
            }
         }
         §§goto(addr79);
      }
      
      public function §?y§(powerup:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || this)
         {
            §§push(this.§3v§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.§3v§);
                     if(!_loc3_)
                     {
                        §§push(§§pop().indexOf(powerup) >= 0);
                        if(_loc3_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr72);
            }
         }
         addr72:
         false;
         return §§pop();
      }
      
      public function §=?§(powerup:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(this.§3v§);
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     continue;
                  }
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§3v§ = [];
                        loop5:
                        while(!_loc3_)
                        {
                           while(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                              §§pop().push(powerup);
                              while(!(_loc2_ || this))
                              {
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    continue loop1;
                                 }
                                 continue loop5;
                                 continue loop5;
                              }
                           }
                           continue loop4;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      override public function init(level:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         while(true)
         {
            while(_loc2_)
            {
               super.init(level);
               loop2:
               while(!_loc3_)
               {
                  loop3:
                  while(true)
                  {
                     this.§3v§ = [];
                     while(true)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      override public function setController(controller:§else§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               while(_loc3_)
               {
                  super.setController(controller);
                  while(_loc3_)
                  {
                  }
               }
            }
         }
         for(; controller is §?O§; if(_loc3_ || _loc2_)
         {
            break;
         })
         {
            if(_loc2_)
            {
               continue;
            }
            if(!_loc2_)
            {
               continue;
            }
            §§goto(addr85);
         }
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            do
            {
               super.clearLevel();
               while(_loc2_)
               {
               }
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      override protected function updateWithTime(deltaTime:Number, updateGraphics:Boolean, updatePhysics:Boolean, updateSlingshot:Boolean) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
         }
         if(_loc6_)
         {
         }
         while(true)
         {
            while(!(_loc6_ && this))
            {
               while(_loc5_)
               {
                  while(_loc6_)
                  {
                  }
                  if(!(_loc6_ && this))
                  {
                     return super.updateWithTime(deltaTime,updateGraphics,updatePhysics,updateSlingshot);
                  }
               }
            }
         }
      }
      
      override public function handleEngineUpdateStep(timeStep:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            do
            {
               super.handleEngineUpdateStep(timeStep);
               continue loop0;
            }
            while(!(_loc2_ || timeStep));
            
            return;
         }
      }
      
      override protected function initThemeGraphicsManager() : DynamicContentManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         §§push(§§findproperty(DynamicContentManager));
         if(!_loc1_)
         {
            if(!_loc1_)
            {
               addr35:
               §§push(this.§[;§.loaderInfo.parameters.assetsUrl);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§pop();
                           addr71:
                           §§push("");
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 §§goto(addr88);
                              }
                              §§push("");
                           }
                        }
                        §§goto(addr88);
                     }
                     addr88:
                     §§push(this.§[;§.loaderInfo.parameters.buildNumber);
                     if(!(_loc1_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                           }
                        }
                     }
                     §§goto(addr109);
                  }
                  addr109:
                  return new §§pop().DynamicContentManager(§§pop(),§§pop());
               }
               §§goto(addr88);
            }
            §§goto(addr71);
         }
         §§goto(addr35);
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         §§push(§§findproperty(DynamicContentManager));
         if(_loc2_)
         {
            if(!(_loc1_ && _loc1_))
            {
               addr35:
               §§push(this.§[;§.loaderInfo.parameters.assetsUrl);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr70:
                           §§pop();
                           §§push("");
                           if(!(_loc1_ && _loc1_))
                           {
                              addr80:
                              if(_loc2_ || this)
                              {
                                 addr88:
                                 §§push(this.§[;§.loaderInfo.parameters.buildNumber);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc1_)
                                          {
                                             §§pop();
                                             addr119:
                                             §§push("");
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr128:
                                             }
                                          }
                                          §§goto(addr128);
                                       }
                                       §§push(false);
                                    }
                                    return new §§pop().DynamicContentManager(§§pop(),§§pop(),§§pop());
                                 }
                                 §§goto(addr128);
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr35);
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         §§push(§§findproperty(DynamicContentManager));
         if(_loc2_)
         {
            if(!_loc1_)
            {
               addr30:
               §§push(this.§[;§.loaderInfo.parameters.assetsUrl);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           addr65:
                           §§pop();
                           §§push("");
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!(_loc1_ && this))
                              {
                                 §§goto(addr93);
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                     addr93:
                     §§push(this.§[;§.loaderInfo.parameters.buildNumber);
                     if(_loc2_)
                     {
                        addr101:
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              addr107:
                              §§push("");
                           }
                        }
                     }
                     return new §§pop().DynamicContentManager(§§pop(),§§pop());
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr65);
         }
         §§goto(addr30);
      }
      
      override public function get backgroundTextureManager() : TextureManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!_loc1_)
         {
            do
            {
               if(!§2h§)
               {
                  return null;
               }
               if(_loc1_ && _loc2_)
               {
               }
            }
            while(_loc1_ && _loc2_);
            
         }
         return §2h§.textureManager;
      }
      
      override protected function initAnimationManager(textureManager:TextureManager) : AnimationManager
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(_loc3_)
            {
            }
         }
         return new §%$§(textureManager);
      }
      
      override protected function initLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number) : LevelBackground
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     loop7:
                     while(!(_loc5_ && this))
                     {
                        §§push(Starling.isSoftware);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           if(_loc6_)
                           {
                              addr57:
                              if(!(_loc5_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    addr77:
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc6_ || name))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop7;
                                                §§goto(addr57);
                                             }
                                             addr121:
                                          }
                                       }
                                       addr101:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          return new LevelBackground(name,groundLevel,textureManager,mimimumScale);
                                       }
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop7;
                                    }
                                    if(!_loc5_)
                                    {
                                       return new §?X§(name,groundLevel,textureManager,mimimumScale);
                                       addr95:
                                    }
                                    continue loop1;
                                 }
                                 addr100:
                                 while(true)
                                 {
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr121);
                           }
                        }
                        §§goto(addr77);
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      override protected function initLevelSlingshot(level:LevelModel) : LevelSlingshot
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || level)
         {
         }
         if(_loc2_ || this)
         {
            while(!_loc2_)
            {
            }
         }
         return new FacebookLevelSlingshot(this,level,new Sprite());
      }
      
      override protected function initLevelObjectManager(level:LevelModel) : LevelObjectManager
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         while(!(_loc2_ || this))
         {
         }
         return new FacebookLevelObjectManager(this,level,new Sprite());
      }
   }
}
