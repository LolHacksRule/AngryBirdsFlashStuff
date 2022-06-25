package §@!H§
{
   import §!+§.§5w§;
   import §!+§.§=H§;
   import §!+§.§>G§;
   import §+!"§.§@P§;
   import §4!H§.§?_§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §?b§.§4K§;
   import §?b§.§7!,§;
   import §@!!§.§=_§;
   import §@D§.§6I§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §"E§ extends §`r§
   {
      
      public static const §!!F§:int = 0;
      
      public static const §5Y§:int = 1;
      
      public static const §6!6§:int = 2;
      
      public static const §=!C§:int = 3;
      
      public static const §;9§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §return§:int = 7;
      
      protected static const §@q§:Number = 0.001;
      
      public static const §!!H§:Number = 2000;
      
      public static const §^!<§:Number = 2500;
      
      public static const §`!>§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!F§ = 0;
            §5Y§ = 1;
            if(_loc1_ || §"E§)
            {
               §6!6§ = 2;
               if(!_loc2_)
               {
                  §=!C§ = 3;
                  if(!_loc2_)
                  {
                     §;9§ = 4;
                     if(!(_loc2_ && §"E§))
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr82);
                  }
               }
               addr61:
               LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
               LEVEL_STATE_VICTORY2_END = 6;
               §return§ = 7;
               §§goto(addr67);
            }
            addr67:
            if(_loc1_)
            {
               addr82:
               §§push(§§findproperty(§@q§));
               §§push(§=_§.§"o§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() / 100);
               }
               §§pop().§@q§ = §§pop();
               if(!_loc1_)
               {
               }
               §§goto(addr105);
            }
            §!!H§ = 2000;
            §^!<§ = 2500;
            if(_loc1_)
            {
               §§goto(addr105);
            }
            addr105:
            §`!>§ = 5;
            return;
         }
         §§goto(addr82);
      }
      
      public var §7H§:int = 0;
      
      protected var §1L§:int = 0;
      
      public var §42§:Number;
      
      protected var §%l§:Number = 0;
      
      protected var §0!7§:Boolean = false;
      
      private var §&C§:Number = 0;
      
      public var § !'§:Number = 0;
      
      protected var §?Z§:Boolean;
      
      protected var §^!9§:Number = 0;
      
      protected var §-!-§:Number = 0;
      
      protected var §[I§:Boolean = true;
      
      protected var §7'§:§?_§;
      
      public function §"E§(param1:§7!,§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§7'§ = new §?_§();
            if(_loc3_ || param1)
            {
               addr45:
               super(param1);
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            this.§7'§.assign(0);
            this.§7H§ = -1;
            this.§1L§ = 0;
            this.§%l§ = 0;
            if(_loc2_ || _loc2_)
            {
               this.§0!7§ = false;
               this.§9M§(§!!F§);
               §§goto(addr67);
            }
            §§goto(addr75);
         }
         addr67:
         this.§42§ = §!!H§;
         § Z§(true);
         if(!_loc1_)
         {
            addr75:
            §4!%§.objects.setDamageEnabled(true);
            §4!%§.objects.setGroundTextureEnabled(true);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1 = §4!%§.update(param1,true);
            if(_loc3_ || param1)
            {
               this.§8@§(param1);
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr55);
            }
            this.§16§(param1);
         }
         addr55:
      }
      
      private function §8@§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§1L§ != 0)
            {
               if(_loc3_)
               {
                  addr35:
                  §4!%§.camera.adjustManualScale(this.§1L§ > 0,param1 * §@q§);
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!%§.clearLevel();
            if(_loc1_ || this)
            {
               §§goto(addr27);
            }
            §§goto(addr31);
         }
         addr27:
         removeEventListeners();
         if(!_loc2_)
         {
            addr31:
            this.§7H§ = -1;
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §=!"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§4!%§.camera.mCurrentCameraSliderLocation < §=_§.§"C§)
            {
               if(_loc2_)
               {
                  §§push(false);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr73:
                  §§push(true);
               }
               §§goto(addr74);
            }
            else if(!§4!%§.objects.isWorldAtSleep())
            {
               if(!_loc1_)
               {
                  addr64:
                  §§push(false);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr73);
               }
               addr74:
               return §§pop();
            }
            §§goto(addr73);
         }
         §§goto(addr64);
      }
      
      public function §4o§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=_§ = §4!%§.camera;
         §§push(_loc2_.§ T§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() > §§pop())
               {
                  addr60:
                  §§push(_loc2_);
                  §§push(_loc2_.§ T§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§ T§ = §§pop();
                  if(_loc2_.§ T§ <= 0)
                  {
                     if(this.§=!"§())
                     {
                        _loc2_.§ T§ = -1;
                        if(§4!%§.slingshot.birdsAvailable)
                        {
                           if(!(_loc3_ && this))
                           {
                              _loc2_.§"9§();
                              if(_loc3_ && param1)
                              {
                              }
                           }
                           §§goto(addr104);
                        }
                     }
                     else
                     {
                        _loc2_.§ T§ = §=_§.§2h§ / 2;
                     }
                  }
               }
               addr104:
               return;
            }
         }
         §§goto(addr60);
      }
      
      public function §9M§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§2!C§(false));
            if(!(_loc4_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(param2);
                           if(_loc3_ || param2)
                           {
                              addr57:
                              if(!§§pop())
                              {
                                 return;
                              }
                              §§push(param1);
                              §§push(§!!F§);
                              if(!_loc4_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.§ !'§ = 2000;
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    §§push(§5Y§);
                                    if(_loc3_ || param2)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §4!%§.camera.goToBirdView();
                                             if(!_loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr112:
                                          }
                                       }
                                       else if(param1 == §6!6§)
                                       {
                                          if(_loc3_ || param2)
                                          {
                                             this.§?Z§ = false;
                                             this.§ !'§ = 5000;
                                             §4!%§.particles.moveTrailsNewToOld();
                                             §§goto(addr112);
                                          }
                                          else
                                          {
                                             addr160:
                                             §§goto(addr285);
                                          }
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          §§push(§=!C§);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §4!%§.camera.goToCastleView();
                                                if(!_loc3_)
                                                {
                                                   addr180:
                                                }
                                             }
                                             else if(param1 == §;9§)
                                             {
                                                this.§ !'§ = 2000;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   this.§&C§ = §`!>§;
                                                   if(!(_loc3_ || this))
                                                   {
                                                      addr244:
                                                      §6I§.§%,§();
                                                      §6I§.§ ;§("LevelFailedPigs1");
                                                      if(_loc3_)
                                                      {
                                                         this.§ !'§ = 1200;
                                                      }
                                                      addr264:
                                                      §4!%§.camera.goToCastleView();
                                                      if(_loc3_ || param2)
                                                      {
                                                         addr274:
                                                         §4!%§.objects.makePigsSmile(5);
                                                         if(_loc4_ && param2)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §4!%§.camera.goToCastleView();
                                                §§goto(addr160);
                                             }
                                             else
                                             {
                                                §§push(param1);
                                                §§push(LEVEL_STATE_VICTORY2_END);
                                                if(!_loc4_)
                                                {
                                                   addr165:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      this.§ !'§ = 1200;
                                                      if(_loc3_)
                                                      {
                                                         if(!§4!%§.objects.mMightyEagleAdded)
                                                         {
                                                            §4!%§.camera.goToBirdView();
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      else
                                                      {
                                                         addr233:
                                                         §§goto(addr285);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr197:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               addr198:
                                                               this.§ !'§ = 1200;
                                                               if(!§4!%§.objects.mMightyEagleAdded)
                                                               {
                                                                  §4!%§.camera.goToBirdView();
                                                                  addr208:
                                                                  §4!%§.slingshot.makeBirdsJumpForJoy();
                                                                  if(_loc4_ && param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§push(§6I§);
                                                               §§push("LevelCompletedBirdsMilitary");
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                               }
                                                               §§pop().§ ;§(§§pop());
                                                               §§goto(addr233);
                                                            }
                                                            else
                                                            {
                                                               §§push(param1);
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      addr236:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      addr285:
                                                      this.§7H§ = param1;
                                                      return;
                                                      §§push(§return§);
                                                   }
                                                   §§goto(addr285);
                                                }
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr208);
                     }
                  }
               }
            }
            §§goto(addr57);
         }
         §§goto(addr285);
      }
      
      public function §'!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%l§ = Math.max(this.§%l§,param1);
         }
      }
      
      protected function §-!9§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§4!%§.slingshot.mSlingShotState == §4K§.§;5§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr41:
                     §§push(!§4!%§.objects.hasBirds());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr41);
      }
      
      public function §16§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§>G§ = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§42§);
            if(_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§42§ = §§pop();
            if(_loc6_ || this)
            {
               if(this.§0!7§)
               {
                  §§push(this);
                  §§push(this.§%l§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§%l§ = §§pop();
                  if(_loc6_)
                  {
                     if(this.§%l§ < 0)
                     {
                        if(!_loc5_)
                        {
                           this.§42§ = 0;
                           if(_loc6_ || this)
                           {
                              addr70:
                              §§push(this.§42§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() <= 0);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(!this.§2!C§(false));
                                             if(_loc6_)
                                             {
                                                addr96:
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      this.§42§ = §!!H§;
                                                      _loc2_ = §4!%§.objects.isWorldAtSleep();
                                                      §§push(!_loc2_);
                                                      if(!_loc2_)
                                                      {
                                                         addr116:
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§0!7§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!!§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        addr136:
                                                                        §§push(this.§%l§);
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr149:
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(!this.§0!7§);
                                                                                    if(!!this.§0!7§)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(this.§%l§);
                                                                                       §§push(6000);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr169:
                                                                                          §§push(§§pop() > §§pop());
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr178:
                                                                                                §§pop();
                                                                                                §§push(!§4!%§.objects.isPigsAlive());
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   this.§%l§ = 6000;
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr196:
                                                                                                      this.§0!7§ = true;
                                                                                                      addr352:
                                                                                                      if(this.§2!C§(false))
                                                                                                      {
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §4!%§.gameOver();
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               addr372:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§ !'§);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - param1);
                                                                                                               }
                                                                                                               §§pop().§ !'§ = §§pop();
                                                                                                               §§push(this.§ !'§);
                                                                                                               if(!(_loc5_ && _loc2_))
                                                                                                               {
                                                                                                                  addr389:
                                                                                                                  §§push(0);
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           this.§ !'§ = 0;
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr410:
                                                                                                                              §§push(this.§7H§);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(§=!C§);
                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §4!%§.updatePigAnimations(param1);
                                                                                                                                          §§push(!§4!%§.camera.isOnCastleView());
                                                                                                                                          §§push(!§4!%§.camera.isOnCastleView());
                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr451:
                                                                                                                                                §§pop();
                                                                                                                                                addr452:
                                                                                                                                                §§push(§4!%§.camera.mCurrentAction != §=_§.§56§);
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   this.§9M§(§5Y§);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr689:
                                                                                                                                                   this.§9M§(§=!C§);
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr905:
                                                                                                                                                      return;
                                                                                                                                                      addr699:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr715:
                                                                                                                                                      §§push(!(_loc4_ = §4!%§.activeObject));
                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.§`0§);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr742:
                                                                                                                                                                     if(§§pop() < _loc4_.§ !,§)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(_loc4_));
                                                                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr771:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_ is §5w§);
                                                                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr791:
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr794:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr805:
                                                                                                                                                                                                         §§push(!(_loc4_ as §=H§).§^`§);
                                                                                                                                                                                                         if(!(_loc5_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr818:
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr831:
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§?Z§ = true;
                                                                                                                                                                                                                     addr842:
                                                                                                                                                                                                                     this.§9M§(§;9§);
                                                                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr852:
                                                                                                                                                                                                                        §4!%§.activeObject = null;
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr860:
                                                                                                                                                                                                                        §§goto(addr905);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§9M§(§;9§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr860);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr852);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr831);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§goto(addr831);
                                                                                                                                                                                                         §§push(_loc4_.getSpecialAnimationProgress() >= 0);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr852);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr831);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr818);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr805);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr831);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr791);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr794);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr771);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr842);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr852);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr805);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr742);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr818);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr791);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr905);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr905);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr663:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr664:
                                                                                                                                                §§pop();
                                                                                                                                                addr897:
                                                                                                                                                if(_loc6_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr672:
                                                                                                                                                   §§push(§4!%§.camera.mCurrentAction == §=_§.§56§);
                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr685:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                this.§ !'§ = 1000;
                                                                                                                                                §§goto(addr905);
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr689);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr897);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr699);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr497:
                                                                                                                                          _loc3_ = §4!%§.objects.hasBirds();
                                                                                                                                          §§push(Boolean(_loc3_));
                                                                                                                                          if(Boolean(_loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                addr513:
                                                                                                                                                §§pop();
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§&C§);
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr534:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr535:
                                                                                                                                                            this.§ !'§ = 2000;
                                                                                                                                                            addr538:
                                                                                                                                                            this.§42§ = 0;
                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§&C§);
                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§&C§ = §§pop();
                                                                                                                                                               addr578:
                                                                                                                                                               §§push(!§4!%§.camera.isOnCastleView());
                                                                                                                                                               addr578:
                                                                                                                                                               addr560:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr715);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr905);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(§[k§.§&@§.objects.mMightyEagleAdded);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr567:
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr568:
                                                                                                                                                                  this.§9M§(§5Y§);
                                                                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                  }
                                                                                                                                                                  addr599:
                                                                                                                                                                  this.§9M§(§5Y§);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr604:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr641:
                                                                                                                                                                     this.§9M§(§5Y§);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr905);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr578);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() && §4!%§.camera.mCurrentAction != §=_§.§56§)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr599);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr604);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr662:
                                                                                                                                                         §§goto(addr663);
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr905);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr640:
                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr641);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr641);
                                                                                                                                                }
                                                                                                                                                §§goto(addr897);
                                                                                                                                             }
                                                                                                                                             §§goto(addr662);
                                                                                                                                          }
                                                                                                                                          §§goto(addr534);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.§7H§);
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§;9§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   addr491:
                                                                                                                                                   §§push(this.§ !'§);
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr496:
                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr497);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §4!%§.updatePigAnimations(param1);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr578);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr905);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr640);
                                                                                                                                                }
                                                                                                                                                §§goto(addr560);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.§7H§);
                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§!!F§);
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr632:
                                                                                                                                                            §§push(this.§ !'§);
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr640);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr878:
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§4!%§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr897);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        this.§9M§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr905);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr897);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr905);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr658:
                                                                                                                                                            §§goto(addr662);
                                                                                                                                                            §§push(Boolean(§4!%§.camera.isOnCastleView()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr905);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§7H§);
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr654:
                                                                                                                                                            §§push(§5Y§);
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr657:
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§7H§);
                                                                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr709:
                                                                                                                                                                     §§push(§6!6§);
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr712:
                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr715);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr865:
                                                                                                                                                                              §§goto(addr878);
                                                                                                                                                                              §§push(this.§ !'§);
                                                                                                                                                                              §§push(0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr863:
                                                                                                                                                                           §§push(this.§7H§);
                                                                                                                                                                           §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr905);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr863);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr865);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr905);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr863);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr712);
                                                                                                                                                }
                                                                                                                                                §§goto(addr709);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr657);
                                                                                                                                       }
                                                                                                                                       §§goto(addr863);
                                                                                                                                    }
                                                                                                                                    §§goto(addr905);
                                                                                                                                 }
                                                                                                                                 §§goto(addr657);
                                                                                                                              }
                                                                                                                              §§goto(addr654);
                                                                                                                           }
                                                                                                                           §§goto(addr452);
                                                                                                                        }
                                                                                                                        §§goto(addr578);
                                                                                                                     }
                                                                                                                     §§goto(addr410);
                                                                                                                  }
                                                                                                                  §§goto(addr640);
                                                                                                               }
                                                                                                               §§goto(addr632);
                                                                                                            }
                                                                                                            §§goto(addr599);
                                                                                                         }
                                                                                                         §§goto(addr578);
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                      addr234:
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                                §§goto(addr897);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(!this.§0!7§);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(Boolean(this.§-!9§()));
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr225:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               this.§%l§ = 15000;
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr231:
                                                                                                                  this.§0!7§ = true;
                                                                                                                  §§goto(addr234);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr352);
                                                                                                         }
                                                                                                         §§goto(addr534);
                                                                                                      }
                                                                                                      §§goto(addr664);
                                                                                                   }
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr451);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr307:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§4!%§.objects.mMightyEagleTimer > 5500);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr318:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         this.§8x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr344:
                                                                                                            §§goto(addr352);
                                                                                                         }
                                                                                                         §§goto(addr641);
                                                                                                      }
                                                                                                      else if(§4!%§.objects.mMightyEagleHasTouchedGround)
                                                                                                      {
                                                                                                         this.§42§ = §!!H§;
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                         §§goto(addr410);
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§goto(addr685);
                                                                                                }
                                                                                                §§goto(addr538);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr878);
                                                                                    }
                                                                                    §§goto(addr169);
                                                                                 }
                                                                                 §§goto(addr231);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(!§4!%§.objects.isPigsAlive());
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(§§pop() && !§4!%§.objects.mSardineCanAdded);
                                                                                    if(§§pop() && !§4!%§.objects.mSardineCanAdded)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§push(!§4!%§.objects.mMightyEagleAdded);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             addr274:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr275:
                                                                                                this.§8x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr281:
                                                                                                if(this.§-!9§())
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(§4!%§.objects.mMightyEagleAdded)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§4!%§.objects.mMightyEagleHasTouchedGround));
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr307);
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            §§goto(addr451);
                                                                                                         }
                                                                                                         §§goto(addr905);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         if(!§4!%§.objects.mSardineCanAdded)
                                                                                                         {
                                                                                                            this.§8x§(§return§);
                                                                                                         }
                                                                                                         §§goto(addr352);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr491);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                          §§goto(addr513);
                                                                                       }
                                                                                       §§goto(addr535);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                        §§goto(addr632);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr567);
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   §§goto(addr591);
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr664);
                                       }
                                       §§goto(addr96);
                                    }
                                    §§goto(addr497);
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr389);
                           }
                           §§goto(addr568);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr275);
               }
               §§goto(addr70);
            }
            §§goto(addr491);
         }
         §§goto(addr136);
      }
      
      protected function §8x§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!this.§0!7§)
         {
            this.§0!7§ = true;
         }
         §§push(new Date().time - §4!%§.slingshot.timeOfLastBirdShot);
         if(_loc4_ || param1)
         {
            §§push(6000);
            if(!_loc3_)
            {
               if(§§pop() < §§pop())
               {
                  return;
               }
               if(§4!%§.slingshot.mDragging)
               {
                  return;
               }
               if(§4!%§.objects.isWorldAtSleep())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§%l§ = Math.min(this.§%l§,3500);
                     if(_loc4_)
                     {
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr91);
               }
               addr87:
               §§goto(addr90);
            }
            addr90:
            §§goto(addr89);
         }
         addr89:
         if(this.§%l§ <= 0)
         {
            addr91:
            this.§9M§(param1,param2);
         }
      }
      
      public function §2!C§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§7H§);
            if(_loc3_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           addr38:
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this.§7H§);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr59:
                                    §§push(§§pop() == §§pop());
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc2_ && this))
                                    {
                                       addr77:
                                       if(!§§pop())
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§pop();
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr93:
                                                §§push(this.§7H§);
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push(§return§);
                                                   if(!_loc2_)
                                                   {
                                                      addr105:
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr108:
                                                         §§push(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(!param1);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           addr138:
                                                                           §§pop();
                                                                           if(_loc3_)
                                                                           {
                                                                              addr146:
                                                                              addr141:
                                                                              §§push(this.§ !'§ <= 0);
                                                                              if(this.§ !'§ <= 0)
                                                                              {
                                                                              }
                                                                              §§goto(addr153);
                                                                           }
                                                                           addr148:
                                                                           addr153:
                                                                           return §§pop();
                                                                           §§push(this.§7H§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                        }
                                                                        §§goto(addr153);
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§pop();
                                                                  §§goto(addr148);
                                                               }
                                                               §§goto(addr141);
                                                            }
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr38);
               }
               §§goto(addr105);
            }
            §§goto(addr138);
         }
         §§goto(addr146);
      }
      
      public function §#!%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§7H§);
            if(_loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           addr51:
                           §§push(this.§7H§ == §return§);
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr51);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1.delta != 0)
            {
               if(!_loc3_)
               {
                  addr39:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!this.§[I§);
         §§push(!this.§[I§);
         if(_loc3_ || _loc3_)
         {
            if(!§§pop())
            {
               if(_loc3_)
               {
                  §§pop();
                  if(_loc3_ || param1)
                  {
                     §§push(!§4!%§.mReadyToRun);
                     if(!_loc2_)
                     {
                        addr44:
                        if(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              return;
                           }
                           §§goto(addr184);
                        }
                        else
                        {
                           §§push(Boolean(§4!%§.slingshot.mDragging));
                           §§push(Boolean(§4!%§.slingshot.mDragging));
                           if(_loc3_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 §§push(Boolean(§4!%§.camera.mDragging));
                                 if(_loc3_)
                                 {
                                    addr75:
                                    if(§§pop())
                                    {
                                       §§goto(addr184);
                                    }
                                    else
                                    {
                                       §§push(this.§7H§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§;9§);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_ || this)
                                             {
                                                §§push(§§pop());
                                                if(_loc3_ || this)
                                                {
                                                   addr115:
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         addr118:
                                                         §§pop();
                                                         §§push(this.§7H§);
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            §§push(§=!C§);
                                                            if(!_loc2_)
                                                            {
                                                               addr133:
                                                               §§push(§§pop() == §§pop());
                                                               if(!(§§pop() == §§pop()))
                                                               {
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     addr141:
                                                                     §§pop();
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        addr161:
                                                                        §§push(this.§7H§);
                                                                        §§push(§5Y§);
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            addr163:
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!§4!%§.isPlayingReplay())
                                                                  {
                                                                     §4!%§.camera.adjustManualScale(param1);
                                                                     if(_loc2_ && this)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §4!%§.changeReplaySpeed(param1);
                                                                  }
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            addr184:
                                                            return;
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr75);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr184);
               }
               §§goto(addr163);
            }
            §§goto(addr44);
         }
         §§goto(addr115);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §case §(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1L§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(!this.§[I§)
            {
               if(_loc6_ || param2)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(_loc6_)
         {
            dispatchEvent(_loc3_);
            if(!_loc5_)
            {
               if(_loc3_.isDefaultPrevented())
               {
                  return;
               }
               §@P§.§@1§();
               if(!_loc5_)
               {
                  if(this.§2!C§(false))
                  {
                     return;
                  }
                  §§goto(addr65);
               }
               §§goto(addr124);
            }
            addr65:
            if(!§4!%§.isPlayingReplay())
            {
               §§push(Boolean(§4!%§.activeObject));
               §§push(Boolean(§4!%§.activeObject));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        addr84:
                        §§push(this.§7H§ == §6!6§);
                        if(!(_loc5_ && param2))
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              addr109:
                              if(!§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr113:
                                    §§pop();
                                    if(!(_loc5_ && param1))
                                    {
                                       §§goto(addr124);
                                    }
                                    §§goto(addr138);
                                 }
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr113);
                     }
                     addr124:
                     if(this.§?Z§)
                     {
                        if(_loc6_ || param2)
                        {
                           this.§?Z§ = false;
                           §4!%§.activatePowerup();
                           return;
                        }
                     }
                     else
                     {
                        addr138:
                        _loc4_ = §4!%§.screenToBox2D(param1,param2);
                        if(_loc6_ || param2)
                        {
                           if(§4!%§.slingshot.canStartDragging(_loc4_))
                           {
                              if(_loc6_ || this)
                              {
                                 §4!%§.slingshot.startDragging();
                                 if(!_loc5_)
                                 {
                                    addr178:
                                    this.§9M§(§5Y§);
                                    if(_loc5_)
                                    {
                                       §§goto(addr192);
                                    }
                                 }
                              }
                              §§goto(addr191);
                           }
                           else
                           {
                              §4!%§.camera.startDragging(param1,param2);
                              if(!_loc5_)
                              {
                                 addr191:
                                 return;
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr192);
                  }
               }
               §§goto(addr109);
            }
            addr192:
            §4!%§.camera.startDragging(param1,param2);
            §4!%§.resetReplaySpeed();
            return;
         }
         §§goto(addr84);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            §§push(this.§[I§);
            if(!(_loc5_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     return;
                  }
               }
               else
               {
                  §@P§.§-§();
                  if(this.§7H§ == §!!F§)
                  {
                     if(_loc4_ || param2)
                     {
                        this.§9M§(§5Y§);
                        if(_loc4_)
                        {
                           addr59:
                           if(§4!%§.slingshot.mDragging)
                           {
                              if(!_loc5_)
                              {
                                 addr65:
                                 _loc3_ = §4!%§.screenToBox2D(param1,param2);
                                 if(!(_loc5_ && this))
                                 {
                                    §4!%§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                    if(!_loc5_)
                                    {
                                       if(§4!%§.slingshot.canShootTheBird())
                                       {
                                          if(!_loc5_)
                                          {
                                             §4!%§.slingshot.shoot();
                                             if(!(_loc5_ && param1))
                                             {
                                                this.§9M§(§6!6§);
                                                if(_loc5_)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §4!%§.slingshot.cancelDragging();
                                       }
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr166);
                           }
                           addr123:
                           if(§4!%§.camera.mDragging)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(!isNaN(param1));
                                 if(!(_loc5_ && this))
                                 {
                                    addr155:
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr159);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                              }
                           }
                           §§goto(addr159);
                        }
                        addr159:
                        §§pop();
                        if(_loc4_)
                        {
                           addr166:
                           if(!isNaN(param2))
                           {
                              §4!%§.camera.dragToNewPoint(param1,param2);
                           }
                        }
                        §4!%§.camera.stopDragging();
                        return;
                     }
                     §§goto(addr65);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr155);
         }
         §§goto(addr65);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            if(!this.§[I§)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr32);
               }
            }
            else if(§4!%§.slingshot.mDragging)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc3_ = §4!%§.screenToBox2D(param1,param2);
                  if(_loc5_ || param1)
                  {
                     §4!%§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!(_loc4_ && param2))
                     {
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr121);
               }
               else
               {
                  addr106:
                  §4!%§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§4!%§.camera.mDragging)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr106);
               }
            }
            addr111:
            this.§^!9§ = param1;
            if(!(_loc4_ && param2))
            {
               addr121:
               this.§-!-§ = param2;
            }
            return;
         }
         addr32:
      }
      
      public function §2!%§() : Point
      {
         return new Point(this.§^!9§,this.§-!-§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§7'§.assign(this.§7'§.getValue() + param1);
            if(!(_loc2_ && _loc3_))
            {
               this.§'!6§(§^!<§);
               if(_loc3_)
               {
                  if(this.§7H§ == §;9§)
                  {
                     if(_loc3_)
                     {
                        addr70:
                        this.§ !'§ = 2000;
                        if(_loc3_ || _loc2_)
                        {
                           addr80:
                           this.§&C§ = §`!>§;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr80);
            }
            §§goto(addr70);
         }
         §§goto(addr80);
      }
      
      override public function getScore() : int
      {
         return this.§7'§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(!§[k§.§&@§.objects.mMightyEagleAdded)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  §§push(§5j§.§%!I§(§5j§.§%V§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr55);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§[I§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[I§ = param1;
         }
      }
   }
}
