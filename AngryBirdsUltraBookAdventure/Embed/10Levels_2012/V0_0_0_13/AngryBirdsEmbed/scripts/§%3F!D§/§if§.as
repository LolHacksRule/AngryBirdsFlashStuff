package §?!D§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§3=§;
   import §0!<§.§%r§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §[F§.§`m§;
   import §]!9§.§&v§;
   import §]!9§.§+k§;
   import §]!9§.§>2§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §if§ extends §]x§
   {
      
      public static const §%!8§:int = 0;
      
      public static const §3!4§:int = 1;
      
      public static const §-t§:int = 2;
      
      public static const §!!8§:int = 3;
      
      public static const §'5§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const § get§:int = 7;
      
      protected static const §4!H§:Number = 0.001;
      
      public static const §<V§:Number = 2000;
      
      public static const §>!7§:Number = 2500;
      
      public static const §`;§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!8§ = 0;
            §3!4§ = 1;
            if(_loc1_ || §if§)
            {
               §-t§ = 2;
               if(!_loc2_)
               {
                  §!!8§ = 3;
                  if(!_loc2_)
                  {
                     §'5§ = 4;
                     if(!(_loc2_ && §if§))
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr82);
                  }
               }
               addr61:
               LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
               LEVEL_STATE_VICTORY2_END = 6;
               § get§ = 7;
               §§goto(addr67);
            }
            addr67:
            if(_loc1_)
            {
               addr82:
               §§push(§§findproperty(§4!H§));
               §§push(§`m§.§0`§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() / 100);
               }
               §§pop().§4!H§ = §§pop();
               if(!_loc1_)
               {
               }
               §§goto(addr105);
            }
            §<V§ = 2000;
            §>!7§ = 2500;
            if(_loc1_)
            {
               §§goto(addr105);
            }
            addr105:
            §`;§ = 5;
            return;
         }
         §§goto(addr82);
      }
      
      public var §^I§:int = 0;
      
      protected var §7!"§:int = 0;
      
      public var §#[§:Number;
      
      protected var §%h§:Number = 0;
      
      protected var §`!=§:Boolean = false;
      
      private var § v§:Number = 0;
      
      public var §-n§:Number = 0;
      
      protected var §>5§:Boolean;
      
      protected var §>!B§:Number = 0;
      
      protected var §<!&§:Number = 0;
      
      protected var §+b§:Boolean = true;
      
      protected var §3r§:§`! §;
      
      public function §if§(param1:§#;§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§3r§ = new §`! §();
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
            this.§3r§.assign(0);
            this.§^I§ = -1;
            this.§7!"§ = 0;
            this.§%h§ = 0;
            if(_loc2_ || _loc2_)
            {
               this.§`!=§ = false;
               this.§?t§(§%!8§);
               §§goto(addr67);
            }
            §§goto(addr75);
         }
         addr67:
         this.§#[§ = §<V§;
         §;!!§(true);
         if(!_loc1_)
         {
            addr75:
            §7C§.objects.setDamageEnabled(true);
            §7C§.objects.setGroundTextureEnabled(true);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1 = §7C§.update(param1,true);
            if(_loc3_ || param1)
            {
               this.§[$§(param1);
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr55);
            }
            this.§>I§(param1);
         }
         addr55:
      }
      
      private function §[$§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§7!"§ != 0)
            {
               if(_loc3_)
               {
                  addr35:
                  §7C§.camera.adjustManualScale(this.§7!"§ > 0,param1 * §4!H§);
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
            §7C§.clearLevel();
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
            this.§^I§ = -1;
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
      
      public function §9!"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§7C§.camera.mCurrentCameraSliderLocation < §`m§.§&9§)
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
            else if(!§7C§.objects.isWorldAtSleep())
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
      
      public function §9g§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`m§ = §7C§.camera;
         §§push(_loc2_.§7]§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() > §§pop())
               {
                  addr60:
                  §§push(_loc2_);
                  §§push(_loc2_.§7]§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§7]§ = §§pop();
                  if(_loc2_.§7]§ <= 0)
                  {
                     if(this.§9!"§())
                     {
                        _loc2_.§7]§ = -1;
                        if(§7C§.slingshot.birdsAvailable)
                        {
                           if(!(_loc3_ && this))
                           {
                              _loc2_.§?! §();
                              if(_loc3_ && param1)
                              {
                              }
                           }
                           §§goto(addr104);
                        }
                     }
                     else
                     {
                        _loc2_.§7]§ = §`m§.§`c§ / 2;
                     }
                  }
               }
               addr104:
               return;
            }
         }
         §§goto(addr60);
      }
      
      public function §?t§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§2c§(false));
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
                              §§push(§%!8§);
                              if(!_loc4_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.§-n§ = 2000;
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    §§push(§3!4§);
                                    if(_loc3_ || param2)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §7C§.camera.goToBirdView();
                                             if(!_loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr112:
                                          }
                                       }
                                       else if(param1 == §-t§)
                                       {
                                          if(_loc3_ || param2)
                                          {
                                             this.§>5§ = false;
                                             this.§-n§ = 5000;
                                             §7C§.particles.moveTrailsNewToOld();
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
                                          §§push(§!!8§);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §7C§.camera.goToCastleView();
                                                if(!_loc3_)
                                                {
                                                   addr180:
                                                }
                                             }
                                             else if(param1 == §'5§)
                                             {
                                                this.§-n§ = 2000;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   this.§ v§ = §`;§;
                                                   if(!(_loc3_ || this))
                                                   {
                                                      addr244:
                                                      §3!E§.§#'§();
                                                      §3!E§.§<!,§("LevelFailedPigs1");
                                                      if(_loc3_)
                                                      {
                                                         this.§-n§ = 1200;
                                                      }
                                                      addr264:
                                                      §7C§.camera.goToCastleView();
                                                      if(_loc3_ || param2)
                                                      {
                                                         addr274:
                                                         §7C§.objects.makePigsSmile(5);
                                                         if(_loc4_ && param2)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §7C§.camera.goToCastleView();
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
                                                      this.§-n§ = 1200;
                                                      if(_loc3_)
                                                      {
                                                         if(!§7C§.objects.mMightyEagleAdded)
                                                         {
                                                            §7C§.camera.goToBirdView();
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
                                                               this.§-n§ = 1200;
                                                               if(!§7C§.objects.mMightyEagleAdded)
                                                               {
                                                                  §7C§.camera.goToBirdView();
                                                                  addr208:
                                                                  §7C§.slingshot.makeBirdsJumpForJoy();
                                                                  if(_loc4_ && param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§push(§3!E§);
                                                               §§push("LevelCompletedBirdsMilitary");
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                               }
                                                               §§pop().§<!,§(§§pop());
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
                                                      this.§^I§ = param1;
                                                      return;
                                                      §§push(§ get§);
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
      
      public function §>_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%h§ = Math.max(this.§%h§,param1);
         }
      }
      
      protected function §2!5§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§7C§.slingshot.mSlingShotState == §3=§.§ in§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr41:
                     §§push(!§7C§.objects.hasBirds());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr41);
      }
      
      public function §>I§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§>2§ = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§#[§);
            if(_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§#[§ = §§pop();
            if(_loc6_ || this)
            {
               if(this.§`!=§)
               {
                  §§push(this);
                  §§push(this.§%h§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§%h§ = §§pop();
                  if(_loc6_)
                  {
                     if(this.§%h§ < 0)
                     {
                        if(!_loc5_)
                        {
                           this.§#[§ = 0;
                           if(_loc6_ || this)
                           {
                              addr70:
                              §§push(this.§#[§);
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
                                             §§push(!this.§2c§(false));
                                             if(_loc6_)
                                             {
                                                addr96:
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      this.§#[§ = §<V§;
                                                      _loc2_ = §7C§.objects.isWorldAtSleep();
                                                      §§push(!_loc2_);
                                                      if(!_loc2_)
                                                      {
                                                         addr116:
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§`!=§);
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
                                                                        §§push(this.§%h§);
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
                                                                                    §§push(!this.§`!=§);
                                                                                    if(!!this.§`!=§)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(this.§%h§);
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
                                                                                                §§push(!§7C§.objects.isPigsAlive());
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   this.§%h§ = 6000;
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr196:
                                                                                                      this.§`!=§ = true;
                                                                                                      addr352:
                                                                                                      if(this.§2c§(false))
                                                                                                      {
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §7C§.gameOver();
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               addr372:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§-n§);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - param1);
                                                                                                               }
                                                                                                               §§pop().§-n§ = §§pop();
                                                                                                               §§push(this.§-n§);
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
                                                                                                                           this.§-n§ = 0;
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr410:
                                                                                                                              §§push(this.§^I§);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(§!!8§);
                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §7C§.updatePigAnimations(param1);
                                                                                                                                          §§push(!§7C§.camera.isOnCastleView());
                                                                                                                                          §§push(!§7C§.camera.isOnCastleView());
                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr451:
                                                                                                                                                §§pop();
                                                                                                                                                addr452:
                                                                                                                                                §§push(§7C§.camera.mCurrentAction != §`m§.§!p§);
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   this.§?t§(§3!4§);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr689:
                                                                                                                                                   this.§?t§(§!!8§);
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr905:
                                                                                                                                                      return;
                                                                                                                                                      addr699:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr715:
                                                                                                                                                      §§push(!(_loc4_ = §7C§.activeObject));
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
                                                                                                                                                                  §§push(_loc4_.§4!;§);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr742:
                                                                                                                                                                     if(§§pop() < _loc4_.§8!,§)
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
                                                                                                                                                                                          §§push(_loc4_ is §+k§);
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
                                                                                                                                                                                                         §§push(!(_loc4_ as §&v§).§?-§);
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
                                                                                                                                                                                                                     this.§>5§ = true;
                                                                                                                                                                                                                     addr842:
                                                                                                                                                                                                                     this.§?t§(§'5§);
                                                                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr852:
                                                                                                                                                                                                                        §7C§.activeObject = null;
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr860:
                                                                                                                                                                                                                        §§goto(addr905);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§?t§(§'5§);
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
                                                                                                                                                   §§push(§7C§.camera.mCurrentAction == §`m§.§!p§);
                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr685:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                this.§-n§ = 1000;
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
                                                                                                                                          _loc3_ = §7C§.objects.hasBirds();
                                                                                                                                          §§push(Boolean(_loc3_));
                                                                                                                                          if(Boolean(_loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                addr513:
                                                                                                                                                §§pop();
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§ v§);
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
                                                                                                                                                            this.§-n§ = 2000;
                                                                                                                                                            addr538:
                                                                                                                                                            this.§#[§ = 0;
                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§ v§);
                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§ v§ = §§pop();
                                                                                                                                                               addr578:
                                                                                                                                                               §§push(!§7C§.camera.isOnCastleView());
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
                                                                                                                                                            §§push(§,!!§.§;4§.objects.mMightyEagleAdded);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr567:
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr568:
                                                                                                                                                                  this.§?t§(§3!4§);
                                                                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                  }
                                                                                                                                                                  addr599:
                                                                                                                                                                  this.§?t§(§3!4§);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr604:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr641:
                                                                                                                                                                     this.§?t§(§3!4§);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr905);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr578);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() && §7C§.camera.mCurrentAction != §`m§.§!p§)
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
                                                                                                                                       §§push(this.§^I§);
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§'5§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   addr491:
                                                                                                                                                   §§push(this.§-n§);
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
                                                                                                                                                         §7C§.updatePigAnimations(param1);
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
                                                                                                                                                §§push(this.§^I§);
                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§%!8§);
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr632:
                                                                                                                                                            §§push(this.§-n§);
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
                                                                                                                                                                     if(§7C§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr897);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        this.§?t§(LEVEL_STATE_VICTORY2_END,true);
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
                                                                                                                                                            §§push(Boolean(§7C§.camera.isOnCastleView()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr905);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§^I§);
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr654:
                                                                                                                                                            §§push(§3!4§);
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr657:
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§^I§);
                                                                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr709:
                                                                                                                                                                     §§push(§-t§);
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
                                                                                                                                                                              §§push(this.§-n§);
                                                                                                                                                                              §§push(0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr863:
                                                                                                                                                                           §§push(this.§^I§);
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
                                                                                                §§push(!this.§`!=§);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(Boolean(this.§2!5§()));
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr225:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               this.§%h§ = 15000;
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr231:
                                                                                                                  this.§`!=§ = true;
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
                                                                                                   §§push(§7C§.objects.mMightyEagleTimer > 5500);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr318:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         this.§0!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr344:
                                                                                                            §§goto(addr352);
                                                                                                         }
                                                                                                         §§goto(addr641);
                                                                                                      }
                                                                                                      else if(§7C§.objects.mMightyEagleHasTouchedGround)
                                                                                                      {
                                                                                                         this.§#[§ = §<V§;
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
                                                                                 §§push(!§7C§.objects.isPigsAlive());
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(§§pop() && !§7C§.objects.mSardineCanAdded);
                                                                                    if(§§pop() && !§7C§.objects.mSardineCanAdded)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§push(!§7C§.objects.mMightyEagleAdded);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             addr274:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr275:
                                                                                                this.§0!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr281:
                                                                                                if(this.§2!5§())
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(§7C§.objects.mMightyEagleAdded)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§7C§.objects.mMightyEagleHasTouchedGround));
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
                                                                                                         if(!§7C§.objects.mSardineCanAdded)
                                                                                                         {
                                                                                                            this.§0!9§(§ get§);
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
      
      protected function §0!9§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!this.§`!=§)
         {
            this.§`!=§ = true;
         }
         §§push(new Date().time - §7C§.slingshot.timeOfLastBirdShot);
         if(_loc4_ || param1)
         {
            §§push(6000);
            if(!_loc3_)
            {
               if(§§pop() < §§pop())
               {
                  return;
               }
               if(§7C§.slingshot.mDragging)
               {
                  return;
               }
               if(§7C§.objects.isWorldAtSleep())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§%h§ = Math.min(this.§%h§,3500);
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
         if(this.§%h§ <= 0)
         {
            addr91:
            this.§?t§(param1,param2);
         }
      }
      
      public function §2c§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§^I§);
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
                              §§push(this.§^I§);
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
                                                §§push(this.§^I§);
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push(§ get§);
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
                                                                              §§push(this.§-n§ <= 0);
                                                                              if(this.§-n§ <= 0)
                                                                              {
                                                                              }
                                                                              §§goto(addr153);
                                                                           }
                                                                           addr148:
                                                                           addr153:
                                                                           return §§pop();
                                                                           §§push(this.§^I§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
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
      
      public function §4x§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^I§);
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
                           §§push(this.§^I§ == § get§);
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
         §§push(!this.§+b§);
         §§push(!this.§+b§);
         if(_loc3_ || _loc3_)
         {
            if(!§§pop())
            {
               if(_loc3_)
               {
                  §§pop();
                  if(_loc3_ || param1)
                  {
                     §§push(!§7C§.mReadyToRun);
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
                           §§push(Boolean(§7C§.slingshot.mDragging));
                           §§push(Boolean(§7C§.slingshot.mDragging));
                           if(_loc3_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 §§push(Boolean(§7C§.camera.mDragging));
                                 if(_loc3_)
                                 {
                                    addr75:
                                    if(§§pop())
                                    {
                                       §§goto(addr184);
                                    }
                                    else
                                    {
                                       §§push(this.§^I§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§'5§);
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
                                                         §§push(this.§^I§);
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            §§push(§!!8§);
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
                                                                        §§push(this.§^I§);
                                                                        §§push(§3!4§);
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
                                                                  if(!§7C§.isPlayingReplay())
                                                                  {
                                                                     §7C§.camera.adjustManualScale(param1);
                                                                     if(_loc2_ && this)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §7C§.changeReplaySpeed(param1);
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
      
      private function §2!G§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!"§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(!this.§+b§)
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
               §%r§.§'m§();
               if(!_loc5_)
               {
                  if(this.§2c§(false))
                  {
                     return;
                  }
                  §§goto(addr65);
               }
               §§goto(addr124);
            }
            addr65:
            if(!§7C§.isPlayingReplay())
            {
               §§push(Boolean(§7C§.activeObject));
               §§push(Boolean(§7C§.activeObject));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        addr84:
                        §§push(this.§^I§ == §-t§);
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
                     if(this.§>5§)
                     {
                        if(_loc6_ || param2)
                        {
                           this.§>5§ = false;
                           §7C§.activatePowerup();
                           return;
                        }
                     }
                     else
                     {
                        addr138:
                        _loc4_ = §7C§.screenToBox2D(param1,param2);
                        if(_loc6_ || param2)
                        {
                           if(§7C§.slingshot.canStartDragging(_loc4_))
                           {
                              if(_loc6_ || this)
                              {
                                 §7C§.slingshot.startDragging();
                                 if(!_loc5_)
                                 {
                                    addr178:
                                    this.§?t§(§3!4§);
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
                              §7C§.camera.startDragging(param1,param2);
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
            §7C§.camera.startDragging(param1,param2);
            §7C§.resetReplaySpeed();
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
            §§push(this.§+b§);
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
                  §%r§.§[m§();
                  if(this.§^I§ == §%!8§)
                  {
                     if(_loc4_ || param2)
                     {
                        this.§?t§(§3!4§);
                        if(_loc4_)
                        {
                           addr59:
                           if(§7C§.slingshot.mDragging)
                           {
                              if(!_loc5_)
                              {
                                 addr65:
                                 _loc3_ = §7C§.screenToBox2D(param1,param2);
                                 if(!(_loc5_ && this))
                                 {
                                    §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                    if(!_loc5_)
                                    {
                                       if(§7C§.slingshot.canShootTheBird())
                                       {
                                          if(!_loc5_)
                                          {
                                             §7C§.slingshot.shoot();
                                             if(!(_loc5_ && param1))
                                             {
                                                this.§?t§(§-t§);
                                                if(_loc5_)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §7C§.slingshot.cancelDragging();
                                       }
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr166);
                           }
                           addr123:
                           if(§7C§.camera.mDragging)
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
                              §7C§.camera.dragToNewPoint(param1,param2);
                           }
                        }
                        §7C§.camera.stopDragging();
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
            if(!this.§+b§)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr32);
               }
            }
            else if(§7C§.slingshot.mDragging)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc3_ = §7C§.screenToBox2D(param1,param2);
                  if(_loc5_ || param1)
                  {
                     §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
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
                  §7C§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§7C§.camera.mDragging)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr106);
               }
            }
            addr111:
            this.§>!B§ = param1;
            if(!(_loc4_ && param2))
            {
               addr121:
               this.§<!&§ = param2;
            }
            return;
         }
         addr32:
      }
      
      public function §;!2§() : Point
      {
         return new Point(this.§>!B§,this.§<!&§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3r§.assign(this.§3r§.getValue() + param1);
            if(!(_loc2_ && _loc3_))
            {
               this.§>_§(§>!7§);
               if(_loc3_)
               {
                  if(this.§^I§ == §'5§)
                  {
                     if(_loc3_)
                     {
                        addr70:
                        this.§-n§ = 2000;
                        if(_loc3_ || _loc2_)
                        {
                           addr80:
                           this.§ v§ = §`;§;
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
         return this.§3r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(!§,!!§.§;4§.objects.mMightyEagleAdded)
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
                  §§push(§6M§.§ r§(§6M§.§[z§).getEagleScore());
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
         return this.§+b§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+b§ = param1;
         }
      }
   }
}
