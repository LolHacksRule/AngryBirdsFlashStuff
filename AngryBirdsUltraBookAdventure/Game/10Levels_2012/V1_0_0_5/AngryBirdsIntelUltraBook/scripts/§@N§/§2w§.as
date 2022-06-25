package §@N§
{
   import §"G§.§3h§;
   import §"m§.§3!`§;
   import §%Q§.§=[§;
   import §'!9§.Sprite;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §,m§.§'=§;
   import §-w§.§,Q§;
   import §-w§.§6!O§;
   import §-w§.§>!@§;
   import §-w§.§^!&§;
   import §0!N§.§=+§;
   import §68§.§+!`§;
   import §<&§.§^b§;
   import §`!f§.§ '§;
   import flash.display.Stage;
   
   public class §2w§ extends §^g§
   {
       
      
      private var §;p§:Stage;
      
      private var §"!w§:Array;
      
      public function §2w§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§;p§ = param1;
            do
            {
               super(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §&!y§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§"!w§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§"!w§.concat();
      }
      
      public function §''§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§"!w§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr48);
                  }
               }
               return 0;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§"!w§.length;
      }
      
      public function §!=§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§"!w§);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr45:
                     §§push(false);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr49:
                     return this.§"!w§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
            §§goto(addr49);
         }
         §§goto(addr45);
      }
      
      public function §0T§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"!w§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function init(param1:§=+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.init(param1);
         }
         do
         {
            this.§"!w§ = [];
         }
         while(!(_loc3_ || this));
         
      }
      
      override public function setController(param1:§3!`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.setController(param1);
            if(_loc2_ || this)
            {
               addr43:
               if(param1 is §'=§)
               {
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(_loc3_)
         {
            super.handleEngineUpdateStep(param1);
         }
      }
      
      override protected function initThemeGraphicsManager() : §6!O§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§6!O§));
         if(_loc1_)
         {
            §§push(this.§;p§.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr81);
                  }
                  §§push(this.§;p§.loaderInfo.parameters.buildNumber);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr80);
               }
               addr78:
               if(!§§pop())
               {
                  addr80:
                  §§pop();
               }
               §§goto(addr81);
            }
            addr81:
            if(_loc1_)
            {
               §§pop();
               addr64:
               §§push("");
            }
            return new §§pop().§6!O§(§§pop(),"");
         }
         §§goto(addr64);
      }
      
      override protected function initThemeSoundsManager() : §6!O§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§6!O§));
         if(_loc2_ || _loc1_)
         {
            §§push(this.§;p§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr82);
                  }
                  §§push(this.§;p§.loaderInfo.parameters.buildNumber);
                  if(!_loc1_)
                  {
                     §§goto(addr79);
                  }
                  §§goto(addr81);
               }
               addr79:
               if(!§§pop())
               {
                  addr81:
                  §§pop();
               }
               §§goto(addr82);
            }
            addr82:
            if(_loc2_)
            {
               §§pop();
               addr70:
               §§push("");
            }
            return new §§pop().§6!O§(§§pop(),"",false);
         }
         §§goto(addr70);
      }
      
      override protected function initCutSceneManager() : §6!O§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§6!O§));
         if(!_loc1_)
         {
            §§push(this.§;p§.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                     §§goto(addr77);
                  }
                  §§push(this.§;p§.loaderInfo.parameters.buildNumber);
                  if(_loc2_)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr76);
               }
               addr74:
               if(!§§pop())
               {
                  addr76:
                  §§pop();
               }
               §§goto(addr77);
            }
            addr77:
            if(_loc2_ || _loc2_)
            {
               §§pop();
               addr65:
               §§push("");
            }
            return new §§pop().§6!O§(§§pop(),"");
         }
         §§goto(addr65);
      }
      
      override public function get backgroundTextureManager() : §,Q§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§8!Z§)
            {
               if(_loc2_)
               {
                  return §8!Z§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§,Q§) : §^!&§
      {
         return new §>!@§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§,Q§, param4:Number) : §+!`§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(param1 == "BACKGROUND_FB_MOUNTAINS");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr90:
                     loop4:
                     while(true)
                     {
                        §§push(§^b§.§7h§);
                        if(_loc6_)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           §§push(!§§pop());
                           while(true)
                           {
                           }
                        }
                        while(§§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              return new §3h§(param1,param2,param3,param4);
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        return new §+!`§(param1,param2,param3,param4);
                     }
                  }
               }
               §§goto(addr65);
            }
         }
         §§goto(addr90);
      }
      
      override protected function initLevelSlingshot(param1:§=+§) : §>!A§
      {
         return new §7P§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§=+§) : §=[§
      {
         return new § '§(this,param1,new Sprite());
      }
   }
}
