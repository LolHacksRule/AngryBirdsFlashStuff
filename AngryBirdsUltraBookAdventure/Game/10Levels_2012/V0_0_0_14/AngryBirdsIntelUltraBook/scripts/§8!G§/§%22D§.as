package §8!G§
{
   import §!!§.§>4§;
   import §%!c§.§`b§;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §,!<§.§3Q§;
   import §,6§.§!o§;
   import §,6§.§>N§;
   import §,6§.§]!D§;
   import §,6§.§]!f§;
   import §2!!§.§[!A§;
   import §4p§.§#Q§;
   import §9!r§.§[V§;
   import §9E§.Sprite;
   import §@4§.§,!]§;
   import §]![§.§[?§;
   import flash.display.Stage;
   
   public class §"D§ extends §-!7§
   {
       
      
      private var §24§:Stage;
      
      private var §##§:Array;
      
      public function §"D§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§24§ = param1;
            do
            {
               super(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §>!;§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§##§);
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
         return this.§##§.concat();
      }
      
      public function §^!%§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§##§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§##§);
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
      
      public function §#!C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§##§);
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
                     return this.§##§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
            §§goto(addr65);
         }
         §§goto(addr56);
      }
      
      public function §'2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§##§);
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
                     this.§##§ = [];
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
      
      override public function init(param1:§>4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.init(param1);
         }
         do
         {
            this.§##§ = [];
         }
         while(_loc2_ && this);
         
      }
      
      override public function setController(param1:§[!A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setController(param1);
            if(_loc2_)
            {
               addr28:
               if(param1 is §3Q§)
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
      
      override protected function initThemeGraphicsManager() : §]!f§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§]!f§));
         if(_loc2_)
         {
            §§push(this.§24§.loaderInfo.parameters.assetsUrl);
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
                        §§push(this.§24§.loaderInfo.parameters.buildNumber);
                        if(!_loc1_)
                        {
                           return new §§pop().§]!f§(§§pop(),§§pop() || "");
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
      
      override protected function initThemeSoundsManager() : §]!f§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§]!f§));
         if(!(_loc2_ && this))
         {
            §§push(this.§24§.loaderInfo.parameters.assetsUrl);
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
                        §§push(this.§24§.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§]!f§(§§pop(),§§pop() || "",false);
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
      
      override protected function initCutSceneManager() : §]!f§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§]!f§));
         if(_loc1_ || this)
         {
            §§push(this.§24§.loaderInfo.parameters.assetsUrl);
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
                        §§push(this.§24§.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§]!f§(§§pop(),§§pop() || "");
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
      
      override public function get backgroundTextureManager() : §!o§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§]!J§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr42);
               }
            }
            return null;
         }
         addr42:
         return §]!J§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§!o§) : §>N§
      {
         return new §]!D§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§!o§, param4:Number) : §#Q§
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
                        §§push(§,!]§.§,?§);
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
                     return new §#Q§(param1,param2,param3,param4);
                  }
                  addr88:
               }
               §§goto(addr62);
            }
            §§goto(addr88);
         }
         addr68:
         return new §`b§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§>4§) : § R§
      {
         return new §2!7§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§>4§) : §[?§
      {
         return new §[V§(this,param1,new Sprite());
      }
   }
}
