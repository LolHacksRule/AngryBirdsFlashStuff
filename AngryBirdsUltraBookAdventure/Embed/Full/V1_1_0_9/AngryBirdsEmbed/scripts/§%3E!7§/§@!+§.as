package §>!7§
{
   import §#X§.§,!F§;
   import §+!B§.§<!M§;
   import §1!-§.§[4§;
   import §2k§.§`n§;
   import §3a§.§'q§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§4!C§;
   import §^!A§.§;!%§;
   import §^!A§.§=!$§;
   import §^!A§.§?B§;
   import §^!A§.§^`§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!+§ extends §!q§
   {
      
      public static const §50§:int = 0;
      
      public static const §]c§:int = 1;
      
      public static const §=!+§:int = 2;
      
      public static const §-#§:int = 3;
      
      public static const §?k§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%<§:int = 7;
      
      protected static const §2=§:Number = 0.001;
      
      public static const §&L§:Number = 2000;
      
      public static const §2r§:Number = 2500;
      
      public static const §0V§:int = 5;
      
      private static var §<]§:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §50§ = 0;
            if(_loc2_)
            {
               §]c§ = 1;
               if(!_loc1_)
               {
                  §§goto(addr34);
               }
               §§goto(addr88);
            }
            addr34:
            §=!+§ = 2;
            §-#§ = 3;
            if(_loc2_ || _loc2_)
            {
               §?k§ = 4;
               LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
               if(!(_loc1_ && _loc1_))
               {
                  LEVEL_STATE_VICTORY2_END = 6;
                  if(_loc2_)
                  {
                     §%<§ = 7;
                     addr88:
                     §§push(§§findproperty(§2=§));
                     §§push(§`n§.§,!J§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() / 100);
                     }
                     §§pop().§2=§ = §§pop();
                  }
                  §§goto(addr107);
               }
               §&L§ = 2000;
               addr104:
               §2r§ = 2500;
            }
            addr107:
            §0V§ = 5;
            return;
         }
         §§goto(addr104);
      }
      
      public var §?!8§:int = 0;
      
      protected var §"w§:int = 0;
      
      public var §"!+§:Number;
      
      protected var §0!C§:Number = 0;
      
      protected var §^T§:Boolean = false;
      
      private var §"!7§:Number = 0;
      
      public var §6§:Number = 0;
      
      protected var §>>§:Number = 0;
      
      protected var §;!§:Number = 0;
      
      protected var §+P§:Boolean = true;
      
      protected var §5L§:§<!M§;
      
      public function §@!+§(param1:§ !§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5L§ = new §<!M§();
            if(_loc3_)
            {
               super(param1);
            }
         }
      }
      
      public static function §`Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §<]§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            this.§5L§.assign(0);
            this.§?!8§ = -1;
         }
         this.§"w§ = 0;
         this.§0!C§ = 0;
         if(!(_loc2_ && _loc1_))
         {
            this.§^T§ = false;
            if(!_loc2_)
            {
               this.§'3§(§50§);
               if(_loc1_)
               {
                  this.§"!+§ = §&L§;
               }
               §§goto(addr93);
            }
            §4u§(true);
            if(!_loc2_)
            {
               §?V§.objects.setDamageEnabled(true);
               if(_loc1_ || _loc2_)
               {
                  §?V§.objects.setGroundTextureEnabled(true);
               }
            }
         }
         addr93:
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1 = §?V§.update(param1,true);
            if(_loc3_)
            {
               this.§#!J§(param1);
               if(_loc3_)
               {
                  addr47:
                  this.§2!&§(param1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §#!J§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§"w§ != 0)
            {
               if(_loc3_ || _loc3_)
               {
                  §?V§.camera.adjustManualScale(this.§"w§ > 0,param1 * §2=§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §?V§.clearLevel();
            if(_loc1_ || _loc1_)
            {
               removeEventListeners();
               if(!_loc2_)
               {
                  addr46:
                  this.§?!8§ = -1;
               }
            }
            return;
         }
         §§goto(addr46);
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
      
      public function §!!%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§?V§.camera.mCurrentCameraSliderLocation < §`n§.§1%§)
            {
               if(!(_loc2_ && this))
               {
                  §§push(false);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr62:
                  if(!§?V§.objects.isWorldAtSleep())
                  {
                     if(_loc1_)
                     {
                        §§push(false);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr76);
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
               addr76:
               return §§pop();
            }
            §§goto(addr62);
         }
         §§goto(addr77);
      }
      
      public function §-G§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`n§ = §?V§.camera;
         if(!_loc4_)
         {
            §§push(_loc2_.§[#§);
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§[#§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§[#§ = §§pop();
                     if(_loc3_ || this)
                     {
                        addr68:
                        if(_loc2_.§[#§ <= 0)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr71);
                           }
                           §§goto(addr100);
                        }
                     }
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr68);
         }
         addr71:
         if(this.§!!%§())
         {
            _loc2_.§[#§ = -1;
            if(_loc3_)
            {
               if(§?V§.slingshot.birdsAvailable)
               {
                  if(!(_loc4_ && param1))
                  {
                     addr100:
                     _loc2_.§1!,§();
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr111);
               }
            }
         }
         else
         {
            _loc2_.§[#§ = §`n§.§%b§ / 2;
         }
         §§goto(addr111);
      }
      
      public function §'3§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§&!&§(false));
            if(_loc3_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  addr36:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(param2);
                           if(_loc3_)
                           {
                              addr47:
                              if(!§§pop())
                              {
                                 return;
                              }
                           }
                           §§goto(addr47);
                        }
                        §§push(param1);
                        if(_loc3_ || param2)
                        {
                           §§push(§50§);
                           if(_loc3_ || param2)
                           {
                              if(§§pop() == §§pop())
                              {
                                 this.§6§ = 2000;
                                 addr76:
                              }
                              else
                              {
                                 §§push(param1);
                                 §§push(§]c§);
                                 if(_loc3_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §?V§.camera.goToBirdView();
                                          if(_loc3_)
                                          {
                                             addr291:
                                             this.§?!8§ = param1;
                                          }
                                          else
                                          {
                                             addr98:
                                             this.§6§ = 5000;
                                             if(!_loc4_)
                                             {
                                                §?V§.particles.moveTrailsNewToOld();
                                                if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr291);
                                                }
                                                else
                                                {
                                                   addr210:
                                                   if(!§?V§.objects.mMightyEagleAdded)
                                                   {
                                                      addr214:
                                                      §?V§.camera.goToBirdView();
                                                      if(_loc3_)
                                                      {
                                                         §?V§.slingshot.makeBirdsJumpForJoy();
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§push(§,!F§);
                                                   §§push("LevelCompletedBirdsMilitary");
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                   }
                                                   §§pop().§;v§(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr244:
                                                      §§goto(addr291);
                                                   }
                                                   else
                                                   {
                                                      addr274:
                                                      §,!F§.§;v§("LevelFailedPigs1");
                                                      if(!_loc4_)
                                                      {
                                                         this.§6§ = 1200;
                                                         §?V§.camera.goToCastleView();
                                                      }
                                                      §?V§.objects.makePigsSmile(5);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr291);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr294);
                                       }
                                       else
                                       {
                                          addr151:
                                          §?V§.camera.goToCastleView();
                                          §§goto(addr291);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       §§push(§=!+§);
                                       if(_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §`Z§(false);
                                             §§goto(addr98);
                                          }
                                          else
                                          {
                                             if(param1 == §-#§)
                                             {
                                                if(_loc3_)
                                                {
                                                   §?V§.camera.goToCastleView();
                                                   §§goto(addr291);
                                                }
                                                else
                                                {
                                                   §§goto(addr151);
                                                }
                                             }
                                             else
                                             {
                                                addr124:
                                                §§push(param1);
                                                §§push(§?k§);
                                                if(_loc3_)
                                                {
                                                   addr127:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         this.§6§ = 2000;
                                                         this.§"!7§ = §0V§;
                                                         §§goto(addr151);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      §§push(LEVEL_STATE_VICTORY2_END);
                                                      if(_loc3_ || param1)
                                                      {
                                                      }
                                                      addr247:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            §,!F§.§?X§();
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§goto(addr274);
                                                            }
                                                         }
                                                         addr294:
                                                         return;
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   this.§6§ = 1200;
                                                   if(_loc3_ || this)
                                                   {
                                                      if(!§?V§.objects.mMightyEagleAdded)
                                                      {
                                                         §?V§.camera.goToBirdView();
                                                         if(_loc4_ && param2)
                                                         {
                                                            §§goto(addr244);
                                                         }
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                }
                                                else
                                                {
                                                   addr192:
                                                   if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         this.§6§ = 1200;
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      §§push(§%<§);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr291);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr291);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr124);
                     }
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr36);
         }
         §§goto(addr76);
      }
      
      public function §[!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6§ = 2000;
            if(_loc1_)
            {
               this.§^T§ = false;
               if(!_loc2_)
               {
                  addr28:
                  this.§0!C§ = 2000;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §,!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0!C§ = Math.max(this.§0!C§,param1);
         }
      }
      
      protected function §;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§?V§.slingshot.mSlingShotState == §4!C§.§45§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr52:
                     §§push(!§?V§.objects.hasBirds());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public function §2!&§(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:§;!%§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:* = false;
         §§push(this);
         §§push(this.§"!+§);
         if(!(_loc8_ && this))
         {
            §§push(§§pop() - param1);
         }
         §§pop().§"!+§ = §§pop();
         if(_loc9_)
         {
            if(this.§^T§)
            {
               §§push(this);
               §§push(this.§0!C§);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§0!C§ = §§pop();
               if(_loc9_ || _loc3_)
               {
                  if(this.§0!C§ < 0)
                  {
                     this.§"!+§ = 0;
                     if(!_loc8_)
                     {
                        addr77:
                        §§push(this.§"!+§);
                        if(_loc9_)
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              §§push(§§pop() <= §§pop());
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_ || this)
                                       {
                                          §§pop();
                                          §§push(!this.§&!&§(false));
                                          if(!(_loc8_ && this))
                                          {
                                             addr110:
                                             if(§§pop())
                                             {
                                                this.§"!+§ = §&L§;
                                                _loc2_ = §?V§.objects.isWorldAtSleep();
                                                §§push(_loc2_);
                                                if(_loc9_)
                                                {
                                                   §§push(!§§pop());
                                                   §§push(!§§pop());
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§pop();
                                                            if(!_loc8_)
                                                            {
                                                               §§push(this.§^T§);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                     }
                                                                     addr155:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(!this.§^T§);
                                                                           §§push(!this.§^T§);
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr170:
                                                                                 §§pop();
                                                                                 §§push(this.§0!C§);
                                                                                 §§push(6000);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr179:
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr192:
                                                                                                   if(!§?V§.objects.isPigsAlive())
                                                                                                   {
                                                                                                      this.§0!C§ = 6000;
                                                                                                      addr196:
                                                                                                      this.§^T§ = true;
                                                                                                      addr457:
                                                                                                      §§push(this.§&!&§(false));
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               addr475:
                                                                                                               §?V§.gameOver();
                                                                                                               addr477:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§6§);
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() - param1);
                                                                                                               }
                                                                                                               §§pop().§6§ = §§pop();
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(this.§6§);
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     addr502:
                                                                                                                     if(§§pop() < 0)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           this.§6§ = 0;
                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr530:
                                                                                                                              §§push(this.§?!8§);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§-#§);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                       {
                                                                                                                                          §?V§.updatePigAnimations(param1);
                                                                                                                                          §§push(!§?V§.camera.isOnCastleView());
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             addr559:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr562:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr570:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr578:
                                                                                                                                                         §§push(§?V§.camera.mCurrentAction == §`n§.§4q§);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr751:
                                                                                                                                                         §§push(this.§6§);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() <= 0)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  this.§'3§(§]c§);
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr792:
                                                                                                                                                                     addr799:
                                                                                                                                                                     if(§?V§.camera.mCurrentAction != §`n§.§4q§)
                                                                                                                                                                     {
                                                                                                                                                                        this.§'3§(§-#§);
                                                                                                                                                                        if(_loc9_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr1042:
                                                                                                                                                                  this.§6§ = 1000;
                                                                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1052:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1057);
                                                                                                                                                            }
                                                                                                                                                            addr769:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr1035:
                                                                                                                                                            if(§§pop() <= 0)
                                                                                                                                                            {
                                                                                                                                                               addr1036:
                                                                                                                                                               if(§?V§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1042);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1052);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  this.§'3§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                  §§goto(addr1057);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1057);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1057);
                                                                                                                                                   }
                                                                                                                                                   addr585:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                      {
                                                                                                                                                         this.§'3§(§]c§);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr702:
                                                                                                                                                         §§push(!§?V§.camera.isOnCastleView());
                                                                                                                                                         §§push(!§?V§.camera.isOnCastleView());
                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr710:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr711:
                                                                                                                                                               §§pop();
                                                                                                                                                               addr719:
                                                                                                                                                               if(§?V§.camera.mCurrentAction != §`n§.§4q§)
                                                                                                                                                               {
                                                                                                                                                                  addr720:
                                                                                                                                                                  this.§'3§(§]c§);
                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr730:
                                                                                                                                                                     §§goto(addr1057);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1036);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr730);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr719);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr783:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr784:
                                                                                                                                                               §§pop();
                                                                                                                                                               if(_loc9_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr792);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr799);
                                                                                                                                                         }
                                                                                                                                                         addr678:
                                                                                                                                                         addr687:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1057);
                                                                                                                                                }
                                                                                                                                                §§goto(addr585);
                                                                                                                                             }
                                                                                                                                             §§goto(addr710);
                                                                                                                                          }
                                                                                                                                          §§goto(addr719);
                                                                                                                                       }
                                                                                                                                       §§goto(addr578);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.§?!8§);
                                                                                                                                       if(!(_loc8_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§?k§);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr612:
                                                                                                                                                   if(this.§6§ <= 0)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§?V§.objects.hasBirds()));
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr629:
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr633:
                                                                                                                                                               §§push(Boolean(_loc3_));
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  addr636:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr638:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr648:
                                                                                                                                                                        §§push(this.§"!7§);
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(_loc9_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr656:
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1035);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1057);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr769);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     this.§6§ = 2000;
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§"!+§ = 0;
                                                                                                                                                                        addr666:
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§"!7§);
                                                                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§"!7§ = §§pop();
                                                                                                                                                                        §§goto(addr678);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr778:
                                                                                                                                                                        §§push(Boolean(§?V§.camera.isOnCastleView()));
                                                                                                                                                                        §§push(Boolean(§?V§.camera.isOnCastleView()));
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr783);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr681:
                                                                                                                                                                     if(!§=w§.§ o§.objects.mMightyEagleAdded)
                                                                                                                                                                     {
                                                                                                                                                                        this.§'3§(§]c§);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr687);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr702);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr666);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr638);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr702);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §?V§.updatePigAnimations(param1);
                                                                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr702);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1052);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr720);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.§?!8§);
                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                {
                                                                                                                                                   addr740:
                                                                                                                                                   §§push(§50§);
                                                                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr751);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr792);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§?!8§);
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr774:
                                                                                                                                                            §§push(§]c§);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr777:
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr778);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§?!8§);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr815:
                                                                                                                                                                     §§push(§=!+§);
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        addr818:
                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr821:
                                                                                                                                                                              §§push(!(_loc4_ = §?V§.activeObject));
                                                                                                                                                                              §§push(!(_loc4_ = §?V§.activeObject));
                                                                                                                                                                              if(_loc9_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       §§push(_loc4_.§`Y§);
                                                                                                                                                                                       if(!(_loc8_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < _loc4_.§@!§);
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr853:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc8_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr863:
                                                                                                                                                                                                   §§push(Boolean(_loc4_));
                                                                                                                                                                                                   §§push(Boolean(_loc4_));
                                                                                                                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§push(_loc4_ is §^`§);
                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr928:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§push(Boolean(_loc6_));
                                                                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr938:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr961:
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr969:
                                                                                                                                                                                                                                 §§push(_loc4_.getSpecialAnimationProgress() >= 0);
                                                                                                                                                                                                                                 if(_loc4_.getSpecialAnimationProgress() >= 0)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr972:
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(_loc8_ && param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr984:
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §`Z§(true);
                                                                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr997:
                                                                                                                                                                                                                                                   this.§'3§(§?k§);
                                                                                                                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1007:
                                                                                                                                                                                                                                                      §?V§.activeObject = null;
                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1015:
                                                                                                                                                                                                                                                      §§goto(addr1057);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   this.§'3§(§?k§);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1015);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1007);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr984);
                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr984);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr997);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr969);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr984);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr972);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1007);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr972);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_ is §?B§);
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            _loc6_ = _loc4_ is §=!$§;
                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean((_loc4_ as §^`§).§[!E§));
                                                                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr917:
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr928);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr969);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr938);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr969);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr984);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr917);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1007);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr961);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1007);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr969);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1007);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr969);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1007);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr928);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr969);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr863);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr853);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr969);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1042);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1028:
                                                                                                                                                                           §§push(this.§?!8§);
                                                                                                                                                                           §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1057);
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1035);
                                                                                                                                                                           §§push(this.§6§);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1042);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1057);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1028);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr818);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr815);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr777);
                                                                                                                                                }
                                                                                                                                                §§goto(addr774);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr777);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1028);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr777);
                                                                                                                              }
                                                                                                                              §§goto(addr740);
                                                                                                                           }
                                                                                                                           §§goto(addr612);
                                                                                                                        }
                                                                                                                        §§goto(addr1042);
                                                                                                                     }
                                                                                                                     §§goto(addr530);
                                                                                                                  }
                                                                                                                  §§goto(addr648);
                                                                                                               }
                                                                                                               §§goto(addr821);
                                                                                                            }
                                                                                                            §§goto(addr720);
                                                                                                         }
                                                                                                         §§goto(addr477);
                                                                                                      }
                                                                                                      §§goto(addr792);
                                                                                                      addr269:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§^T§);
                                                                                                      if(_loc9_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               addr225:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc9_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.§;§());
                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr245:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              addr248:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 this.§0!C§ = 15000;
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    this.§^T§ = true;
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr269);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr417:
                                                                                                                                       this.§#!@§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                    }
                                                                                                                                    §§goto(addr457);
                                                                                                                                 }
                                                                                                                                 §§goto(addr719);
                                                                                                                              }
                                                                                                                              §§goto(addr457);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr394:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr403:
                                                                                                                                    §§pop();
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       addr416:
                                                                                                                                       if(§?V§.objects.mMightyEagleTimer > 5500)
                                                                                                                                       {
                                                                                                                                          §§goto(addr417);
                                                                                                                                       }
                                                                                                                                       else if(§?V§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr432:
                                                                                                                                             this.§"!+§ = §&L§;
                                                                                                                                             §§goto(addr417);
                                                                                                                                          }
                                                                                                                                          §§goto(addr578);
                                                                                                                                       }
                                                                                                                                       §§goto(addr417);
                                                                                                                                    }
                                                                                                                                    §§goto(addr702);
                                                                                                                                 }
                                                                                                                                 §§goto(addr416);
                                                                                                                              }
                                                                                                                              §§goto(addr562);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr304:
                                                                                                                        §§push(!§?V§.objects.mMightyEagleAdded);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr310:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§push(§=w§.§ o§);
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().slingshot);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§,B§.length == 0);
                                                                                                                                    if(_loc9_ || this)
                                                                                                                                    {
                                                                                                                                       addr337:
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(§=w§.§ o§);
                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr351:
                                                                                                                                                §§push(§§pop().slingshot.§,B§[0].name == "BIRD_CHRISTMAS");
                                                                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr365:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         this.§#!@§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr417);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr457);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§;§());
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(§?V§.objects.mMightyEagleAdded)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§?V§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr394);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr403);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  if(!§?V§.objects.mSardineCanAdded)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr447:
                                                                                                                                                                        this.§#!@§(§%<§);
                                                                                                                                                                        if(_loc9_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr457);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr702);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr457);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr792);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr457);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr629);
                                                                                                                                             }
                                                                                                                                             §§goto(addr681);
                                                                                                                                          }
                                                                                                                                          §§goto(addr447);
                                                                                                                                       }
                                                                                                                                       §§goto(addr365);
                                                                                                                                    }
                                                                                                                                    §§goto(addr784);
                                                                                                                                 }
                                                                                                                                 §§goto(addr351);
                                                                                                                              }
                                                                                                                              §§goto(addr681);
                                                                                                                           }
                                                                                                                           §§goto(addr365);
                                                                                                                        }
                                                                                                                        §§goto(addr585);
                                                                                                                     }
                                                                                                                     §§goto(addr585);
                                                                                                                  }
                                                                                                                  §§goto(addr559);
                                                                                                               }
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                            §§goto(addr337);
                                                                                                         }
                                                                                                         §§goto(addr403);
                                                                                                      }
                                                                                                      §§goto(addr719);
                                                                                                   }
                                                                                                   §§goto(addr719);
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr570);
                                                                                          }
                                                                                          §§goto(addr192);
                                                                                       }
                                                                                       §§goto(addr710);
                                                                                    }
                                                                                    §§goto(addr719);
                                                                                 }
                                                                                 §§goto(addr502);
                                                                              }
                                                                              §§goto(addr179);
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(!§?V§.objects.isPigsAlive());
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(!§?V§.objects.mSardineCanAdded);
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       addr294:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc9_ || _loc2_)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                          §§goto(addr711);
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr702);
                                                                                 }
                                                                                 §§goto(addr475);
                                                                              }
                                                                              §§goto(addr792);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                     }
                                                                     §§goto(addr633);
                                                                  }
                                                                  §§pop();
                                                                  §§push(this.§0!C§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop() > 0);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr702);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr636);
                                             }
                                             §§goto(addr475);
                                          }
                                          §§goto(addr792);
                                       }
                                       §§goto(addr711);
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr562);
                              }
                              §§goto(addr585);
                           }
                           §§goto(addr656);
                        }
                        §§goto(addr1035);
                     }
                     §§goto(addr1036);
                  }
                  §§goto(addr77);
               }
               §§goto(addr1052);
            }
            §§goto(addr77);
         }
         §§goto(addr730);
      }
      
      protected function §#!@§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!this.§^T§)
         {
            if(_loc3_ || param1)
            {
               this.§^T§ = true;
               addr29:
               §§push(new Date().time - §?V§.slingshot.timeOfLastBirdShot);
               if(!(_loc4_ && param1))
               {
                  §§push(6000);
                  if(_loc3_ || param2)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           return;
                        }
                     }
                     else if(§?V§.slingshot.mDragging)
                     {
                        if(_loc3_ || param2)
                        {
                           §§goto(addr83);
                        }
                     }
                     else if(§?V§.objects.isWorldAtSleep())
                     {
                        this.§0!C§ = Math.min(this.§0!C§,3500);
                        if(_loc3_ || param2)
                        {
                           addr114:
                           if(this.§0!C§ <= 0)
                           {
                              if(!_loc4_)
                              {
                                 this.§'3§(param1,param2);
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr114);
            }
            addr83:
            return;
         }
         §§goto(addr29);
      }
      
      public function §&!&§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!8§);
            if(_loc2_ || _loc3_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§?!8§);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr66:
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             §§push(this.§?!8§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr104:
                                                §§push(§%<§);
                                                if(!_loc3_)
                                                {
                                                   addr107:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc2_)
                                                   {
                                                      addr110:
                                                      §§push(§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               addr123:
                                                               §§push(!param1);
                                                               §§push(!param1);
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        addr146:
                                                                        §§push(this.§6§ <= 0);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           addr158:
                                                                           if(§§pop())
                                                                           {
                                                                              addr159:
                                                                              §§pop();
                                                                              addr160:
                                                                              §§push(this.§?!8§ == LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                               }
                                                               §§goto(addr158);
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr123);
                                                }
                                             }
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr158);
               }
               §§goto(addr66);
            }
            §§goto(addr104);
         }
         §§goto(addr146);
      }
      
      public function §9$§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§?!8§);
            if(_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr53:
                           §§pop();
                           §§push(this.§?!8§ == §%<§);
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.delta != 0)
            {
               if(!_loc3_)
               {
                  addr24:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§+P§);
         if(!(_loc4_ && param2))
         {
            §§push(!§§pop());
            §§push(!§§pop());
            if(!(_loc4_ && param2))
            {
               if(!§§pop())
               {
                  addr35:
                  §§pop();
                  if(_loc3_)
                  {
                     §§push(!§?V§.mReadyToRun);
                     if(_loc3_ || _loc3_)
                     {
                        addr48:
                        if(§§pop())
                        {
                           return;
                        }
                        §§push(Boolean(§?V§.slingshot.mDragging));
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_ || param1)
                           {
                              if(!§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(Boolean(§?V§.camera.mDragging));
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr98:
                                          if(!§§pop())
                                          {
                                             §§push(this.§?!8§);
                                             if(_loc3_)
                                             {
                                                §§push(§?k§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc3_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§pop();
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.§?!8§);
                                                               if(_loc3_ || param2)
                                                               {
                                                                  §§push(§-#§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr139:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr142:
                                                                        §§push(§§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr145:
                                                                           if(!§§pop())
                                                                           {
                                                                              addr146:
                                                                              §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr149:
                                                                                 §§push(this.§?!8§);
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    addr158:
                                                                                    §§push(§]c§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr179);
                                                                                    }
                                                                                    addr179:
                                                                                    if(§§pop() == §§pop() || §=!+§)
                                                                                    {
                                                                                       if(!§?V§.isPlayingReplay())
                                                                                       {
                                                                                          §?V§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`n§.§,!J§) : Number(param2));
                                                                                          addr183:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §?V§.changeReplaySpeed(param1);
                                                                                       }
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    addr202:
                                                                                    return;
                                                                                    §§push(§§pop() == §§pop());
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              §§goto(addr183);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr149);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr158);
                                          }
                                          else
                                          {
                                             addr99:
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr177);
               }
               §§goto(addr48);
            }
            §§goto(addr145);
         }
         §§goto(addr35);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §>!'§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"w§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!(_loc6_ && param1))
         {
            if(!this.§+P§)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            dispatchEvent(_loc3_);
            if(_loc5_)
            {
               if(_loc3_.isDefaultPrevented())
               {
                  if(_loc5_ || this)
                  {
                     §§goto(addr62);
                  }
               }
               else
               {
                  §'q§.§3!4§();
                  §§push(this.§&!&§(false));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           return;
                        }
                        addr147:
                        _loc4_ = §?V§.screenToBox2D(param1,param2);
                        if(!_loc6_)
                        {
                           if(§?V§.slingshot.canStartDragging(_loc4_))
                           {
                              if(!(_loc6_ && param2))
                              {
                                 addr167:
                                 §?V§.slingshot.startDragging();
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr221);
                              }
                              _loc4_ = §?V§.screenToBox2D(param1,param2);
                              if(!(_loc6_ && param2))
                              {
                                 §?V§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
                                 if(_loc5_)
                                 {
                                    this.§'3§(§]c§);
                                    if(!(_loc5_ || param2))
                                    {
                                       §§goto(addr222);
                                    }
                                 }
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              §?V§.camera.startDragging(param1,param2);
                           }
                           addr221:
                           return;
                        }
                        §§goto(addr167);
                     }
                     else if(!§?V§.isPlayingReplay())
                     {
                        §§push(Boolean(§?V§.activeObject));
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§?!8§ == §=!+§);
                                       if(_loc5_)
                                       {
                                          addr122:
                                          §§push(Boolean(§§pop()));
                                          if(!Boolean(§§pop()))
                                          {
                                             §§pop();
                                             if(_loc5_ || this)
                                             {
                                                addr134:
                                                if(§<]§)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §`Z§(false);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr142);
                                                      }
                                                   }
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                     addr222:
                     §?V§.camera.startDragging(param1,param2);
                     §?V§.resetReplaySpeed();
                     return;
                  }
                  §§goto(addr134);
               }
               addr142:
               §?V§.activatePowerup();
               return;
            }
            addr62:
            return;
         }
         addr36:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         §§push(this.§+P§);
         if(!(_loc5_ && this))
         {
            if(!§§pop())
            {
               return;
            }
            §'q§.§5e§();
            if(this.§?!8§ == §50§)
            {
               if(_loc4_ || param1)
               {
                  this.§'3§(§]c§);
                  if(!_loc5_)
                  {
                     addr50:
                     if(§?V§.slingshot.mDragging)
                     {
                        _loc3_ = §?V§.screenToBox2D(param1,param2);
                        if(!_loc5_)
                        {
                           §?V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                           if(!_loc5_)
                           {
                              addr82:
                              if(§?V§.slingshot.canShootTheBird())
                              {
                                 if(_loc4_)
                                 {
                                    §?V§.slingshot.shoot();
                                    if(_loc4_)
                                    {
                                       addr93:
                                       this.§'3§(§=!+§);
                                       if(_loc5_)
                                       {
                                       }
                                       addr102:
                                       if(§?V§.camera.mDragging)
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(!isNaN(param1));
                                             if(_loc4_ || param2)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop();
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                }
                                             }
                                             §§goto(addr145);
                                          }
                                          addr145:
                                          if(§§pop())
                                          {
                                             addr146:
                                             §?V§.camera.dragToNewPoint(param1,param2);
                                             §§goto(addr151);
                                          }
                                          addr151:
                                          §?V§.camera.stopDragging();
                                          return;
                                          §§push(!isNaN(param2));
                                       }
                                       §§goto(addr146);
                                    }
                                 }
                              }
                              else
                              {
                                 §?V§.slingshot.cancelDragging();
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr50);
         }
         §§goto(addr145);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_)
         {
            if(!this.§+P§)
            {
               if(_loc4_ || this)
               {
                  return;
               }
            }
            else if(§?V§.slingshot.mDragging)
            {
               if(_loc4_ || _loc3_)
               {
                  addr55:
                  _loc3_ = §?V§.screenToBox2D(param1,param2);
                  if(_loc4_)
                  {
                     §?V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(_loc4_)
                     {
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr100);
               }
            }
            else if(§?V§.camera.mDragging)
            {
               if(_loc4_)
               {
                  §?V§.camera.dragToNewPoint(param1,param2);
               }
            }
            addr95:
            this.§>>§ = param1;
            if(_loc4_)
            {
               addr100:
               this.§;!§ = param2;
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §=A§() : Point
      {
         return new Point(this.§>>§,this.§;!§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5L§.assign(this.§5L§.getValue() + param1);
            if(!_loc3_)
            {
               addr53:
               this.§,!,§(§2r§);
               if(_loc2_)
               {
                  if(this.§?!8§ == §?k§)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr69:
                        this.§6§ = 2000;
                        if(_loc2_ || _loc2_)
                        {
                           this.§"!7§ = §0V§;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr53);
      }
      
      override public function getScore() : int
      {
         return this.§5L§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(!§=w§.§ o§.objects.mMightyEagleAdded)
            {
               if(_loc3_ || this)
               {
                  addr45:
                  §§push(0);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  §§push(§[4§.§!_§(§[4§.§"!>§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
            §§goto(addr64);
         }
         §§goto(addr45);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§+P§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+P§ = param1;
         }
      }
   }
}
