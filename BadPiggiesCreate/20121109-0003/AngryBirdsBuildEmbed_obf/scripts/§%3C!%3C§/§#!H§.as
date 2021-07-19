package §<!<§
{
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §-!`§.Sprite;
   import §1=§.§'F§;
   import §1=§.§-d§;
   import §=U§.§&!U§;
   import §=U§.§-b§;
   import §=U§.§3p§;
   import §=U§.§<!f§;
   import §>!'§.§'!Y§;
   import §>!'§.§;T§;
   import §`a§.§ !U§;
   import flash.display.Stage;
   
   public class §#!H§ extends §7E§
   {
       
      
      private var §"$§:Stage;
      
      public function §#!H§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"$§ = param1;
            if(_loc3_)
            {
               super(param1);
            }
         }
      }
      
      override protected function initThemeGraphicsManager() : §-b§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§-b§));
         if(!(_loc1_ && this))
         {
            §§push(this.§"$§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc2_ || this)
               {
                  if(!§§pop())
                  {
                     §§goto(addr87);
                  }
                  §§push(this.§"$§.loaderInfo.parameters.buildNumber);
                  if(_loc2_)
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr86);
               }
               addr84:
               if(!§§pop())
               {
                  addr86:
                  §§pop();
               }
               §§goto(addr87);
            }
            addr87:
            if(_loc2_ || this)
            {
               §§pop();
               addr75:
               §§push("");
            }
            return new §§pop().§-b§(§§pop(),"");
         }
         §§goto(addr75);
      }
      
      override public function get backgroundTextureManager() : §3p§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(§%^§)
            {
               if(_loc1_)
               {
                  return §%^§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§3p§) : §&!U§
      {
         return new §<!f§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§3p§, param4:Number) : §-d§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(!_loc6_)
               {
                  return new §'F§(param1,param2,param3,param4);
               }
            }
         }
         return new §-d§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§2! §) : §;§
      {
         return new §5!Y§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§2! §) : §'!Y§
      {
         return new §;T§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§2! §) : § !U§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§1^§.§ ]§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         §§push((_loc4_ = parseInt(_loc3_[0])) < 9);
         if(!(_loc6_ && param1))
         {
            if(§§pop())
            {
               if(!(_loc6_ && this))
               {
                  §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     §§push(_loc2_ == "3-2");
                     if(_loc5_ || param1)
                     {
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr100);
               }
            }
         }
         addr97:
         if(!§§pop())
         {
            if(_loc5_)
            {
               addr100:
               return new § !U§(this,param1,1.1);
            }
         }
         return new § !U§(this,param1,1);
      }
   }
}
