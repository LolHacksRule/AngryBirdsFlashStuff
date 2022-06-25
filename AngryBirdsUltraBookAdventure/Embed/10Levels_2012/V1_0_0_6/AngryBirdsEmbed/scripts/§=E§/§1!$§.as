package §=E§
{
   import §#h§.§ !H§;
   import §%!6§.§'[§;
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §3G§.§3X§;
   import §3c§.§^z§;
   import §8u§.§0r§;
   import §8u§.§8j§;
   import §8u§.§[P§;
   import §=!B§.§59§;
   import §>K§.§7R§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §1!$§ extends §0?§
   {
      
      public static const §4p§:int = 0;
      
      public static const §]Q§:int = 1;
      
      public static const §<!9§:int = 2;
      
      public static const §^r§:int = 3;
      
      public static const §[!'§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §]J§:int = 7;
      
      protected static const §7!+§:Number = 0.001;
      
      public static const §<S§:Number = 2000;
      
      public static const §5!F§:Number = 2500;
      
      public static const §,U§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §<!9§ = 2;
            if(_loc2_ || §1!$§)
            {
               §^r§ = 3;
               §[!'§ = 4;
               LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
               LEVEL_STATE_VICTORY2_END = 6;
               §]J§ = 7;
               if(_loc2_ || _loc2_)
               {
                  §§push(§§findproperty(§7!+§));
                  §§push(§^z§.§,!2§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() / 100);
                  }
                  §§pop().§7!+§ = §§pop();
                  §<S§ = 2000;
                  §5!F§ = 2500;
                  addr101:
                  §,U§ = 5;
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      public var §>!!§:int = 0;
      
      protected var §8z§:int = 0;
      
      public var §>!9§:Number;
      
      protected var § `§:Number = 0;
      
      protected var §+!+§:Boolean = false;
      
      private var §5e§:Number = 0;
      
      public var §8!H§:Number = 0;
      
      protected var §;!,§:Boolean;
      
      protected var §4!F§:Number = 0;
      
      protected var §22§:Number = 0;
      
      protected var §]!B§:Boolean = true;
      
      protected var §!!$§:§'[§;
      
      public function §1!$§(param1:§!E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§!!$§ = new §'[§();
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
         super.init();
         this.§!!$§.assign(0);
         if(!_loc1_)
         {
            this.§>!!§ = -1;
            if(_loc2_)
            {
               this.§8z§ = 0;
               this.§ `§ = 0;
               this.§+!+§ = false;
               this.§6j§(§4p§);
               this.§>!9§ = §<S§;
               if(_loc2_ || _loc1_)
               {
                  §7#§(true);
                  if(_loc2_)
                  {
                     addr77:
                     §33§.objects.setDamageEnabled(true);
                     §33§.objects.setGroundTextureEnabled(true);
                  }
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1 = §33§.update(param1,true);
            if(!_loc3_)
            {
               this.§ z§(param1);
               if(_loc2_ || _loc2_)
               {
                  this.§>[§(param1);
               }
            }
         }
      }
      
      private function § z§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§8z§ != 0)
            {
               if(_loc3_ || _loc3_)
               {
                  addr45:
                  §33§.camera.adjustManualScale(this.§8z§ > 0,param1 * §7!+§);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §33§.clearLevel();
            if(!(_loc1_ && _loc2_))
            {
               removeEventListeners();
               if(_loc2_ || this)
               {
               }
               §§goto(addr50);
            }
            this.§>!!§ = -1;
         }
         addr50:
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §6o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§33§.camera.mCurrentCameraSliderLocation < §^z§.§>!I§)
            {
               if(!_loc2_)
               {
                  §§push(false);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr72:
                  §§push(true);
               }
               §§goto(addr73);
            }
            else if(!§33§.objects.isWorldAtSleep())
            {
               if(!_loc2_)
               {
                  §§push(false);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr72);
               }
               addr73:
               return §§pop();
            }
         }
         §§goto(addr72);
      }
      
      public function §7I§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^z§ = §33§.camera;
         §§push(_loc2_.§'v§);
         if(!_loc4_)
         {
            §§push(0);
            if(!_loc4_)
            {
               if(§§pop() > §§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr56:
                     §§push(_loc2_);
                     §§push(_loc2_.§'v§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§'v§ = §§pop();
                     if(_loc2_.§'v§ <= 0)
                     {
                        if(this.§6o§())
                        {
                           if(_loc3_)
                           {
                              _loc2_.§'v§ = -1;
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr97);
                           }
                           if(§33§.slingshot.birdsAvailable)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc2_.§42§();
                              }
                           }
                        }
                        else
                        {
                           _loc2_.§'v§ = §^z§.§switch§ / 2;
                        }
                     }
                  }
               }
               addr97:
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §6j§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§%!$§(false));
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr35:
                        §§pop();
                        if(_loc3_ || param2)
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                           }
                           §§goto(addr47);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr47);
                  }
                  addr47:
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        return;
                     }
                     addr74:
                     §33§.camera.goToBirdView();
                  }
                  else
                  {
                     §§push(param1);
                     §§push(§4p§);
                     if(_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_)
                           {
                              this.§8!H§ = 2000;
                           }
                           else
                           {
                              addr258:
                           }
                           §§goto(addr305);
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(§]Q§);
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr74);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       §§push(§<!9§);
                                       if(_loc3_ || param2)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             this.§;!,§ = false;
                                             if(!(_loc4_ && param2))
                                             {
                                                this.§8!H§ = 5000;
                                                §33§.particles.moveTrailsNewToOld();
                                                if(_loc4_ && _loc3_)
                                                {
                                                   addr160:
                                                   this.§5e§ = §,U§;
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      §33§.camera.goToCastleView();
                                                   }
                                                }
                                             }
                                             §§goto(addr305);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             §§push(§^r§);
                                             if(_loc3_ || param1)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   §33§.camera.goToCastleView();
                                                   if(!_loc3_)
                                                   {
                                                      addr279:
                                                      § !H§.§[!<§();
                                                      § !H§.§ !%§("LevelFailedPigs1");
                                                      if(!_loc4_)
                                                      {
                                                         this.§8!H§ = 1200;
                                                         §33§.camera.goToCastleView();
                                                         if(!_loc4_)
                                                         {
                                                            addr294:
                                                            §33§.objects.makePigsSmile(5);
                                                            if(_loc4_ && this)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr305);
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr138:
                                                      if(§§pop() == §[!'§)
                                                      {
                                                         this.§8!H§ = 2000;
                                                         if(_loc3_ || param2)
                                                         {
                                                            §§goto(addr160);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr279);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr176:
                                                         if(param1 == LEVEL_STATE_VICTORY2_END)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               this.§8!H§ = 1200;
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  if(!§33§.objects.mMightyEagleAdded)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §33§.camera.goToBirdView();
                                                                        addr208:
                                                                        §§goto(addr305);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr216:
                                                                        this.§8!H§ = 1200;
                                                                        if(!§33§.objects.mMightyEagleAdded)
                                                                        {
                                                                           §33§.camera.goToBirdView();
                                                                           §33§.slingshot.makeBirdsJumpForJoy();
                                                                           if(_loc4_ && this)
                                                                           {
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§push(§ !H§);
                                                                        §§push("LevelCompletedBirdsMilitary");
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                        }
                                                                        §§pop().§ !%§(§§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr258);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr294);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                               if(_loc3_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     §§goto(addr216);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               addr261:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     §§goto(addr279);
                                                                  }
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§goto(addr261);
                                                   §§push(§]J§);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr261);
                                          }
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr261);
                  }
                  addr305:
                  this.§>!!§ = param1;
                  return;
               }
            }
            §§goto(addr35);
         }
         §§goto(addr279);
      }
      
      public function §3P§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ `§ = Math.max(this.§ `§,param1);
         }
      }
      
      protected function §'!A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§33§.slingshot.mSlingShotState == §3X§.§=2§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr42:
                     §§push(!§33§.objects.hasBirds());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §>[§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§0r§ = null;
         §§push(this);
         §§push(this.§>!9§);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§>!9§ = §§pop();
         if(this.§+!+§)
         {
            §§push(this);
            §§push(this.§ `§);
            if(!_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§ `§ = §§pop();
            if(_loc5_)
            {
               §§push(this.§ `§);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     this.§>!9§ = 0;
                     addr63:
                     §§push(this.§>!9§ <= 0);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(_loc5_ || param1)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§pop();
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(this.§%!$§(false));
                                    if(!_loc6_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_)
                                       {
                                          addr106:
                                          if(§§pop())
                                          {
                                             this.§>!9§ = §<S§;
                                             _loc2_ = §33§.objects.isWorldAtSleep();
                                             if(_loc5_ || this)
                                             {
                                                §§push(!_loc2_);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§+!+§);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!!§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr150:
                                                                  §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§ `§);
                                                                     §§push(0);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr164:
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           §§push(!this.§+!+§);
                                                                           if(!!this.§+!+§)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(this.§ `§);
                                                                                 §§push(6000);
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    addr189:
                                                                                    if(§§pop() > §§pop() && !§33§.objects.isPigsAlive())
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          this.§ `§ = 6000;
                                                                                          this.§+!+§ = true;
                                                                                          addr266:
                                                                                          if(this.§%!$§(false))
                                                                                          {
                                                                                             addr369:
                                                                                             §33§.gameOver();
                                                                                             addr371:
                                                                                             §§push(this);
                                                                                             §§push(this.§8!H§);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() - param1);
                                                                                             }
                                                                                             §§pop().§8!H§ = §§pop();
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(this.§8!H§);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(§§pop() < 0)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         this.§8!H§ = 0;
                                                                                                         addr402:
                                                                                                         §§push(this.§>!!§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§^r§);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  addr410:
                                                                                                                  §33§.updatePigAnimations(param1);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(!§33§.camera.isOnCastleView());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr455:
                                                                                                                                    §§push(§33§.camera.mCurrentAction != §^z§.§7!F§);
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr469:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          this.§6j§(§]Q§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr861);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr690:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr694:
                                                                                                                                             §§pop();
                                                                                                                                             addr701:
                                                                                                                                             §§push(§33§.camera.mCurrentAction != §^z§.§7!F§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr701);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr861);
                                                                                                                              }
                                                                                                                              addr702:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr705:
                                                                                                                                    this.§6j§(§^r§);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr727:
                                                                                                                                    §§push(!(_loc4_ = §33§.activeObject));
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§push(_loc4_.§@^§);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < _loc4_.§%!J§);
                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr766:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(_loc4_));
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§push(Boolean(_loc4_ is §[P§));
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr789:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr792:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           §§push((_loc4_ as §8j§).§=t§);
                                                                                                                                                                           if(_loc6_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr815);
                                                                                                                                                                     }
                                                                                                                                                                     addr807:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr808:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr813:
                                                                                                                                                                           addr815:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              this.§;!,§ = true;
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§6j§(§[!'§);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr840);
                                                                                                                                                                           }
                                                                                                                                                                           §33§.activeObject = null;
                                                                                                                                                                           this.§6j§(§[!'§);
                                                                                                                                                                           addr840:
                                                                                                                                                                           addr861:
                                                                                                                                                                           return;
                                                                                                                                                                           §§push(_loc4_.getSpecialAnimationProgress() >= 0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr840);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr815);
                                                                                                                                                                  }
                                                                                                                                                                  addr806:
                                                                                                                                                                  §§goto(addr807);
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr789);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr792);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr808);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr840);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr815);
                                                                                                                                                }
                                                                                                                                                §§goto(addr813);
                                                                                                                                             }
                                                                                                                                             §§goto(addr806);
                                                                                                                                          }
                                                                                                                                          §§goto(addr766);
                                                                                                                                       }
                                                                                                                                       §§goto(addr789);
                                                                                                                                    }
                                                                                                                                    §§goto(addr808);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr861);
                                                                                                                           }
                                                                                                                           §§goto(addr469);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr522:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr588:
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 addr534:
                                                                                                                                 §§push(this.§5e§ > 0);
                                                                                                                              }
                                                                                                                              §§push(!§33§.camera.isOnCastleView());
                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                              {
                                                                                                                                 addr603:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr612:
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§33§.camera.mCurrentAction == §^z§.§7!F§);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr623:
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(!(_loc6_ && param1))
                                                                                                                                             {
                                                                                                                                                addr631:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr634:
                                                                                                                                                      this.§6j§(§]Q§);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr679:
                                                                                                                                                      §§push(Boolean(§33§.camera.isOnCastleView()));
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr690);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr701);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr469);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr694);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr853:
                                                                                                                                          this.§8!H§ = 1000;
                                                                                                                                          §§goto(addr469);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr702);
                                                                                                                                 }
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              §§goto(addr694);
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr538:
                                                                                                                                 this.§8!H§ = 2000;
                                                                                                                                 this.§>!9§ = 0;
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr551:
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§5e§);
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                    }
                                                                                                                                    §§pop().§5e§ = §§pop();
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       addr570:
                                                                                                                                       §§goto(addr588);
                                                                                                                                    }
                                                                                                                                    §§goto(addr705);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr656:
                                                                                                                                    addr658:
                                                                                                                                    addr659:
                                                                                                                                    if(this.§8!H§ <= 0)
                                                                                                                                    {
                                                                                                                                       this.§6j§(§]Q§);
                                                                                                                                    }
                                                                                                                                    addr663:
                                                                                                                                    §§goto(addr469);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr679);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(§"h§.§1C§.objects.mMightyEagleAdded);
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr577:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr578:
                                                                                                                                    this.§6j§(§]Q§);
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr588);
                                                                                                                                    }
                                                                                                                                    §§goto(addr705);
                                                                                                                                 }
                                                                                                                                 §§goto(addr588);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr612);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr603);
                                                                                                                  }
                                                                                                                  §§goto(addr469);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.§>!!§);
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§[!'§);
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           §§push(this.§8!H§);
                                                                                                                           §§push(0);
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc3_ = §33§.objects.hasBirds();
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr518:
                                                                                                                                       §§push(Boolean(_loc3_));
                                                                                                                                       §§push(Boolean(_loc3_));
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr522);
                                                                                                                                       }
                                                                                                                                       §§goto(addr690);
                                                                                                                                    }
                                                                                                                                    §§goto(addr634);
                                                                                                                                 }
                                                                                                                                 §§goto(addr663);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §33§.updatePigAnimations(param1);
                                                                                                                              }
                                                                                                                              §§goto(addr588);
                                                                                                                           }
                                                                                                                           §§goto(addr534);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.§>!!§);
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§4p§);
                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr655:
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr656);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§>!!§);
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr673:
                                                                                                                                       §§push(§]Q§);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr679);
                                                                                                                                             }
                                                                                                                                             §§goto(addr705);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(this.§>!!§);
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr718:
                                                                                                                                                §§push(§<!9§);
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr726:
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr727);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr843:
                                                                                                                                                      §§push(this.§>!!§);
                                                                                                                                                      §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr469);
                                                                                                                                                }
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   if(this.§8!H§ <= 0)
                                                                                                                                                   {
                                                                                                                                                      if(§33§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr853);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§6j§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                         §§goto(addr469);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr469);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr469);
                                                                                                                                       }
                                                                                                                                       §§goto(addr726);
                                                                                                                                    }
                                                                                                                                    §§goto(addr843);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr726);
                                                                                                                           }
                                                                                                                           §§goto(addr718);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr655);
                                                                                                                  }
                                                                                                                  §§goto(addr673);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr655);
                                                                                                         }
                                                                                                         §§goto(addr718);
                                                                                                      }
                                                                                                      §§goto(addr588);
                                                                                                   }
                                                                                                   §§goto(addr402);
                                                                                                }
                                                                                                §§goto(addr658);
                                                                                             }
                                                                                             §§goto(addr410);
                                                                                          }
                                                                                          §§goto(addr371);
                                                                                          addr266:
                                                                                       }
                                                                                       §§goto(addr578);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(!this.§+!+§);
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§'!A§());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr245:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               this.§ `§ = 15000;
                                                                                                               this.§+!+§ = true;
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr266);
                                                                                                               }
                                                                                                               §§goto(addr469);
                                                                                                            }
                                                                                                            §§goto(addr727);
                                                                                                         }
                                                                                                         §§goto(addr266);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr284:
                                                                                                         §§pop();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr291:
                                                                                                            if(!§33§.objects.mMightyEagleAdded)
                                                                                                            {
                                                                                                               this.§-!$§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                               §§goto(addr266);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.§'!A§());
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        if(§33§.objects.mMightyEagleAdded)
                                                                                                                        {
                                                                                                                           addr322:
                                                                                                                           §§push(Boolean(§33§.objects.mMightyEagleHasTouchedGround));
                                                                                                                           if(Boolean(§33§.objects.mMightyEagleHasTouchedGround))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 addr336:
                                                                                                                                 if(§33§.objects.mMightyEagleTimer > 5500)
                                                                                                                                 {
                                                                                                                                    this.§-!$§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                 }
                                                                                                                                 else if(§33§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       this.§>!9§ = §<S§;
                                                                                                                                       addr350:
                                                                                                                                       §§goto(addr266);
                                                                                                                                    }
                                                                                                                                    §§goto(addr402);
                                                                                                                                 }
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                              §§goto(addr369);
                                                                                                                           }
                                                                                                                           §§goto(addr336);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           if(!§33§.objects.mSardineCanAdded)
                                                                                                                           {
                                                                                                                              this.§-!$§(§]J§);
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr266);
                                                                                                                              }
                                                                                                                              §§goto(addr702);
                                                                                                                           }
                                                                                                                           §§goto(addr266);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr455);
                                                                                                                  }
                                                                                                                  §§goto(addr266);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr623);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr551);
                                                                                                   }
                                                                                                   §§goto(addr570);
                                                                                                }
                                                                                                §§goto(addr690);
                                                                                             }
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr274:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr275:
                                                                                                §§pop();
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr282:
                                                                                                   §§push(!§33§.objects.mSardineCanAdded);
                                                                                                   if(!§33§.objects.mSardineCanAdded)
                                                                                                   {
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                   §§goto(addr291);
                                                                                                }
                                                                                                §§goto(addr350);
                                                                                             }
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr518);
                                                                                 }
                                                                                 §§goto(addr659);
                                                                              }
                                                                              §§goto(addr705);
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(!§33§.objects.isPigsAlive());
                                                                           §§push(!§33§.objects.isPigsAlive());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr274);
                                                                           }
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr656);
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr455);
                                                      }
                                                      §§goto(addr410);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr577);
                                             }
                                             §§goto(addr538);
                                          }
                                          §§goto(addr369);
                                       }
                                       §§goto(addr469);
                                    }
                                    §§goto(addr455);
                                 }
                                 §§goto(addr853);
                              }
                              §§goto(addr694);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr522);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr63);
               }
               §§goto(addr656);
            }
            §§goto(addr266);
         }
         §§goto(addr63);
      }
      
      protected function §-!$§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!this.§+!+§)
         {
            this.§+!+§ = true;
            if(!(_loc4_ && param1))
            {
               addr29:
               §§push(new Date().time - §33§.slingshot.timeOfLastBirdShot);
               if(_loc3_)
               {
                  §§push(6000);
                  if(_loc3_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                        addr79:
                        if(§33§.objects.isWorldAtSleep())
                        {
                           this.§ `§ = Math.min(this.§ `§,3500);
                        }
                        §§push(this.§ `§);
                        §§push(0);
                     }
                     else
                     {
                        if(§33§.slingshot.mDragging)
                        {
                           if(!_loc4_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           §§goto(addr79);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr79);
                  }
                  if(§§pop() <= §§pop())
                  {
                     this.§6j§(param1,param2);
                  }
                  addr98:
                  return;
               }
            }
            §§goto(addr79);
         }
         §§goto(addr29);
      }
      
      public function §%!$§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§>!!§);
            if(_loc3_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc3_ || this)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           addr54:
                           §§push(this.§>!!§);
                           if(_loc3_ || this)
                           {
                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                              if(_loc3_)
                              {
                                 addr66:
                                 §§push(§§pop() == §§pop());
                                 if(!_loc2_)
                                 {
                                    addr79:
                                    §§push(§§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          addr88:
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             §§push(this.§>!!§);
                                             if(_loc3_ || this)
                                             {
                                                addr100:
                                                §§push(§]J§);
                                                if(!_loc2_)
                                                {
                                                   addr104:
                                                   §§push(§§pop() == §§pop());
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr107:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr113:
                                                               §§push(!param1);
                                                               §§push(!param1);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr149:
                                                                           §§push(this.§8!H§ <= 0);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr156:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 addr158:
                                                                                 addr161:
                                                                                 addr160:
                                                                                 §§push(this.§>!!§ == LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr165);
                                                                           }
                                                                           addr165:
                                                                           return §§pop();
                                                                           §§push(!§§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr107);
               }
               §§goto(addr66);
            }
            §§goto(addr100);
         }
         §§goto(addr54);
      }
      
      public function §,Y§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§>!!§);
            if(_loc2_ || _loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop();
                           addr72:
                           §§push(this.§>!!§ == §]J§);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.delta != 0)
            {
               if(_loc3_)
               {
                  this.doUserZoom(param1.delta > 0);
               }
            }
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(!this.§]!B§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(!§33§.mReadyToRun);
                           if(!(_loc3_ && param1))
                           {
                              addr57:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    return;
                                 }
                                 addr169:
                                 if(!§33§.isPlayingReplay())
                                 {
                                    §33§.camera.adjustManualScale(param1);
                                    if(_loc2_ || this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §33§.changeReplaySpeed(param1);
                                 }
                              }
                              else
                              {
                                 addr72:
                                 §§push(Boolean(§33§.slingshot.mDragging));
                                 §§push(Boolean(§33§.slingshot.mDragging));
                                 if(_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop();
                                          addr93:
                                          if(§33§.camera.mDragging)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr187:
                                                return;
                                                addr101:
                                             }
                                             else
                                             {
                                                §§goto(addr169);
                                             }
                                             §§goto(addr187);
                                          }
                                          else
                                          {
                                             §§push(this.§>!!§);
                                             if(!_loc3_)
                                             {
                                                §§push(§[!'§);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc2_)
                                                   {
                                                      addr112:
                                                      §§push(§§pop());
                                                      if(_loc2_ || param1)
                                                      {
                                                         addr120:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc2_ || param1)
                                                            {
                                                               addr128:
                                                               §§pop();
                                                               §§push(this.§>!!§);
                                                               if(!_loc3_)
                                                               {
                                                                  addr133:
                                                                  §§push(§^r§);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr141:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        addr159:
                                                                        if(!§§pop())
                                                                        {
                                                                           addr168:
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              addr166:
                                                                              §§push(this.§>!!§);
                                                                              §§push(§]Q§);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr169);
                                                                           }
                                                                           §§goto(addr187);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr168);
                                                                  §§push(§§pop() == §§pop());
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr133);
                                          }
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr120);
            }
            §§goto(addr112);
         }
         §§goto(addr128);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §&!5§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8z§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_)
         {
            if(!this.§]!B§)
            {
               if(_loc5_ || param2)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
               if(_loc5_)
               {
                  if(_loc3_.isDefaultPrevented())
                  {
                     return;
                  }
                  §7R§.§05§();
                  if(_loc5_ || param1)
                  {
                     §§push(this.§%!$§(false));
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           return;
                        }
                        if(!§33§.isPlayingReplay())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(Boolean(§33§.activeObject));
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§pop();
                                          addr121:
                                          §§push(this.§>!!§ == §<!9§);
                                          if(_loc5_)
                                          {
                                             addr129:
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    §§goto(addr129);
                                 }
                                 if(!§§pop())
                                 {
                                    addr131:
                                    §§pop();
                                    §§push(Boolean(this.§;!,§));
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr138);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr131);
                  }
                  addr138:
                  this.§;!,§ = false;
                  if(_loc5_ || param1)
                  {
                     §33§.activatePowerup();
                     if(_loc5_)
                     {
                        §§goto(addr152);
                     }
                  }
                  else
                  {
                     addr153:
                     _loc4_ = §33§.screenToBox2D(param1,param2);
                     if(!_loc6_)
                     {
                        if(§33§.slingshot.canStartDragging(_loc4_))
                        {
                           if(!_loc6_)
                           {
                              addr168:
                              §33§.slingshot.startDragging();
                              if(!(_loc6_ && this))
                              {
                                 this.§6j§(§]Q§);
                                 if(_loc6_)
                                 {
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr201);
                        }
                        else
                        {
                           §33§.camera.startDragging(param1,param2);
                           if(!_loc6_)
                           {
                              addr201:
                              return;
                           }
                           §§goto(addr202);
                        }
                        addr202:
                        §33§.camera.startDragging(param1,param2);
                        if(_loc5_ || param2)
                        {
                           §33§.resetReplaySpeed();
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr168);
                  }
                  addr216:
                  return;
               }
               §§goto(addr131);
            }
            addr152:
            return;
         }
         addr31:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         §§push(this.§]!B§);
         if(!(_loc5_ && param2))
         {
            if(!§§pop())
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            else
            {
               §7R§.§8h§();
            }
            if(this.§>!!§ == §4p§)
            {
               this.§6j§(§]Q§);
               if(_loc4_ || _loc3_)
               {
                  addr50:
                  if(§33§.slingshot.mDragging)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        _loc3_ = §33§.screenToBox2D(param1,param2);
                        if(_loc4_)
                        {
                           §33§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                           if(!(_loc5_ && param2))
                           {
                              addr94:
                              if(§33§.slingshot.canShootTheBird())
                              {
                                 if(_loc4_ || param2)
                                 {
                                    §33§.slingshot.shoot();
                                    if(_loc5_)
                                    {
                                    }
                                    addr119:
                                    if(§33§.camera.mDragging)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(!isNaN(param1));
                                          if(!(_loc5_ && this))
                                          {
                                             addr136:
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§pop();
                                                   §§goto(addr180);
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                addr165:
                                                §33§.camera.dragToNewPoint(param1,param2);
                                                if(_loc4_ || param1)
                                                {
                                                }
                                             }
                                             §§goto(addr180);
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    addr180:
                                    if(!_loc5_)
                                    {
                                       §§push(!isNaN(param2));
                                    }
                                    §33§.camera.stopDragging();
                                    return;
                                    addr115:
                                 }
                                 this.§6j§(§<!9§);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §33§.slingshot.cancelDragging();
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr119);
               }
               §§goto(addr165);
            }
            §§goto(addr50);
         }
         §§goto(addr136);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || this)
         {
            if(!this.§]!B§)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            if(§33§.slingshot.mDragging)
            {
               if(!(_loc5_ && param1))
               {
                  addr55:
                  _loc3_ = §33§.screenToBox2D(param1,param2);
                  if(_loc4_ || param1)
                  {
                     §33§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(_loc4_)
                     {
                        addr105:
                        this.§4!F§ = param1;
                        if(_loc4_)
                        {
                           this.§22§ = param2;
                        }
                        addr88:
                     }
                     return;
                  }
                  §§goto(addr88);
               }
            }
            else if(§33§.camera.mDragging)
            {
               if(_loc4_ || param2)
               {
                  §33§.camera.dragToNewPoint(param1,param2);
               }
            }
            §§goto(addr105);
         }
         §§goto(addr55);
      }
      
      public function §^-§() : Point
      {
         return new Point(this.§4!F§,this.§22§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!$§.assign(this.§!!$§.getValue() + param1);
            if(!(_loc2_ && _loc2_))
            {
               this.§3P§(§5!F§);
               if(!_loc2_)
               {
                  if(this.§>!!§ == §[!'§)
                  {
                     if(!_loc2_)
                     {
                        addr65:
                        this.§8!H§ = 2000;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr73);
                     }
                     this.§5e§ = §,U§;
                     §§goto(addr73);
                  }
                  addr73:
                  return;
               }
               §§goto(addr65);
            }
         }
         §§goto(addr65);
      }
      
      override public function getScore() : int
      {
         return this.§!!$§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§"h§.§1C§.objects.mMightyEagleAdded)
            {
               if(!_loc3_)
               {
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  §§push(§59§.§'Y§(§59§.§%j§).getEagleScore());
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
         return this.§]!B§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!B§ = param1;
         }
      }
   }
}
