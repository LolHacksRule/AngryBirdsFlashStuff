package §#!O§
{
   import §!!K§.§else§;
   import §!;§.§9p§;
   import §-%§.§#!J§;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §3!G§.§ y§;
   import §7!B§.Sprite;
   import §9!U§.§49§;
   import §9Y§.§9=§;
   import §<x§.§-^§;
   import §=b§.§>!e§;
   import §^!Y§.§'R§;
   import §^!Y§.§]e§;
   import §^!Y§.§^!'§;
   import §^!Y§.§else §;
   import flash.display.Stage;
   
   public class §9-§ extends §'u§
   {
       
      
      private var §8!x§:Stage;
      
      private var § %§:Array;
      
      public function §9-§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!x§ = param1;
            do
            {
               super(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §=!$§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§ %§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§ %§.concat();
      }
      
      public function § null§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§ %§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§ %§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().length;
         }
         addr50:
         return 0;
      }
      
      public function §;w§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§ %§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr56:
                     §§push(false);
                     if(_loc3_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return this.§ %§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
            §§goto(addr65);
         }
         §§goto(addr56);
      }
      
      public function §;!O§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ %§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     this.§ %§ = [];
                  }
                  addr74:
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function init(param1:§ y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.init(param1);
         }
         do
         {
            this.§ %§ = [];
         }
         while(_loc2_ && this);
         
      }
      
      override public function setController(param1:§#!J§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setController(param1);
            if(_loc2_)
            {
               addr28:
               if(param1 is §9p§)
               {
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
      
      override protected function initThemeGraphicsManager() : §]e§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§]e§));
         if(_loc2_)
         {
            §§push(this.§8!x§.loaderInfo.parameters.assetsUrl);
            if(_loc2_)
            {
               §§push(§§pop());
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr59:
                        §§pop();
                        addr61:
                        §§push("");
                        §§push(this.§8!x§.loaderInfo.parameters.buildNumber);
                        if(!_loc1_)
                        {
                           return new §§pop().§]e§(§§pop(),§§pop() || "");
                           addr69:
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr61);
               }
               §§goto(addr69);
            }
         }
         §§goto(addr59);
      }
      
      override protected function initThemeSoundsManager() : §]e§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§]e§));
         if(!(_loc2_ && this))
         {
            §§push(this.§8!x§.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc1_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || this)
                     {
                        addr73:
                        §§pop();
                        addr75:
                        §§push("");
                        §§push(this.§8!x§.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§]e§(§§pop(),§§pop() || "",false);
                           addr83:
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr75);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr73);
      }
      
      override protected function initCutSceneManager() : §]e§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§]e§));
         if(_loc1_ || this)
         {
            §§push(this.§8!x§.loaderInfo.parameters.assetsUrl);
            if(_loc1_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr63:
                        §§pop();
                        addr65:
                        §§push("");
                        §§push(this.§8!x§.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§]e§(§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr65);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr63);
      }
      
      override public function get backgroundTextureManager() : §'R§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§"#§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr42);
               }
            }
            return null;
         }
         addr42:
         return §"#§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§'R§) : §else §
      {
         return new §^!'§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'R§, param4:Number) : §-^§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1 == "BACKGROUND_FB_MOUNTAINS");
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr89:
                     loop2:
                     while(true)
                     {
                        §§push(§else§.§@g§);
                        if(_loc5_ || param1)
                        {
                           if(_loc6_)
                           {
                              continue loop3;
                           }
                           addr61:
                           §§push(!§§pop());
                           while(true)
                           {
                              break loop2;
                              §§goto(addr61);
                           }
                        }
                        break;
                     }
                     while(§§pop())
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr89);
                     }
                     return new §-^§(param1,param2,param3,param4);
                  }
                  addr88:
               }
               §§goto(addr62);
            }
            §§goto(addr88);
         }
         addr68:
         return new §9=§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§ y§) : §8![§
      {
         return new §9!8§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§ y§) : §>!e§
      {
         return new §49§(this,param1,new Sprite());
      }
   }
}
