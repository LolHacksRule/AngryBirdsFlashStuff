package §&!T§
{
   import §!![§.§%!H§;
   import §!E§.§?F§;
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §"h§.§1!5§;
   import §+!8§.§-!N§;
   import §2Y§.Sprite;
   import §;!E§.§1!X§;
   import §=!<§.§1!1§;
   import §=!<§.§7#§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §^!5§.§&!E§;
   import §^!5§.§,4§;
   import flash.display.Stage;
   
   public class §<!,§ extends §^!2§
   {
       
      
      private var §18§:Stage;
      
      public function §<!,§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§18§ = param1;
            while(true)
            {
               super(param1);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            super.§-!C§.simulateMultitouch = true;
            if(!(_loc2_ && this))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function init(param1:§&!E§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.init(param1);
         }
      }
      
      override protected function initReplay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?i§ = new §%!H§(§,4§.§0!$§);
         }
      }
      
      override protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§;$§)
            {
               loop0:
               while(true)
               {
                  §;;§ = §%!H§.initialize(§;$§);
                  loop1:
                  while(true)
                  {
                     §;;§.speed = 1;
                     while(true)
                     {
                        §;;§.play();
                        while(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              §null § = -1000;
                              while(!_loc1_)
                              {
                                 §;$§ = null;
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr52:
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override protected function initLevelSlingshot(param1:§&!E§) : §9§
      {
         return new §%%§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§&!E§) : §-!N§
      {
         return new §1!X§(this,param1,new Sprite());
      }
      
      public function §6!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§?i§)
            {
               if(!_loc2_)
               {
                  (§?i§ as §%!H§).§6!Z§(mLevelEngine.currentStep);
               }
            }
         }
      }
      
      override protected function initAnimationManager(param1:§>a§) : §>"§
      {
         return new §7#§(param1);
      }
      
      override protected function initialize(param1:§&!E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.initialize(param1);
         }
      }
      
      override protected function preProcessLevel() : §&!E§
      {
         return §9C§;
      }
      
      override protected function initParticleManager(param1:§>"§, param2:§>a§) : §?F§
      {
         return new §1!5§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §1!1§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§1!1§));
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§18§.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr87);
                  }
                  §§push(this.§18§.loaderInfo.parameters.buildNumber);
                  if(_loc2_ || _loc2_)
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
            if(!(_loc1_ && this))
            {
               §§pop();
               addr60:
               §§push("");
            }
            return new §§pop().§1!1§(§§pop(),"",true,3);
         }
         §§goto(addr60);
      }
      
      override public function get backgroundTextureManager() : §>a§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§2n§)
            {
               if(_loc2_)
               {
                  return §2n§.textureManager;
               }
            }
         }
         return null;
      }
   }
}
