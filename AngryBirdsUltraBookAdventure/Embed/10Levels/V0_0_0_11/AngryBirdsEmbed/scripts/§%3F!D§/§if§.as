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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!4§ = 1;
            §-t§ = 2;
            if(_loc2_ || _loc1_)
            {
               §§goto(addr35);
            }
            §§goto(addr58);
         }
         addr35:
         if(!(_loc1_ && _loc1_))
         {
            §'5§ = 4;
            addr58:
            LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
            LEVEL_STATE_VICTORY2_END = 6;
            § get§ = 7;
            if(!(_loc1_ && §if§))
            {
               §§push(§§findproperty(§4!H§));
               §§push(§`m§.§0`§);
               if(!_loc1_)
               {
                  §§push(§§pop() / 100);
               }
               §§pop().§4!H§ = §§pop();
               if(!_loc1_)
               {
                  §<V§ = 2000;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr104);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr114);
         }
         addr104:
         if(_loc2_ || _loc2_)
         {
            addr114:
            §`;§ = 5;
         }
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
         if(_loc3_ || _loc3_)
         {
            this.§3r§ = new §`! §();
            if(!_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.init();
         if(!_loc1_)
         {
            this.§3r§.assign(0);
            this.§^I§ = -1;
            if(!(_loc1_ && _loc1_))
            {
               this.§7!"§ = 0;
               this.§%h§ = 0;
               if(!_loc1_)
               {
                  this.§`!=§ = false;
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§?t§(§%!8§);
                     if(_loc2_ || _loc1_)
                     {
                     }
                     §§goto(addr113);
                  }
                  this.§#[§ = §<V§;
                  if(_loc1_ && _loc2_)
                  {
                  }
               }
               §§goto(addr113);
            }
            §;!!§(true);
            if(_loc2_)
            {
               §7C§.objects.setDamageEnabled(true);
               if(!(_loc1_ && _loc1_))
               {
                  §7C§.objects.setGroundTextureEnabled(true);
               }
            }
         }
         addr113:
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1 = §7C§.update(param1,true);
            if(_loc3_)
            {
               this.§[$§(param1);
               if(_loc3_)
               {
                  addr42:
                  this.§>I§(param1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function §[$§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§7!"§ != 0)
            {
               if(_loc3_ || _loc2_)
               {
                  addr40:
                  §7C§.camera.adjustManualScale(this.§7!"§ > 0,param1 * §4!H§);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7C§.clearLevel();
            if(_loc2_ || _loc2_)
            {
               addr38:
               removeEventListeners();
               if(!(_loc1_ && this))
               {
                  this.§^I§ = -1;
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §9!"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§7C§.camera.mCurrentCameraSliderLocation < §`m§.§&9§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr56:
                  §§push(false);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
                  §§goto(addr76);
               }
            }
            else if(!§7C§.objects.isWorldAtSleep())
            {
               if(_loc1_)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     addr76:
                     return §§pop();
                  }
               }
               else
               {
                  addr77:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr77);
         }
         §§goto(addr56);
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
                  §§push(_loc2_);
                  §§push(_loc2_.§7]§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§7]§ = §§pop();
                  if(!_loc3_)
                  {
                     addr67:
                     if(_loc2_.§7]§ <= 0)
                     {
                        if(_loc4_)
                        {
                           if(this.§9!"§())
                           {
                              _loc2_.§7]§ = -1;
                              if(§7C§.slingshot.birdsAvailable)
                              {
                                 addr80:
                                 _loc2_.§?! §();
                              }
                           }
                           else
                           {
                              _loc2_.§7]§ = §`m§.§`c§ / 2;
                           }
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr80);
               }
               addr89:
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §?t§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§2c§(false));
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc4_)
            {
               addr24:
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(param2);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr37:
                        §§push(!§§pop());
                     }
                  }
               }
               if(§§pop())
               {
                  return;
               }
               §§push(param1);
               if(_loc3_ || this)
               {
                  if(§§pop() == §%!8§)
                  {
                     this.§-n§ = 2000;
                     if(_loc4_)
                     {
                        addr167:
                     }
                  }
                  else if(param1 == §3!4§)
                  {
                     §7C§.camera.goToBirdView();
                  }
                  else if(param1 == §-t§)
                  {
                     this.§>5§ = false;
                     this.§-n§ = 5000;
                     §7C§.particles.moveTrailsNewToOld();
                     if(_loc3_ || param2)
                     {
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(§!!8§);
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop() == §§pop())
                           {
                              §7C§.camera.goToCastleView();
                           }
                           else
                           {
                              addr100:
                              if(param1 == §'5§)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    this.§-n§ = 2000;
                                    this.§ v§ = §`;§;
                                    §7C§.camera.goToCastleView();
                                    if(!(_loc3_ || this))
                                    {
                                       addr258:
                                       §7C§.objects.makePigsSmile(5);
                                    }
                                    §§goto(addr262);
                                 }
                                 else
                                 {
                                    addr236:
                                    §3!E§.§#'§();
                                    §3!E§.§<!,§("LevelFailedPigs1");
                                    if(_loc3_)
                                    {
                                       addr243:
                                       this.§-n§ = 1200;
                                       if(_loc3_)
                                       {
                                          addr248:
                                          §7C§.camera.goToCastleView();
                                          if(_loc3_ || param2)
                                          {
                                             §§goto(addr258);
                                          }
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr248);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(LEVEL_STATE_VICTORY2_END);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             this.§-n§ = 1200;
                                             if(!§7C§.objects.mMightyEagleAdded)
                                             {
                                                if(_loc3_)
                                                {
                                                   §7C§.camera.goToBirdView();
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr167);
                                          }
                                          else
                                          {
                                             §§goto(addr258);
                                          }
                                       }
                                       else
                                       {
                                          addr169:
                                          §§push(param1);
                                          §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                       }
                                       §§goto(addr262);
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       this.§-n§ = 1200;
                                       if(_loc3_ || this)
                                       {
                                          if(!§7C§.objects.mMightyEagleAdded)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                §7C§.camera.goToBirdView();
                                                if(_loc3_)
                                                {
                                                   §7C§.slingshot.makeBirdsJumpForJoy();
                                                   addr200:
                                                   §§push(§3!E§);
                                                   §§push("LevelCompletedBirdsMilitary");
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                   }
                                                   §§pop().§<!,§(§§pop());
                                                   if(_loc4_ && this)
                                                   {
                                                   }
                                                   §§goto(addr262);
                                                }
                                                else
                                                {
                                                   §§goto(addr236);
                                                }
                                             }
                                             §§goto(addr243);
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§push(§ get§);
                              }
                           }
                           §§goto(addr262);
                        }
                        if(§§pop() == §§pop())
                        {
                           §§goto(addr236);
                        }
                        §§goto(addr262);
                     }
                     §§goto(addr100);
                  }
                  addr262:
                  this.§^I§ = param1;
                  return;
               }
               §§goto(addr169);
            }
            §§goto(addr37);
         }
         §§goto(addr24);
      }
      
      public function §>_§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%h§ = Math.max(this.§%h§,param1);
         }
      }
      
      protected function §2!5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§7C§.slingshot.mSlingShotState == §3=§.§ in§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr47:
                     §§push(!§7C§.objects.hasBirds());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §>I§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§>2§ = null;
         §§push(this);
         §§push(this.§#[§);
         if(_loc6_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§#[§ = §§pop();
         if(_loc6_ || param1)
         {
            §§push(this.§`!=§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(this);
                     §§push(this.§%h§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§%h§ = §§pop();
                     §§push(this.§%h§);
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           if(§§pop() < §§pop())
                           {
                              this.§#[§ = 0;
                              addr70:
                              §§push(this.§#[§);
                              §§push(0);
                           }
                           §§goto(addr70);
                        }
                        §§push(§§pop() <= §§pop());
                        if(§§pop() <= §§pop())
                        {
                           §§pop();
                           §§push(this.§2c§(false));
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(!§§pop());
                              if(_loc6_)
                              {
                                 addr90:
                                 if(§§pop())
                                 {
                                    this.§#[§ = §<V§;
                                    if(_loc6_ || this)
                                    {
                                       _loc2_ = §7C§.objects.isWorldAtSleep();
                                       if(_loc6_)
                                       {
                                          §§push(!_loc2_);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§pop();
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(!this.§`!=§);
                                                      if(!!this.§`!=§)
                                                      {
                                                         §§pop();
                                                         §§push(this.§%h§ > 0);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            addr146:
                                                            if(§§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(this.§`!=§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop();
                                                                              addr170:
                                                                              §§push(this.§%h§ > 6000);
                                                                              §§push(this.§%h§ > 6000);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(!§7C§.objects.isPigsAlive());
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             addr195:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr203:
                                                                                                   this.§%h§ = 6000;
                                                                                                   this.§`!=§ = true;
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      addr267:
                                                                                                      if(this.§2c§(false))
                                                                                                      {
                                                                                                         §7C§.gameOver();
                                                                                                         addr390:
                                                                                                         §§push(this);
                                                                                                         §§push(this.§-n§);
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() - param1);
                                                                                                         }
                                                                                                         §§pop().§-n§ = §§pop();
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr410:
                                                                                                            if(this.§-n§ < 0)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr416:
                                                                                                                  this.§-n§ = 0;
                                                                                                               }
                                                                                                               addr583:
                                                                                                               §§push(§7C§.camera.mCurrentAction != §`m§.§!p§);
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  addr597:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr605:
                                                                                                                        this.§?t§(§3!4§);
                                                                                                                        if(_loc5_ && param1)
                                                                                                                        {
                                                                                                                           addr716:
                                                                                                                           §§push(!(_loc4_ = §7C§.activeObject));
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§push(_loc4_.§4!;§);
                                                                                                                                    if(_loc6_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < _loc4_.§8!,§);
                                                                                                                                       if(!(_loc5_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr758:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(_loc4_));
                                                                                                                                             §§push(Boolean(_loc4_));
                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr775:
                                                                                                                                                   §§push(Boolean(_loc4_ is §+k§));
                                                                                                                                                }
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§push((_loc4_ as §&v§).§?-§);
                                                                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr798:
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr807:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr815:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  this.§>5§ = true;
                                                                                                                                                                  this.§?t§(§'5§);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §7C§.activeObject = null;
                                                                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               this.§?t§(§'5§);
                                                                                                                                                               addr877:
                                                                                                                                                               return;
                                                                                                                                                               addr837:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr837);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr815);
                                                                                                                                                      }
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr813:
                                                                                                                                                         §§push(_loc4_.getSpecialAnimationProgress() >= 0);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr837);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr815);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr807);
                                                                                                                                          }
                                                                                                                                          §§goto(addr837);
                                                                                                                                       }
                                                                                                                                       §§goto(addr775);
                                                                                                                                    }
                                                                                                                                    §§goto(addr813);
                                                                                                                                 }
                                                                                                                                 §§goto(addr758);
                                                                                                                              }
                                                                                                                              §§goto(addr807);
                                                                                                                           }
                                                                                                                           §§goto(addr798);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr867:
                                                                                                                        this.§-n§ = 1000;
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr872:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr877);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr688:
                                                                                                                  §§pop();
                                                                                                                  addr695:
                                                                                                                  addr696:
                                                                                                                  if(§7C§.camera.mCurrentAction != §`m§.§!p§)
                                                                                                                  {
                                                                                                                     addr697:
                                                                                                                     this.§?t§(§!!8§);
                                                                                                                     if(_loc5_ && param1)
                                                                                                                     {
                                                                                                                        §§goto(addr716);
                                                                                                                     }
                                                                                                                     §§goto(addr877);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr877);
                                                                                                            }
                                                                                                            §§push(this.§^I§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§!!8§);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     §7C§.updatePigAnimations(param1);
                                                                                                                     §§push(!§7C§.camera.isOnCastleView());
                                                                                                                     if(!§7C§.camera.isOnCastleView())
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr449:
                                                                                                                           §§push(§7C§.camera.mCurrentAction != §`m§.§!p§);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr562:
                                                                                                                           this.§?t§(§3!4§);
                                                                                                                           if(_loc6_ || param1)
                                                                                                                           {
                                                                                                                              addr572:
                                                                                                                              §§push(!§7C§.camera.isOnCastleView());
                                                                                                                              if(!§7C§.camera.isOnCastleView())
                                                                                                                              {
                                                                                                                                 addr582:
                                                                                                                                 §§pop();
                                                                                                                                 §§goto(addr583);
                                                                                                                              }
                                                                                                                              §§goto(addr597);
                                                                                                                              addr572:
                                                                                                                           }
                                                                                                                           §§goto(addr697);
                                                                                                                        }
                                                                                                                        §§goto(addr877);
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        this.§?t§(§3!4§);
                                                                                                                        addr460:
                                                                                                                     }
                                                                                                                     §§goto(addr460);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.§^I§);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr465:
                                                                                                                        §§push(§'5§);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr468:
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(this.§-n§ <= 0)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §7C§.objects.hasBirds();
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr488:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr497:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr498:
                                                                                                                                             §§pop();
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(this.§ v§);
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > 0);
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr524:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            this.§-n§ = 2000;
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               this.§#[§ = 0;
                                                                                                                                                            }
                                                                                                                                                            addr535:
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(this.§ v§);
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§ v§ = §§pop();
                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr572);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr583);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr877);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(§,!!§.§;4§.objects.mMightyEagleAdded);
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr561:
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr562);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr572);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr688);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr561);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr861:
                                                                                                                                                   if(§§pop() <= 0)
                                                                                                                                                   {
                                                                                                                                                      if(§7C§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr867);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§?t§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                         §§goto(addr877);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr877);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr605);
                                                                                                                                          }
                                                                                                                                          §§goto(addr524);
                                                                                                                                       }
                                                                                                                                       §§goto(addr582);
                                                                                                                                    }
                                                                                                                                    §§goto(addr561);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §7C§.updatePigAnimations(param1);
                                                                                                                                 }
                                                                                                                                 §§goto(addr572);
                                                                                                                              }
                                                                                                                              §§goto(addr605);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.§^I§);
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§%!8§);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr628:
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       addr629:
                                                                                                                                       §§push(this.§-n§);
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   this.§?t§(§3!4§);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr659:
                                                                                                                                                      §§goto(addr877);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr859:
                                                                                                                                                      §§goto(addr861);
                                                                                                                                                      §§push(this.§-n§);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr877);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr688);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr659);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr861);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.§^I§);
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§3!4§);
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr675:
                                                                                                                                                   §§push(Boolean(§7C§.camera.isOnCastleView()));
                                                                                                                                                   if(Boolean(§7C§.camera.isOnCastleView()))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr688);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr695);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr696);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr867);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.§^I§);
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr712:
                                                                                                                                                   §§push(§-t§);
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr715:
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr716);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr850:
                                                                                                                                                         §§push(this.§^I§);
                                                                                                                                                         §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr877);
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr859);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr872);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr877);
                                                                                                                                                }
                                                                                                                                                §§goto(addr850);
                                                                                                                                             }
                                                                                                                                             §§goto(addr877);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr712);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr715);
                                                                                                                              }
                                                                                                                              §§goto(addr712);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr628);
                                                                                                                     }
                                                                                                                     §§goto(addr712);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr468);
                                                                                                            }
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                         §§goto(addr697);
                                                                                                      }
                                                                                                      §§goto(addr390);
                                                                                                      addr267:
                                                                                                   }
                                                                                                   §§goto(addr659);
                                                                                                }
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr219:
                                                                                                §§push(!this.§`!=§);
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   addr227:
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr237:
                                                                                                         §§push(this.§2!5§());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr244:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     this.§%h§ = 15000;
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        this.§`!=§ = true;
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr267);
                                                                                                                        }
                                                                                                                        §§goto(addr716);
                                                                                                                     }
                                                                                                                     §§goto(addr629);
                                                                                                                  }
                                                                                                                  §§goto(addr449);
                                                                                                               }
                                                                                                               §§goto(addr267);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr302:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  this.§0!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr267);
                                                                                                                  }
                                                                                                                  §§goto(addr675);
                                                                                                               }
                                                                                                               else if(this.§2!5§())
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(§7C§.objects.mMightyEagleAdded)
                                                                                                                     {
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§7C§.objects.mMightyEagleHasTouchedGround));
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr332:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr346:
                                                                                                                                    if(§7C§.objects.mMightyEagleTimer > 5500)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§0!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                          addr367:
                                                                                                                                          §§goto(addr267);
                                                                                                                                       }
                                                                                                                                       §§goto(addr410);
                                                                                                                                    }
                                                                                                                                    else if(§7C§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                    {
                                                                                                                                       addr362:
                                                                                                                                       this.§#[§ = §<V§;
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr367);
                                                                                                                                       }
                                                                                                                                       §§goto(addr562);
                                                                                                                                    }
                                                                                                                                    §§goto(addr367);
                                                                                                                                 }
                                                                                                                                 §§goto(addr535);
                                                                                                                              }
                                                                                                                              §§goto(addr346);
                                                                                                                           }
                                                                                                                           §§goto(addr488);
                                                                                                                        }
                                                                                                                        §§goto(addr362);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        if(!§7C§.objects.mSardineCanAdded)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              this.§0!9§(§ get§);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§goto(addr267);
                                                                                                                              }
                                                                                                                              §§goto(addr416);
                                                                                                                           }
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        §§goto(addr267);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr716);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr267);
                                                                                                         }
                                                                                                         §§goto(addr597);
                                                                                                      }
                                                                                                      §§goto(addr244);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr272:
                                                                                                   §§push(§§pop() && !§7C§.objects.mSardineCanAdded);
                                                                                                   §§push(§§pop() && !§7C§.objects.mSardineCanAdded);
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            §§push(!§7C§.objects.mMightyEagleAdded);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr302);
                                                                                                            }
                                                                                                            §§goto(addr561);
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      §§goto(addr302);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr497);
                                                                                          }
                                                                                          §§goto(addr675);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr488);
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              §§goto(addr572);
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            else
                                                            {
                                                               §§push(!§7C§.objects.isPigsAlive());
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr497);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr561);
                                       }
                                       §§goto(addr583);
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr390);
                              }
                              §§goto(addr524);
                           }
                           §§goto(addr449);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr861);
                  }
                  §§goto(addr872);
               }
               §§goto(addr70);
            }
            §§goto(addr227);
         }
         §§goto(addr203);
      }
      
      protected function §0!9§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!this.§`!=§)
            {
               if(_loc3_ || param1)
               {
                  this.§`!=§ = true;
                  if(_loc3_ || _loc3_)
                  {
                     addr43:
                     §§push(new Date().time - §7C§.slingshot.timeOfLastBirdShot);
                     if(!(_loc4_ && this))
                     {
                        §§push(6000);
                        if(_loc3_ || _loc3_)
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
                              if(!(_loc4_ && param2))
                              {
                                 addr117:
                                 this.§%h§ = Math.min(this.§%h§,3500);
                                 if(!_loc4_)
                                 {
                                    addr126:
                                    if(this.§%h§ <= 0)
                                    {
                                       if(_loc4_ && this)
                                       {
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                                 this.§?t§(param1,param2);
                              }
                              addr141:
                              return;
                           }
                           §§goto(addr126);
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr117);
               }
               §§goto(addr126);
            }
            §§goto(addr43);
         }
         §§goto(addr126);
      }
      
      public function §2c§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§^I§);
            if(_loc3_ || param1)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && param1))
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(this.§^I§);
                           if(!_loc2_)
                           {
                              addr48:
                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr69:
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§pop();
                                             addr95:
                                             if(!_loc2_)
                                             {
                                                addr78:
                                                §§push(this.§^I§);
                                                if(_loc3_)
                                                {
                                                   §§goto(addr136);
                                                }
                                                addr135:
                                                addr136:
                                                §§push(§ get§);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(_loc3_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                return §§pop();
                                                §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                             }
                                             §§push(!param1);
                                             §§push(!param1);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr115:
                                                if(!§§pop())
                                                {
                                                   addr116:
                                                   §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr124:
                                                      §§push(this.§-n§ <= 0);
                                                      if(this.§-n§ <= 0)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§pop();
                                                         }
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr135);
                                                   §§push(this.§^I§);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§pop();
                                                if(_loc3_)
                                                {
                                                   §§goto(addr95);
                                                }
                                                §§goto(addr116);
                                             }
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr124);
               }
               §§goto(addr136);
            }
            §§goto(addr48);
         }
         §§goto(addr95);
      }
      
      public function §4x§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^I§);
            if(_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           §§pop();
                           addr72:
                           §§push(this.§^I§ == § get§);
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr72);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.delta != 0)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(!this.§+b§);
         §§push(!this.§+b§);
         if(_loc2_)
         {
            if(!§§pop())
            {
               §§pop();
               if(!(_loc3_ && this))
               {
                  addr34:
                  if(!§7C§.mReadyToRun)
                  {
                     return;
                  }
                  §§push(Boolean(§7C§.slingshot.mDragging));
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        addr45:
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(Boolean(§7C§.camera.mDragging));
                        }
                        if(!§§pop())
                        {
                           §§push(this.§^I§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§'5§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       addr81:
                                       if(!§§pop())
                                       {
                                          addr82:
                                          §§pop();
                                          §§push(this.§^I§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr92:
                                             §§push(§!!8§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr111:
                                                §§push(§§pop() == §§pop());
                                                if(!(§§pop() == §§pop()))
                                                {
                                                   addr125:
                                                   if(_loc2_ || this)
                                                   {
                                                      §§pop();
                                                      §§push(this.§^I§);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!§7C§.isPlayingReplay())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §7C§.camera.adjustManualScale(param1);
                                                            addr139:
                                                            return;
                                                            addr135:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §7C§.changeReplaySpeed(param1);
                                                      }
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr125);
                                             }
                                             addr124:
                                             §§goto(addr125);
                                             §§push(§§pop() == §§pop());
                                          }
                                          §§goto(addr124);
                                          §§push(§3!4§);
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr125);
               }
               §§goto(addr135);
            }
            §§goto(addr34);
         }
         §§goto(addr45);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §2!G§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§7!"§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || _loc3_)
         {
            if(!this.§+b§)
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §%r§.§'m§();
         if(this.§2c§(false))
         {
            return;
         }
         if(!§7C§.isPlayingReplay())
         {
            if(_loc5_)
            {
               §§push(Boolean(§7C§.activeObject));
               §§push(Boolean(§7C§.activeObject));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(Boolean(this.§^I§ == §-t§));
                     if(_loc5_ || this)
                     {
                        addr102:
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(this.§>5§);
                           if(!(_loc6_ && param2))
                           {
                              addr114:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              this.§>5§ = false;
                              if(!(_loc6_ && this))
                              {
                                 §7C§.activatePowerup();
                                 if(_loc5_)
                                 {
                                    §§goto(addr132);
                                 }
                              }
                              else
                              {
                                 addr133:
                                 _loc4_ = §7C§.screenToBox2D(param1,param2);
                                 if(_loc5_ || this)
                                 {
                                    if(§7C§.slingshot.canStartDragging(_loc4_))
                                    {
                                       if(!_loc6_)
                                       {
                                          §7C§.slingshot.startDragging();
                                          if(!(_loc6_ && param2))
                                          {
                                             this.§?t§(§3!4§);
                                             if(_loc6_)
                                             {
                                                §§goto(addr187);
                                             }
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                    else
                                    {
                                       §7C§.camera.startDragging(param1,param2);
                                       if(_loc5_)
                                       {
                                          addr186:
                                          return;
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr187);
                                 }
                                 addr187:
                                 §7C§.camera.startDragging(param1,param2);
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr199:
                                    §7C§.resetReplaySpeed();
                                 }
                                 §§goto(addr201);
                              }
                              addr201:
                              return;
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr102);
            }
            addr132:
            return;
         }
         §§goto(addr187);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_)
         {
            §§push(this.§+b§);
            if(!(_loc5_ && param2))
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     return;
                  }
               }
               else
               {
                  §%r§.§[m§();
                  if(this.§^I§ == §%!8§)
                  {
                     this.§?t§(§3!4§);
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr149);
                  }
                  if(§7C§.slingshot.mDragging)
                  {
                     _loc3_ = §7C§.screenToBox2D(param1,param2);
                     if(!_loc5_)
                     {
                        §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                        if(_loc4_ || param2)
                        {
                           if(§7C§.slingshot.canShootTheBird())
                           {
                              if(!_loc5_)
                              {
                                 §7C§.slingshot.shoot();
                                 if(_loc4_)
                                 {
                                    this.§?t§(§-t§);
                                    if(_loc4_ || _loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr114);
                              }
                           }
                           else
                           {
                              §7C§.slingshot.cancelDragging();
                              §§goto(addr114);
                           }
                           §§goto(addr114);
                        }
                     }
                  }
                  addr114:
                  if(§7C§.camera.mDragging)
                  {
                     §§push(!isNaN(param1));
                     if(_loc4_ || this)
                     {
                        addr129:
                        if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              §§pop();
                              addr149:
                              §§goto(addr153);
                           }
                        }
                     }
                     addr153:
                     if(!isNaN(param2))
                     {
                        if(!_loc5_)
                        {
                           §7C§.camera.dragToNewPoint(param1,param2);
                           if(_loc4_ || param1)
                           {
                           }
                           §§goto(addr171);
                        }
                     }
                     §7C§.camera.stopDragging();
                  }
                  §§goto(addr171);
               }
               addr171:
               return;
            }
            §§goto(addr129);
         }
         §§goto(addr149);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && param2))
         {
            if(!this.§+b§)
            {
               if(!(_loc5_ && this))
               {
                  return;
               }
               §§goto(addr55);
            }
            else
            {
               addr49:
               if(§7C§.slingshot.mDragging)
               {
                  if(_loc4_)
                  {
                     addr55:
                     _loc3_ = §7C§.screenToBox2D(param1,param2);
                     if(!_loc5_)
                     {
                        §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                        if(_loc4_)
                        {
                           addr95:
                           this.§>!B§ = param1;
                           if(_loc4_ || param1)
                           {
                           }
                           §§goto(addr108);
                        }
                        this.§<!&§ = param2;
                     }
                     addr108:
                     return;
                  }
               }
               else if(§7C§.camera.mDragging)
               {
                  if(_loc4_)
                  {
                     §7C§.camera.dragToNewPoint(param1,param2);
                  }
               }
            }
            §§goto(addr95);
         }
         §§goto(addr49);
      }
      
      public function §;!2§() : Point
      {
         return new Point(this.§>!B§,this.§<!&§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3r§.assign(this.§3r§.getValue() + param1);
            if(!(_loc2_ && this))
            {
               addr54:
               this.§>_§(§>!7§);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr64);
               }
               §§goto(addr70);
            }
            addr64:
            if(this.§^I§ == §'5§)
            {
               if(!_loc2_)
               {
                  addr70:
                  this.§-n§ = 2000;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr78);
               }
               this.§ v§ = §`;§;
            }
            addr78:
            return;
         }
         §§goto(addr54);
      }
      
      override public function getScore() : int
      {
         return this.§3r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(!§,!!§.§;4§.objects.mMightyEagleAdded)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(§6M§.§ r§(§6M§.§[z§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr54);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§+b§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+b§ = param1;
         }
      }
   }
}
