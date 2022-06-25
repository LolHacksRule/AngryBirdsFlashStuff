package §_-dJ§
{
   import §_-02x§.§_-o7§;
   import §_-0Dg§.§_-0BD§;
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-rz§;
   import §_-8d§.§_-tA§;
   import §_-Ga§.§_-bm§;
   import §_-QI§.§_-DF§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-j7§.§_-cf§;
   import §_-lt§.§_-30§;
   import §_-uY§.Sprite;
   import §_-vJ§.§_-OI§;
   import flash.display.Stage;
   
   public class §_-xW§ extends §_-00u§
   {
       
      
      private var §_-qN§:Stage;
      
      private var §_-0-p§:Array;
      
      public function §_-xW§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-qN§ = param1;
         }
         do
         {
            super(param1);
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §_-fK§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-0-p§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§_-0-p§.concat();
      }
      
      public function §_-pU§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-0-p§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§_-0-p§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop().length;
         }
         addr45:
         return 0;
      }
      
      public function §_-53§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-0-p§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(false);
                     if(_loc3_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return this.§_-0-p§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §_-Jd§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-0-p§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§_-0-p§ = [];
                  }
                  addr68:
               }
               while(true)
               {
                  continue loop0;
                  addr53:
                  §§pop().push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function init(param1:§_-bm§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.init(param1);
         }
         do
         {
            this.§_-0-p§ = [];
         }
         while(!_loc2_);
         
      }
      
      override public function setController(param1:§_-0BD§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.setController(param1);
            if(!(_loc2_ && param1))
            {
               addr44:
               if(param1 is §_-o7§)
               {
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.handleEngineUpdateStep(param1);
         }
      }
      
      override protected function initThemeGraphicsManager() : §_-tA§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§_-tA§));
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-qN§.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr69:
                        §§pop();
                        addr71:
                        §§push("");
                        §§push(this.§_-qN§.loaderInfo.parameters.buildNumber);
                        if(!(_loc1_ && _loc2_))
                        {
                           return new §§pop().§_-tA§(§§pop(),§§pop() || "");
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
      
      override protected function initThemeSoundsManager() : §_-tA§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§_-tA§));
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-qN§.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || this)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        addr63:
                        §§pop();
                        addr65:
                        §§push("");
                        §§push(this.§_-qN§.loaderInfo.parameters.buildNumber);
                        if(_loc1_)
                        {
                           return new §§pop().§_-tA§(§§pop(),§§pop() || "",false);
                           addr73:
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr65);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr63);
      }
      
      override protected function initCutSceneManager() : §_-tA§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§_-tA§));
         if(_loc1_ || _loc1_)
         {
            §§push(this.§_-qN§.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr81);
                  }
                  §§push(this.§_-qN§.loaderInfo.parameters.buildNumber);
                  if(!_loc2_)
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
            if(!(_loc2_ && this))
            {
               §§pop();
               addr69:
               §§push("");
            }
            return new §§pop().§_-tA§(§§pop(),"");
         }
         §§goto(addr69);
      }
      
      override public function get backgroundTextureManager() : §_-0FF§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§_-SV§)
            {
               if(_loc2_ || _loc2_)
               {
                  return §_-SV§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§_-0FF§) : §_-Ew§
      {
         return new §_-rz§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§_-0FF§, param4:Number) : §_-OI§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1 == "BACKGROUND_FB_MOUNTAINS");
            if(!(_loc6_ && param3))
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr99:
                     loop2:
                     while(true)
                     {
                        §§push(§_-AY§.§_-H3§);
                        if(!(_loc6_ && param3))
                        {
                           if(_loc6_)
                           {
                              continue loop3;
                           }
                           addr51:
                           §§push(!§§pop());
                           while(true)
                           {
                              break loop2;
                              §§goto(addr51);
                           }
                        }
                        break;
                     }
                     while(§§pop())
                     {
                        if(_loc6_ && param2)
                        {
                           addr85:
                           break;
                        }
                        if(!(_loc6_ && this))
                        {
                           return new §_-cf§(param1,param2,param3,param4);
                        }
                        §§goto(addr99);
                     }
                     return new §_-OI§(param1,param2,param3,param4);
                  }
                  addr98:
               }
               §§goto(addr52);
            }
            §§goto(addr98);
         }
         §§goto(addr85);
      }
      
      override protected function initLevelSlingshot(param1:§_-bm§) : §_-E0§
      {
         return new §_-SS§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§_-bm§) : §_-30§
      {
         return new §_-DF§(this,param1,new Sprite());
      }
   }
}
