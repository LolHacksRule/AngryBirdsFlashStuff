package §[x§
{
   import §1n§.§,!0§;
   import §1n§.§4!>§;
   import §1n§.§5#§;
   import §1n§.§try §;
   import §3"§.§8+§;
   import §9_§.§6!B§;
   import §9_§.§?!!§;
   import §[K§.§2!1§;
   import §^V§.Sprite;
   import §`6§.§0J§;
   import §`6§.§8!!§;
   import flash.display.Stage;
   
   public class §else§ extends §2^§
   {
       
      
      private var §8!G§:Stage;
      
      public function §else§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8!G§ = param1;
            do
            {
               super(param1);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      override protected function initThemeGraphicsManager() : §try §
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§try §));
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8!G§.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && this))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr81);
                  }
                  §§push(this.§8!G§.loaderInfo.parameters.buildNumber);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        addr80:
                        §§pop();
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr80);
            }
            addr81:
            if(_loc1_)
            {
               §§pop();
               addr64:
               §§push("");
            }
            return new §§pop().§try §(§§pop(),"");
         }
         §§goto(addr64);
      }
      
      override public function get backgroundTextureManager() : §5#§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§2!$§)
            {
               if(_loc1_ || this)
               {
                  return §2!$§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§5#§) : §,!0§
      {
         return new §4!>§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§5#§, param4:Number) : §8!!§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(!_loc6_)
               {
                  §§goto(addr38);
               }
            }
            return new §8!!§(param1,param2,param3,param4);
         }
         addr38:
         return new §0J§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§8+§) : §9"§
      {
         return new §+4§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§8+§) : §?!!§
      {
         return new §6!B§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§8+§) : §2!1§
      {
         return new §2!1§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
   }
}
