package §5#§
{
   import § !r§.§%s§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §8!Q§.§2!7§;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   import §>!'§.§&!6§;
   import §>!'§.§7!U§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §`a§.§ !U§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@o§ extends §?o§
   {
      
      public static const §9!q§:int = 0;
      
      public static const §'!m§:int = 1;
      
      public static const §5j§:int = 2;
      
      public static const §%!#§:int = 3;
      
      public static const § !j§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%!s§:int = 7;
      
      private static const §!U§:Number = 0.001;
      
      public static const §[>§:Number = 2000;
      
      public static const §=!f§:Number = 2500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §9!q§ = 0;
            if(!_loc2_)
            {
               §'!m§ = 1;
            }
            §5j§ = 2;
            if(_loc1_ || _loc2_)
            {
               §%!#§ = 3;
               § !j§ = 4;
               LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
               if(!_loc2_)
               {
                  LEVEL_STATE_VICTORY2_END = 6;
                  if(_loc1_)
                  {
                     addr77:
                     §%!s§ = 7;
                     §§push(§§findproperty(§!U§));
                     §§push(§ !U§.MANUAL_SCALE_STEP);
                     if(_loc1_)
                     {
                        §§push(§§pop() / 100);
                     }
                     §§pop().§!U§ = §§pop();
                     §[>§ = 2000;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr96);
                  }
                  §=!f§ = 2500;
                  addr96:
                  return;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
      
      public var §<!]§:int = 0;
      
      private var §29§:int = 0;
      
      public var §0!X§:Number;
      
      protected var §]!K§:Number = 0;
      
      protected var §]!b§:Boolean = false;
      
      public var §3!-§:Number = 0;
      
      protected var §4!i§:Boolean;
      
      private var §=>§:Number = 0;
      
      private var §+!@§:Number = 0;
      
      protected var §,v§:Boolean = true;
      
      protected var §'!g§:§2!7§;
      
      public function §@o§(param1:§7E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'!g§ = new §2!7§();
            if(_loc3_ || _loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            this.§'!g§.assign(0);
            this.§<!]§ = -1;
            if(_loc1_ || _loc1_)
            {
               this.§29§ = 0;
               this.§]!K§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  addr57:
                  this.§]!b§ = false;
                  if(_loc1_ || this)
                  {
                     this.§^!o§(§9!q§);
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§0!X§ = §[>§;
                     }
                     §§goto(addr90);
                  }
                  §-n§.objects.setDamageEnabled(true);
                  §-n§.objects.setGroundTextureEnabled(true);
               }
               §§goto(addr90);
            }
            addr90:
            §05§(true);
            if(!_loc1_)
            {
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §-n§.update(param1,true);
            if(!(_loc3_ && _loc2_))
            {
               addr41:
               this.§>y§(param1);
               if(!_loc3_)
               {
                  this.§+!+§(param1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      private function §>y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§29§ != 0)
            {
               if(_loc3_)
               {
                  addr35:
                  §-n§.camera.adjustManualScale(this.§29§ > 0,param1 * §!U§);
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §-n§.clearLevel();
            if(_loc2_)
            {
               removeEventListeners();
               if(!_loc1_)
               {
                  this.§<!]§ = -1;
               }
            }
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.addEventListeners();
         }
      }
      
      public function §1I§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§-n§.camera.mCurrentCameraSliderLocation < § !U§.§&n§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  §§push(false);
                  if(!(_loc1_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
            }
            else
            {
               addr58:
               if(!§-n§.objects.isWorldAtSleep())
               {
                  if(_loc2_)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr74);
               }
               §§push(true);
            }
            addr74:
            return §§pop();
         }
         §§goto(addr58);
      }
      
      public function §,!<§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ !U§ = §-n§.camera;
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_.§[!0§);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§[!0§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§[!0§ = §§pop();
                     if(_loc3_)
                     {
                        addr63:
                        if(_loc2_.§[!0§ <= 0)
                        {
                           if(_loc3_ || param1)
                           {
                              addr71:
                              if(this.§1I§())
                              {
                                 _loc2_.§[!0§ = -1;
                                 if(!(_loc4_ && this))
                                 {
                                    addr94:
                                    if(§-n§.slingshot.birdsAvailable)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr105:
                                          _loc2_.§3a§();
                                       }
                                    }
                                    §§goto(addr114);
                                 }
                              }
                              else
                              {
                                 _loc2_.§[!0§ = § !U§.§^,§ / 2;
                                 §§goto(addr114);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr71);
                  }
                  addr114:
                  return;
               }
            }
            §§goto(addr63);
         }
         §§goto(addr94);
      }
      
      public function §^!o§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§#!=§(false));
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(§§pop()));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     §§push(param2);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr39);
                  }
               }
               §§goto(addr39);
            }
            §§push(!§§pop());
         }
         addr39:
         if(§§pop())
         {
            if(!(_loc3_ && this))
            {
               return;
            }
            addr95:
            §-n§.camera.goToBirdView();
         }
         else if(param1 == §9!q§)
         {
            if(_loc4_ || this)
            {
               this.§3!-§ = 2000;
               if(_loc4_ || _loc3_)
               {
               }
               §§goto(addr303);
            }
            else
            {
               addr182:
               this.§3!-§ = 1200;
               if(!§-n§.objects.mMightyEagleAdded)
               {
                  if(_loc4_ || param2)
                  {
                     §-n§.camera.goToBirdView();
                  }
               }
            }
            addr199:
         }
         else
         {
            §§push(param1);
            if(!(_loc3_ && param2))
            {
               §§push(§'!m§);
               if(!(_loc3_ && this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr95);
                     }
                     else
                     {
                        addr156:
                        this.§3!-§ = 2000;
                        if(!_loc3_)
                        {
                           §-n§.camera.goToCastleView();
                           §§goto(addr303);
                        }
                        else
                        {
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr303);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§5j§);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§4!i§ = false;
                              this.§3!-§ = 5000;
                              §-n§.particles.moveTrailsNewToOld();
                              if(_loc3_)
                              {
                                 addr219:
                                 this.§3!-§ = 1200;
                                 if(_loc4_ || param2)
                                 {
                                    if(!§-n§.objects.mMightyEagleAdded)
                                    {
                                       if(!_loc3_)
                                       {
                                          §-n§.camera.goToBirdView();
                                          §-n§.slingshot.makeBirdsJumpForJoy();
                                       }
                                    }
                                    §§push(§+!§);
                                    §§push("LevelCompletedBirdsMilitary");
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() + (1 + int(Math.random() * 2)));
                                    }
                                    §§pop().§4c§(§§pop());
                                    if(_loc3_)
                                    {
                                       addr299:
                                       §-n§.objects.makePigsSmile(5);
                                    }
                                 }
                              }
                              §§goto(addr303);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 if(§§pop() == §%!#§)
                                 {
                                    §-n§.camera.goToCastleView();
                                    if(_loc4_)
                                    {
                                       §§goto(addr303);
                                    }
                                    else
                                    {
                                       §§goto(addr199);
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && this))
                                    {
                                       addr152:
                                       §§push(§ !j§);
                                       if(_loc4_)
                                       {
                                          addr155:
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr156);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(_loc4_ || param2)
                                             {
                                                addr173:
                                                §§push(LEVEL_STATE_VICTORY2_END);
                                                if(_loc4_ || param2)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§goto(addr182);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(_loc4_ || param1)
                                                      {
                                                      }
                                                      addr261:
                                                      if(§§pop() == §%!s§)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §+!§.§'!Q§();
                                                            §+!§.§4c§("LevelFailedPigs1");
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               addr286:
                                                               this.§3!-§ = 1200;
                                                            }
                                                            §-n§.camera.goToCastleView();
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                }
                                                §§goto(addr261);
                                             }
                                             §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§goto(addr219);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr286);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr261);
                                                   §§push(param1);
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr261);
                                          }
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr152);
                  }
               }
            }
            §§goto(addr261);
         }
         addr303:
         this.§<!]§ = param1;
      }
      
      public function §8!0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]!K§ = Math.max(this.§]!K§,param1);
         }
      }
      
      protected function §]!&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§-n§.slingshot.mSlingShotState == §;§.§>!]§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop();
                     addr47:
                     §§push(!§-n§.objects.hasBirds());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §+!+§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§<!3§ = null;
         §§push(this);
         §§push(this.§0!X§);
         if(!_loc5_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§0!X§ = §§pop();
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§]!b§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(this);
                     §§push(this.§]!K§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§]!K§ = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.§]!K§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    this.§0!X§ = 0;
                                    addr81:
                                    §§push(this.§0!X§ <= 0);
                                    if(this.§0!X§ <= 0)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(this.§#!=§(false));
                                             if(_loc4_)
                                             {
                                                addr103:
                                                if(!§§pop())
                                                {
                                                   this.§0!X§ = §[>§;
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr114:
                                                      §§push(Boolean(§-n§.objects.isWorldAtSleep()));
                                                      if(!(_loc5_ && this))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            addr130:
                                                            §§push(!_loc2_);
                                                            §§push(!_loc2_);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr141:
                                                                     §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(!this.§]!b§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(this.§]!K§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() > 0);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr162:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(!this.§]!b§);
                                                                                             §§push(!this.§]!b§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr171:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.§]!K§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(6000);
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               addr200:
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr207:
                                                                                                                        §§push(!§-n§.objects.isPigsAlive());
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr218:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              this.§]!K§ = 6000;
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 this.§]!b§ = true;
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    addr276:
                                                                                                                                    if(this.§#!=§(false))
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          addr398:
                                                                                                                                          §-n§.gameOver();
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr402:
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§3!-§);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - param1);
                                                                                                                                             }
                                                                                                                                             §§pop().§3!-§ = §§pop();
                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr417:
                                                                                                                                                §§push(this.§3!-§);
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         this.§3!-§ = 0;
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr440:
                                                                                                                                                            §§push(this.§<!]§);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§%!#§);
                                                                                                                                                               if(!(_loc5_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §-n§.updatePigAnimations(param1);
                                                                                                                                                                        if(!(_loc5_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr465:
                                                                                                                                                                           §§push(!§-n§.camera.isOnCastleView());
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr472:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr473:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr481:
                                                                                                                                                                                    §§push(§-n§.camera.mCurrentAction == § !U§.set);
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr497:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§^!o§(§'!m§);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr855:
                                                                                                                                                                                                if(this.§3!-§ <= 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr856:
                                                                                                                                                                                                   if(§-n§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr860:
                                                                                                                                                                                                      this.§3!-§ = 1000;
                                                                                                                                                                                                      addr868:
                                                                                                                                                                                                      return;
                                                                                                                                                                                                      addr863:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§^!o§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                      §§goto(addr868);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr868);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr868);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr684:
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§^!o§(§%!#§);
                                                                                                                                                                                             addr689:
                                                                                                                                                                                             §§goto(addr868);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr689);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr575:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(_loc4_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§-n§.camera.mCurrentAction == § !U§.set);
                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr593:
                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr596:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc5_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§^!o§(§'!m§);
                                                                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr614:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr651:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr868);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr633:
                                                                                                                                                                                                         §§push(this.§3!-§);
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr637:
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr645:
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr646:
                                                                                                                                                                                                                  this.§^!o§(§'!m§);
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr868);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr651);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr855);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr855);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr855);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr614);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr673:
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§-n§.camera.mCurrentAction == § !U§.set);
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr684);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr868);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr665:
                                                                                                                                                                                             §§push(Boolean(§-n§.camera.isOnCastleView()));
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr671:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr673);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr684);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr684);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr596);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr868);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr860);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr497);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr671);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr553:
                                                                                                                                                                        this.§^!o§(§'!m§);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr558:
                                                                                                                                                                           §§goto(addr575);
                                                                                                                                                                           §§push(!§-n§.camera.isOnCastleView());
                                                                                                                                                                           addr558:
                                                                                                                                                                           addr567:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr855);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr855);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr855);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§<!]§);
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§ !j§);
                                                                                                                                                                        if(!(_loc5_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc5_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§3!-§);
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc4_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§-n§.objects.isWorldAtSleep())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§'!V§.§1!2§.objects.mMightyEagleAdded);
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr553);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr558);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr593);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§0!X§ = 0;
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§3!-§ = 2000;
                                                                                                                                                                                             §§goto(addr567);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §-n§.updatePigAnimations(param1);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr558);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr855);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr651);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§<!]§);
                                                                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr624:
                                                                                                                                                                                 §§push(§9!q§);
                                                                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr633);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§<!]§);
                                                                                                                                                                                       if(_loc4_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr661:
                                                                                                                                                                                          §§push(§'!m§);
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr664:
                                                                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr665);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§<!]§);
                                                                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr699:
                                                                                                                                                                                                   §§push(§5j§);
                                                                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr707:
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr708:
                                                                                                                                                                                                         _loc3_ = §-n§.activeObject;
                                                                                                                                                                                                         if(_loc4_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(!_loc3_);
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc4_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.§!!>§);
                                                                                                                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() < _loc3_.§1!s§);
                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr749:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Boolean(_loc3_));
                                                                                                                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr786:
                                                                                                                                                                                                                                                   §§push(Boolean(_loc3_ is §&!6§));
                                                                                                                                                                                                                                                   §§push(Boolean(_loc3_ is §&!6§));
                                                                                                                                                                                                                                                   if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            addr811:
                                                                                                                                                                                                                                                            §§push((_loc3_ as §7!U§).§6!i§);
                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr809:
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() || _loc3_.getSpecialAnimationProgress() >= 0);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§4!i§ = true;
                                                                                                                                                                                                                                                         addr821:
                                                                                                                                                                                                                                                         this.§^!o§(§ !j§);
                                                                                                                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr841:
                                                                                                                                                                                                                                                            §-n§.activeObject = null;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         this.§^!o§(§ !j§);
                                                                                                                                                                                                                                                         addr847:
                                                                                                                                                                                                                                                         §§goto(addr860);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr841);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr811);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr813);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr809);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr786);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr811);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr809);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr786);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr847);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr812);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr821);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr749);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr811);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr812);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr821);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§<!]§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr860);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr855);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr860);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr860);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr707);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr699);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr699);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr661);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr664);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr699);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr624);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr558);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr633);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr440);
                                                                                                                                                }
                                                                                                                                                §§goto(addr855);
                                                                                                                                             }
                                                                                                                                             §§goto(addr558);
                                                                                                                                          }
                                                                                                                                          §§goto(addr417);
                                                                                                                                       }
                                                                                                                                       §§goto(addr708);
                                                                                                                                    }
                                                                                                                                    §§goto(addr402);
                                                                                                                                    addr276:
                                                                                                                                    addr234:
                                                                                                                                 }
                                                                                                                                 §§goto(addr689);
                                                                                                                              }
                                                                                                                              §§goto(addr665);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(!this.§]!b§);
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 addr245:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr249:
                                                                                                                                       §§pop();
                                                                                                                                       §§push(this.§]!&§());
                                                                                                                                       if(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          addr260:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || this)
                                                                                                                                             {
                                                                                                                                                this.§]!K§ = 15000;
                                                                                                                                                this.§]!b§ = true;
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr276);
                                                                                                                                                }
                                                                                                                                                §§goto(addr633);
                                                                                                                                             }
                                                                                                                                             §§goto(addr465);
                                                                                                                                          }
                                                                                                                                          §§goto(addr276);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr473);
                                                                                                                                 }
                                                                                                                                 §§goto(addr260);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr306:
                                                                                                                     §§pop();
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(!§-n§.objects.mMightyEagleAdded);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr315:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 this.§ 1§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr323:
                                                                                                                                    §§goto(addr276);
                                                                                                                                 }
                                                                                                                                 §§goto(addr708);
                                                                                                                              }
                                                                                                                              §§goto(addr323);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              if(this.§]!&§())
                                                                                                                              {
                                                                                                                                 if(§-n§.objects.mMightyEagleAdded)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§-n§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                       if(_loc4_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr347:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr356:
                                                                                                                                                   if(§-n§.objects.mMightyEagleTimer > 5500)
                                                                                                                                                   {
                                                                                                                                                      addr357:
                                                                                                                                                      this.§ 1§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                   }
                                                                                                                                                   else if(§-n§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         this.§0!X§ = §[>§;
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr372:
                                                                                                                                                            §§goto(addr276);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr558);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr646);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr372);
                                                                                                                                                }
                                                                                                                                                §§goto(addr593);
                                                                                                                                             }
                                                                                                                                             §§goto(addr356);
                                                                                                                                          }
                                                                                                                                          §§goto(addr671);
                                                                                                                                       }
                                                                                                                                       §§goto(addr684);
                                                                                                                                    }
                                                                                                                                    §§goto(addr633);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    if(!§-n§.objects.mSardineCanAdded)
                                                                                                                                    {
                                                                                                                                       this.§ 1§(§%!s§);
                                                                                                                                       if(!(_loc5_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr276);
                                                                                                                                       }
                                                                                                                                       §§goto(addr708);
                                                                                                                                    }
                                                                                                                                    §§goto(addr276);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr276);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr276);
                                                                                                               }
                                                                                                               §§goto(addr218);
                                                                                                            }
                                                                                                            §§goto(addr645);
                                                                                                         }
                                                                                                         §§goto(addr637);
                                                                                                      }
                                                                                                      §§goto(addr323);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr200);
                                                                                             }
                                                                                             §§goto(addr472);
                                                                                          }
                                                                                          §§goto(addr665);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(!§-n§.objects.isPigsAlive());
                                                                                          §§push(!§-n§.objects.isPigsAlive());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                §§push(!§-n§.objects.mSardineCanAdded);
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr306);
                                                                                                   }
                                                                                                   §§goto(addr673);
                                                                                                }
                                                                                                §§goto(addr315);
                                                                                             }
                                                                                             §§goto(addr575);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr218);
                                                                                 }
                                                                                 §§goto(addr417);
                                                                              }
                                                                              §§goto(addr162);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                     §§goto(addr863);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            §§goto(addr575);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr402);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr481);
                                       }
                                       §§goto(addr673);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr357);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr645);
                        }
                        §§goto(addr637);
                     }
                     §§goto(addr558);
                  }
                  §§goto(addr114);
               }
               §§goto(addr81);
            }
            §§goto(addr130);
         }
         §§goto(addr614);
      }
      
      protected function § 1§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(!this.§]!b§)
            {
               this.§]!b§ = true;
            }
            §§push(new Date().time - §-n§.slingshot.timeOfLastBirdShot);
            if(!_loc3_)
            {
               §§push(6000);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc4_)
                     {
                        return;
                     }
                     addr107:
                     this.§^!o§(param1,param2);
                  }
                  else if(§-n§.slingshot.mDragging)
                  {
                     if(_loc4_ || param2)
                     {
                        return;
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     if(§-n§.objects.isWorldAtSleep())
                     {
                        addr89:
                        this.§]!K§ = Math.min(this.§]!K§,3500);
                     }
                     addr99:
                     if(this.§]!K§ <= 0)
                     {
                        if(_loc4_ || param1)
                        {
                           §§goto(addr107);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr99);
         }
         §§goto(addr89);
      }
      
      public function §#!=§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§<!]§);
            if(!_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr44:
                           §§push(this.§<!]§);
                           if(_loc3_ || param1)
                           {
                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                              if(_loc3_ || this)
                              {
                                 addr62:
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(_loc3_)
                                 {
                                    addr75:
                                    if(!§§pop())
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             addr86:
                                             §§push(this.§<!]§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr95:
                                                §§push(§%!s§);
                                                if(!_loc2_)
                                                {
                                                   addr99:
                                                   §§push(§§pop() == §§pop());
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(_loc3_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  addr149:
                                                                  if(§§pop())
                                                                  {
                                                                     addr150:
                                                                     §§pop();
                                                                     addr151:
                                                                     addr156:
                                                                     return §§pop();
                                                                     §§push(this.§<!]§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                  }
                                                                  §§goto(addr156);
                                                               }
                                                               §§pop();
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr149);
                                                                  §§push(this.§3!-§ <= 0);
                                                                  §§push(this.§3!-§ <= 0);
                                                               }
                                                               §§goto(addr151);
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr149);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr75);
               }
               §§goto(addr99);
            }
            §§goto(addr150);
         }
         §§goto(addr44);
      }
      
      public function §,!>§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§<!]§);
            if(!_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           addr67:
                           §§pop();
                           §§push(this.§<!]§ == §%!s§);
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1.delta != 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.doUserZoom(param1.delta > 0);
               }
            }
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(!this.§,v§);
            §§push(!this.§,v§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  §§pop();
                  if(!_loc2_)
                  {
                     §§push(!§-n§.mReadyToRun);
                     if(_loc3_)
                     {
                        addr34:
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                           addr116:
                           §§push(this.§<!]§);
                           if(_loc3_ || _loc2_)
                           {
                              addr125:
                              §§push(§%!#§);
                              if(!_loc2_)
                              {
                                 addr129:
                                 §§push(§§pop() == §§pop());
                                 if(!(§§pop() == §§pop()))
                                 {
                                    addr153:
                                    if(_loc3_ || this)
                                    {
                                       addr148:
                                       §§pop();
                                       addr151:
                                       §§push(this.§<!]§);
                                       §§push(§'!m§);
                                    }
                                    if(§§pop())
                                    {
                                       if(!§-n§.isPlayingReplay())
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §-n§.camera.adjustManualScale(param1);
                                             addr172:
                                             return;
                                             addr168:
                                          }
                                       }
                                       else
                                       {
                                          §-n§.changeReplaySpeed(param1);
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              §§goto(addr153);
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr151);
                        }
                        else
                        {
                           §§push(Boolean(§-n§.slingshot.mDragging));
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 addr52:
                                 if(!§§pop())
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       addr60:
                                       §§pop();
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(Boolean(§-n§.camera.mDragging));
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr172);
                                    }
                                    else
                                    {
                                       §§goto(addr168);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§<!]§);
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(§ !j§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                addr114:
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§goto(addr116);
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr148);
               }
               §§goto(addr34);
            }
            §§goto(addr52);
         }
         §§goto(addr172);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §1E§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§29§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_)
         {
            if(!this.§,v§)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(!(_loc6_ && param2))
            {
               dispatchEvent(_loc3_);
               if(_loc3_.isDefaultPrevented())
               {
                  return;
               }
               §%s§.§[!@§();
               if(_loc5_)
               {
                  §§push(this.§#!=§(false));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        return;
                     }
                     if(!§-n§.isPlayingReplay())
                     {
                        §§push(Boolean(§-n§.activeObject));
                        §§push(Boolean(§-n§.activeObject));
                        if(!(_loc6_ && this))
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    addr107:
                                    §§push(Boolean(this.§<!]§ == §5j§));
                                    if(!_loc6_)
                                    {
                                       addr115:
                                       if(!§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§goto(addr130);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                    addr130:
                                    if(this.§4!i§)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          this.§4!i§ = false;
                                          if(_loc5_)
                                          {
                                             §-n§.activatePowerup();
                                          }
                                          else
                                          {
                                             §§goto(addr202);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc4_ = §-n§.screenToBox2D(param1,param2);
                                       if(!_loc6_)
                                       {
                                          if(§-n§.slingshot.canStartDragging(_loc4_))
                                          {
                                             if(_loc5_)
                                             {
                                                §-n§.slingshot.startDragging();
                                                if(_loc5_ || _loc3_)
                                                {
                                                   this.§^!o§(§'!m§);
                                                   if(_loc5_)
                                                   {
                                                      addr186:
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §-n§.camera.startDragging(param1,param2);
                                             if(_loc6_)
                                             {
                                                addr195:
                                                §-n§.camera.startDragging(param1,param2);
                                                §-n§.resetReplaySpeed();
                                                §§goto(addr202);
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr130);
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr130);
               }
               addr202:
               return;
            }
            §§goto(addr107);
         }
         addr31:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && param2))
         {
            §§push(this.§,v§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  addr151:
                  §-n§.camera.dragToNewPoint(param1,param2);
                  §-n§.camera.stopDragging();
               }
               else
               {
                  §%s§.§<1§();
                  if(this.§<!]§ == §9!q§)
                  {
                     this.§^!o§(§'!m§);
                  }
                  if(§-n§.slingshot.mDragging)
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr54:
                        _loc3_ = §-n§.screenToBox2D(param1,param2);
                        if(!(_loc5_ && param1))
                        {
                           §-n§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                           if(_loc4_ || this)
                           {
                              if(§-n§.slingshot.canShootTheBird())
                              {
                                 if(_loc4_)
                                 {
                                    §-n§.slingshot.shoot();
                                    if(_loc4_ || _loc3_)
                                    {
                                       this.§^!o§(§5j§);
                                       if(!_loc4_)
                                       {
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §-n§.slingshot.cancelDragging();
                              }
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr117);
               }
               addr117:
               if(§-n§.camera.mDragging)
               {
                  if(_loc4_)
                  {
                     §§push(!isNaN(param1));
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              addr143:
                              §§pop();
                              §§push(!isNaN(param2));
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr151);
                           }
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr143);
               }
               return;
            }
            §§goto(addr143);
         }
         §§goto(addr54);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_ || param1)
         {
            if(!this.§,v§)
            {
               if(_loc5_)
               {
                  return;
               }
            }
            else
            {
               addr35:
               if(§-n§.slingshot.mDragging)
               {
                  if(!_loc4_)
                  {
                     _loc3_ = §-n§.screenToBox2D(param1,param2);
                     if(!_loc4_)
                     {
                        §-n§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                        if(_loc5_ || this)
                        {
                           addr96:
                           this.§=>§ = param1;
                           if(!(_loc4_ && param2))
                           {
                              this.§+!@§ = param2;
                           }
                           addr84:
                        }
                        return;
                     }
                     §§goto(addr84);
                  }
               }
               else if(§-n§.camera.mDragging)
               {
                  if(_loc5_)
                  {
                     §-n§.camera.dragToNewPoint(param1,param2);
                  }
               }
            }
            §§goto(addr96);
         }
         §§goto(addr35);
      }
      
      public function §[%§() : Point
      {
         return new Point(this.§=>§,this.§+!@§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'!g§.assign(this.§'!g§.getValue() + param1);
            if(_loc2_ || this)
            {
               addr48:
               this.§8!0§(§=!f§);
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function getScore() : int
      {
         return this.§'!g§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§'!V§.§1!2§.objects.mMightyEagleAdded)
            {
               if(!(_loc3_ && _loc1_))
               {
                  §§push(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  §§push(§1^§.§'!_§(§1^§.§ ]§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr60);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§,v§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,v§ = param1;
         }
      }
   }
}
