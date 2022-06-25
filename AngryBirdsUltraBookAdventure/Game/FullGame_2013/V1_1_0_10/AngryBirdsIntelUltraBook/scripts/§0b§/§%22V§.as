package §0b§
{
   import § var§.§ 4§;
   import §"!i§.§"!'§;
   import §"m§.§=!L§;
   import §,!h§.§0d§;
   import §2m§.§<!?§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §48§.§5Y§;
   import §8!A§.§-!i§;
   import §;3§.§'m§;
   import §=`§.§ !;§;
   import §=`§.§-8§;
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §`g§.Sprite;
   import flash.display.Stage;
   
   public class §"V§ extends §5G§
   {
       
      
      private var §@e§:Stage;
      
      private var §;!+§:Array;
      
      public function §"V§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@e§ = param1;
            do
            {
               super(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function §1!;§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;!+§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§;!+§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop().concat();
         }
         addr44:
         return null;
      }
      
      public function §,,§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§;!+§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§;!+§);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop().length;
         }
         addr54:
         return 0;
      }
      
      public function §^"!§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§;!+§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     addr40:
                     §§push(false);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr44:
                     return this.§;!+§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
            §§goto(addr44);
         }
         §§goto(addr40);
      }
      
      public function §0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§;!+§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc2_ || _loc2_)
               {
                  this.§;!+§ = [];
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
      }
      
      override public function init(param1:§"!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.init(param1);
            do
            {
               this.§;!+§ = [];
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      override public function setController(param1:§5Y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.setController(param1);
            if(!(_loc3_ && this))
            {
               if(param1 is §0d§)
               {
               }
            }
         }
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clearLevel();
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.handleEngineUpdateStep(param1);
         }
      }
      
      override protected function initThemeGraphicsManager() : § !;§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§ !;§));
         if(_loc2_)
         {
            §§push(this.§@e§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr69:
                        §§pop();
                        addr71:
                        §§push("");
                        §§push(this.§@e§.loaderInfo.parameters.buildNumber);
                        if(_loc2_ || this)
                        {
                           return new §§pop().§ !;§(§§pop(),§§pop() || "");
                           addr84:
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr71);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr69);
      }
      
      override protected function initThemeSoundsManager() : § !;§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§ !;§));
         if(_loc2_ || _loc2_)
         {
            §§push(this.§@e§.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr87);
                  }
                  §§push(this.§@e§.loaderInfo.parameters.buildNumber);
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        addr86:
                        §§pop();
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr86);
            }
            addr87:
            if(_loc2_ || _loc2_)
            {
               §§pop();
               addr75:
               §§push("");
            }
            return new §§pop().§ !;§(§§pop(),"",false);
         }
         §§goto(addr75);
      }
      
      override protected function initCutSceneManager() : § !;§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§ !;§));
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§@e§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && this))
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        addr69:
                        §§pop();
                        addr71:
                        §§push("");
                        §§push(this.§@e§.loaderInfo.parameters.buildNumber);
                        if(!(_loc1_ && _loc1_))
                        {
                           return new §§pop().§ !;§(§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr71);
               }
               §§goto(addr86);
            }
         }
         §§goto(addr69);
      }
      
      override public function get backgroundTextureManager() : §6!I§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§7%§)
            {
               if(!_loc1_)
               {
                  return §7%§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§6!I§) : §7!V§
      {
         return new §-8§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§6!I§, param4:Number) : §-!i§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(param1 == "BACKGROUND_FB_MOUNTAINS");
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 return new §=!L§(param1,param2,param3,param4);
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(§<!?§.§@!_§);
                                 if(!(_loc5_ || param3))
                                 {
                                    continue loop4;
                                 }
                                 if(_loc5_ || param3)
                                 {
                                    continue loop0;
                                 }
                                 addr103:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              addr97:
                           }
                        }
                        return new §-!i§(param1,param2,param3,param4);
                     }
                  }
                  addr79:
               }
               §§goto(addr103);
            }
         }
         §§goto(addr97);
      }
      
      override protected function initLevelSlingshot(param1:§"!'§) : §1!g§
      {
         return new §0=§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§"!'§) : § 4§
      {
         return new §'m§(this,param1,new Sprite());
      }
   }
}
