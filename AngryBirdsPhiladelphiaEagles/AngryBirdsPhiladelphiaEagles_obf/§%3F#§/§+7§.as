package §?#§
{
   import §&^§.§[!7§;
   import §-!&§.§1!"§;
   import §-!&§.§3!,§;
   import §-!&§.§implements§;
   import §-!O§.§?Z§;
   import §0!E§.§;!D§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§97§;
   import §^]§.§`!K§;
   import §`K§.§4N§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §+7§ extends §1q§
   {
      
      public static const §=Y§:int = 0;
      
      public static const §]]§:int = 1;
      
      public static const §^!%§:int = 2;
      
      public static const §'X§:int = 3;
      
      public static const §4!'§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §2F§:int = 7;
      
      protected static const §27§:Number = 0.001;
      
      public static const §[6§:Number = 2000;
      
      public static const §]1§:Number = 2500;
      
      public static const §4E§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §^!%§ = 2;
            loop1:
            while(!_loc1_)
            {
               §'X§ = 3;
               §4!'§ = 4;
               LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
               while(true)
               {
                  LEVEL_STATE_VICTORY2_END = 6;
                  loop3:
                  while(_loc2_ || _loc1_)
                  {
                     §2F§ = 7;
                     while(true)
                     {
                        §§push(§§findproperty(§27§));
                        §§push(§?Z§.§;!;§);
                        if(!(_loc1_ && §+7§))
                        {
                           §§push(§§pop() / 100);
                        }
                        §§pop().§27§ = §§pop();
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §[6§ = 2000;
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public var §;q§:int = 0;
      
      protected var §0s§:int = 0;
      
      public var §]9§:Number;
      
      protected var §#L§:Number = 0;
      
      protected var §6q§:Boolean = false;
      
      private var §'c§:Number = 0;
      
      public var §4!E§:Number = 0;
      
      protected var §>H§:Boolean;
      
      protected var §>!5§:Number = 0;
      
      protected var §%S§:Number = 0;
      
      protected var §!<§:Boolean = true;
      
      protected var §]r§:§;!D§;
      
      public function §+7§(param1:§1r§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]r§ = new §;!D§();
         }
         do
         {
            super(param1);
         }
         while(!_loc3_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               this.§]r§.assign(0);
               this.§;q§ = -1;
               loop1:
               while(true)
               {
                  this.§0s§ = 0;
                  this.§#L§ = 0;
                  while(true)
                  {
                     this.§6q§ = false;
                     addr70:
                     while(!(_loc2_ && _loc1_))
                     {
                        continue loop1;
                        §;§.objects.setGroundTextureEnabled(true);
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§1B§(§=Y§);
            §§goto(addr70);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            param1 = §;§.update(param1,true);
            while(true)
            {
               this.§"!1§(param1);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§2!J§(param1);
            if(!(_loc3_ && this))
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §"!1§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§0s§ != 0)
            {
               if(!(_loc2_ && param1))
               {
                  §;§.camera.adjustManualScale(this.§0s§ > 0,param1 * §27§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§;q§ = -1;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.addEventListeners();
         }
      }
      
      public function §<x§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§;§.camera.mCurrentCameraSliderLocation < §?Z§.§+!O§)
            {
               if(_loc1_ || this)
               {
                  addr83:
                  return false;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr43:
                     while(!§;§.objects.isWorldAtSleep())
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§push(true);
                     if(!_loc1_)
                     {
                        addr68:
                        return §§pop();
                     }
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr83);
      }
      
      public function §9!A§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?Z§ = §;§.camera;
         if(!_loc4_)
         {
            §§push(_loc2_.§%o§);
            loop0:
            while(true)
            {
               §§push(0);
               addr105:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     return;
                  }
                  addr23:
                  §§push(_loc2_);
                  §§push(_loc2_.§%o§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§%o§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §1B§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§7q§(false));
         loop0:
         while(true)
         {
            §§push(Boolean(§§pop()));
            while(true)
            {
               if(!§§pop())
               {
                  if(!§§pop())
                  {
                     addr283:
                     if(param1 != §=Y§)
                     {
                        addr265:
                        if(param1 != §]]§)
                        {
                           addr247:
                           §§push(param1);
                           §§push(§^!%§);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(param1 != §'X§)
                                 {
                                    addr217:
                                    if(param1 != §4!'§)
                                    {
                                       addr196:
                                       if(param1 != LEVEL_STATE_VICTORY2_END)
                                       {
                                          §§push(param1);
                                          §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                          if(_loc4_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(param1);
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(§2F§);
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            §§goto(addr196);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            addr102:
                                                            if(!_loc3_)
                                                            {
                                                               §[!7§.§=0§();
                                                               addr106:
                                                               if(_loc4_ || param2)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §[!7§.playSound("LevelFailedPigs1");
                                                                     addr71:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              this.§4!E§ = 1200;
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §;§.camera.goToCastleView();
                                                                                    addr41:
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §;§.objects.makePigsSmile(5);
                                                                                             addr34:
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr22);
                                                                                             }
                                                                                             §§goto(addr41);
                                                                                          }
                                                                                          addr22:
                                                                                          this.§;q§ = param1;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr34);
                                                                                          }
                                                                                          return;
                                                                                          addr132:
                                                                                       }
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr71);
                                                                                 }
                                                                                 §;§.slingshot.makeBirdsJumpForJoy();
                                                                                 addr158:
                                                                              }
                                                                              addr116:
                                                                              §§push(§[!7§);
                                                                              §§push("LevelCompletedBirdsMilitary");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                              }
                                                                              §§pop().playSound(§§pop());
                                                                              §§goto(addr132);
                                                                           }
                                                                           addr284:
                                                                           this.§4!E§ = 2000;
                                                                        }
                                                                        §§goto(addr22);
                                                                        addr232:
                                                                     }
                                                                     §§goto(addr106);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               addr153:
                                                               if(!_loc3_)
                                                               {
                                                                  §;§.camera.goToBirdView();
                                                                  §§goto(addr158);
                                                               }
                                                               addr178:
                                                               §;§.camera.goToBirdView();
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     addr159:
                                                                     §§goto(addr22);
                                                                  }
                                                                  addr197:
                                                                  this.§4!E§ = 1200;
                                                               }
                                                               if(!§;§.objects.mMightyEagleAdded)
                                                               {
                                                                  §§goto(addr178);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            addr256:
                                                            this.§>H§ = false;
                                                            this.§4!E§ = 5000;
                                                            §;§.particles.moveTrailsNewToOld();
                                                         }
                                                         §§goto(addr22);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr196);
                                             }
                                             if(_loc4_)
                                             {
                                                this.§4!E§ = 1200;
                                             }
                                             if(!§;§.objects.mMightyEagleAdded)
                                             {
                                                §§goto(addr153);
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr197);
                                    }
                                    this.§4!E§ = 2000;
                                    this.§'c§ = §4E§;
                                    if(_loc4_)
                                    {
                                       §;§.camera.goToCastleView();
                                       §§goto(addr22);
                                    }
                                    else
                                    {
                                       addr229:
                                       §;§.camera.goToCastleView();
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr256);
                           }
                           §§goto(addr283);
                        }
                        §;§.camera.goToBirdView();
                        §§goto(addr22);
                     }
                     §§goto(addr284);
                  }
                  addr301:
               }
               while(true)
               {
                  §§pop();
                  §§push(param2);
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     §§push(!§§pop());
                  }
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               continue;
               return;
            }
         }
      }
      
      public function §3q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#L§ = Math.max(this.§#L§,param1);
         }
      }
      
      protected function §7!3§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§;§.slingshot.mSlingShotState == §97§.§5!I§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr41:
                     §§pop();
                     return !§;§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §2!J§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:Boolean = false;
         var _loc4_:§3!,§ = null;
         §§push(this);
         §§push(this.§]9§);
         if(_loc5_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§]9§ = §§pop();
         §§push(this.§6q§);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               §§push(this);
               §§push(this.§#L§);
               if(_loc5_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§#L§ = §§pop();
               §§push(this.§#L§);
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     while(true)
                     {
                        this.§]9§ = 0;
                        addr777:
                        while(true)
                        {
                        }
                     }
                     addr774:
                  }
                  addr152:
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  §§push(0);
                  if(_loc5_ || param1)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        addr174:
                        if(!(_loc5_ || _loc3_))
                        {
                           loop14:
                           while(true)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc6_ && this))
                              {
                                 loop31:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(this.§6q§);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(_loc5_)
                                          {
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.§#L§);
                                                   addr688:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > 6000);
                                                      loop48:
                                                      for(; !(_loc6_ && _loc2_); §§push(this.§4!E§),if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue;
                                                      },§§goto(addr152))
                                                      {
                                                         if(§§pop() < 0)
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  this.§4!E§ = 0;
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     addr409:
                                                                     §§push(this.§;q§);
                                                                     loop49:
                                                                     while(true)
                                                                     {
                                                                        §§push(§'X§);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              §§push(this.§;q§);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§push(§4!'§);
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       §§push(this.§4!E§);
                                                                                       §§push(0);
                                                                                       loop64:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() <= §§pop())
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr353:
                                                                                                   loop58:
                                                                                                   for(; _loc5_ || this; §§goto(addr353))
                                                                                                   {
                                                                                                      §§push(Boolean(_loc3_));
                                                                                                      if(Boolean(_loc3_))
                                                                                                      {
                                                                                                         while(_loc5_ || this)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(this.§'c§);
                                                                                                               §§push(0);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop64;
                                                                                                                  }
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  while(_loc5_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  while(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§#L§ = 6000;
                                                                                                                              this.§6q§ = true;
                                                                                                                              addr666:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr681:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(!this.§6q§);
                                                                                                                           if(!this.§6q§)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr661:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(this.§7!3§()));
                                                                                                                                 }
                                                                                                                                 addr589:
                                                                                                                                 §§pop();
                                                                                                                                 §§push(§;§.objects.mMightyEagleTimer > 5500);
                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          this.§`s§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                       }
                                                                                                                                       else if(§;§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ || param1))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          this.§]9§ = §[6§;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr494:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(this.§7q§(false))
                                                                                                                                             {
                                                                                                                                                §;§.gameOver();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr390:
                                                                                                                                                   if(!(_loc5_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   addr1007:
                                                                                                                                                   return;
                                                                                                                                                   addr319:
                                                                                                                                                }
                                                                                                                                                addr501:
                                                                                                                                             }
                                                                                                                                             addr462:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§4!E§);
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - param1);
                                                                                                                                                }
                                                                                                                                                §§pop().§4!E§ = §§pop();
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§4!E§);
                                                                                                                                                   continue loop48;
                                                                                                                                                }
                                                                                                                                                addr816:
                                                                                                                                                §§push(!(_loc4_ = §;§.activeObject));
                                                                                                                                                §§push(!(_loc4_ = §;§.activeObject));
                                                                                                                                                if(_loc5_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr961:
                                                                                                                                                            if(_loc4_.§8!2§ < _loc4_.§53§)
                                                                                                                                                            {
                                                                                                                                                               addr966:
                                                                                                                                                               §§push(Boolean(_loc4_));
                                                                                                                                                               if(Boolean(_loc4_))
                                                                                                                                                               {
                                                                                                                                                                  addr967:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§push(_loc4_ is §implements§);
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr967);
                                                                                                                                                                  addr968:
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr947:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr913:
                                                                                                                                                                     §§push((_loc4_ as §1!"§).§ I§);
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr930:
                                                                                                                                                                                    §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() >= 0);
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr902:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§>H§ = true;
                                                                                                                                                                                                   this.§1B§(§4!'§);
                                                                                                                                                                                                   addr871:
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr855:
                                                                                                                                                                                                      §;§.activeObject = null;
                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§1B§(§4!'§);
                                                                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr855);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr979:
                                                                                                                                                                                                            §§goto(addr1007);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr930);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr871);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr907:
                                                                                                                                                                                                   §§goto(addr907);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr855);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr961);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr967);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr913);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr961);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr947);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr902);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr966);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr968);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr902);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr979);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr967);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr961);
                                                                                                                                                }
                                                                                                                                                §§goto(addr966);
                                                                                                                                                §§goto(addr501);
                                                                                                                                             }
                                                                                                                                             §§goto(addr319);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                    addr551:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§#L§ = 15000;
                                                                                                                                       this.§6q§ = true;
                                                                                                                                    }
                                                                                                                                    addr648:
                                                                                                                                 }
                                                                                                                                 addr582:
                                                                                                                                 if(!(_loc5_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr589);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr494);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr748:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(!_loc2_);
                                                                                                                        addr738:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  addr672:
                                                                                                               }
                                                                                                               addr279:
                                                                                                            }
                                                                                                            §§goto(addr1007);
                                                                                                         }
                                                                                                         addr403:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break;
                                                                                                            }
                                                                                                            addr374:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               §§goto(addr666);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1007);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr738);
                                                                                                         }
                                                                                                         §§goto(addr462);
                                                                                                         addr308:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     break loop49;
                                                                                                                  }
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     this.§4!E§ = 2000;
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        this.§]9§ = 0;
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§'c§);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                        }
                                                                                                                        §§pop().§'c§ = §§pop();
                                                                                                                        loop54:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr209:
                                                                                                                           addr223:
                                                                                                                           addr580:
                                                                                                                           loop55:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(!§;§.camera.isOnCastleView());
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       break loop55;
                                                                                                                                    }
                                                                                                                                    addr196:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr197:
                                                                                                                                       while(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             this.§1B§(§]]§);
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop58;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1007);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr222:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(!_loc6_)
                                                                                                                           {
                                                                                                                              addr225:
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§;§.camera.mCurrentAction == §?Z§.§[D§);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr196);
                                                                                                                                       §§push(!§§pop());
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop54;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§1B§(§]]§);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop54;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1007);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr254:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1007);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr661);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(this.§#L§);
                                                                                                                                       if(!(_loc5_ || param1))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= 0);
                                                                                                                                       if(§§pop() <= 0)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          §§push(this.§7q§(false));
                                                                                                                                          break loop15;
                                                                                                                                       }
                                                                                                                                       addr754:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§]9§ = §[6§;
                                                                                                                                                §§goto(addr747);
                                                                                                                                             }
                                                                                                                                             addr756:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr733);
                                                                                                                                    }
                                                                                                                                    addr733:
                                                                                                                                    §§goto(addr225);
                                                                                                                                 }
                                                                                                                                 addr731:
                                                                                                                              }
                                                                                                                              §§goto(addr462);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§goto(addr582);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 addr635:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr984:
                                                                                                                        if(this.§4!E§ <= 0)
                                                                                                                        {
                                                                                                                           addr988:
                                                                                                                           if(§;§.slingshot.updateScoreForRemainingBirds())
                                                                                                                           {
                                                                                                                              this.§4!E§ = 1000;
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr1002:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§1B§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1007);
                                                                                                                     }
                                                                                                                     §§goto(addr1007);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr777);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr293:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(§#! §.§`'§.objects.mMightyEagleAdded);
                                                                                                            }
                                                                                                            §§goto(addr254);
                                                                                                         }
                                                                                                         addr291:
                                                                                                      }
                                                                                                      §§goto(addr731);
                                                                                                   }
                                                                                                   _loc3_ = §;§.objects.hasBirds();
                                                                                                   §§goto(addr374);
                                                                                                   §§push(§;§.camera.mCurrentAction != §?Z§.§[D§);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr519:
                                                                                                }
                                                                                                §§goto(addr494);
                                                                                             }
                                                                                             §§goto(addr988);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §;§.updatePigAnimations(param1);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr209);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr774);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§;q§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§=Y§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop48;
                                                                                                }
                                                                                                §§goto(addr681);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr403);
                                                                                                §§push(!§;§.camera.isOnCastleView());
                                                                                                addr424:
                                                                                             }
                                                                                             §§goto(addr462);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.§;q§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop49;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             addr982:
                                                                                             addr982:
                                                                                             if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                             {
                                                                                                §§goto(addr984);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr813:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§goto(addr816);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr988);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr982);
                                                                                          §§push(this.§;q§);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1007);
                                                                                 }
                                                                                 §§goto(addr813);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr805:
                                                                                 §§push(§^!%§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§goto(addr813);
                                                                                 }
                                                                              }
                                                                              §§goto(addr982);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr813);
                                                                     }
                                                                     §;§.updatePigAnimations(param1);
                                                                     §§goto(addr424);
                                                                  }
                                                                  §§goto(addr563);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(!§;§.objects.mMightyEagleAdded);
                                                                     addr596:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr625:
                                                               }
                                                               §§goto(addr597);
                                                            }
                                                            §§goto(addr537);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr672);
                                                      §§push(!§;§.objects.isPigsAlive());
                                                   }
                                                   break;
                                                }
                                                §§goto(addr679);
                                                §§goto(addr688);
                                             }
                                             §§goto(addr756);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr754);
                                       }
                                       addr720:
                                    }
                                    else
                                    {
                                       §§push(!§;§.objects.isPigsAlive());
                                       §§push(!§;§.objects.isPigsAlive());
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr635);
                                 }
                              }
                              §§goto(addr720);
                           }
                        }
                        if(§§pop() <= §§pop())
                        {
                           this.§1B§(§]]§);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr279);
                  }
                  §§goto(addr984);
               }
            }
            while(true)
            {
               §§goto(addr733);
            }
         }
      }
      
      protected function §`s§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§6q§)
            {
               while(true)
               {
                  this.§6q§ = true;
                  addr130:
                  while(true)
                  {
                  }
               }
               addr127:
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §;§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  loop4:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           return;
                        }
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        if(!§;§.slingshot.mDragging)
                        {
                           loop6:
                           while(true)
                           {
                              if(§;§.objects.isWorldAtSleep())
                              {
                                 while(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§#L§ = Math.min(this.§#L§,3500);
                                       while(true)
                                       {
                                          addr40:
                                          this.§1B§(param1,param2);
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc4_ || param2)
                                          {
                                             §§goto(addr20);
                                          }
                                          else
                                          {
                                             addr104:
                                          }
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       addr85:
                                    }
                                    else
                                    {
                                       §§goto(addr127);
                                    }
                                 }
                                 addr101:
                                 if(!_loc3_)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                                 addr74:
                              }
                              while(true)
                              {
                                 §§push(this.§#L§);
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             §§goto(addr40);
                                          }
                                          else
                                          {
                                             §§goto(addr74);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                              addr20:
                              return;
                           }
                        }
                        §§goto(addr101);
                     }
                     return;
                  }
                  continue loop2;
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §7q§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§;q§);
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§;q§);
                           loop4:
                           while(true)
                           {
                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop18:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(!§§pop());
                                                                  }
                                                                  §§push(§§pop());
                                                                  loop15:
                                                                  for(; _loc3_ || param1; while(true)
                                                                  {
                                                                     §§push(this.§4!E§ <= 0);
                                                                     §§push(this.§4!E§ <= 0);
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc2_ && _loc3_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr80);
                                                                     }
                                                                  })
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§pop();
                                                                           while(!(_loc2_ && _loc3_))
                                                                           {
                                                                              continue loop15;
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc3_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§;q§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    while(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop1;
                                                                                    addr154:
                                                                                 }
                                                                                 if(!(_loc3_ || param1))
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    continue;
                                                                                 }
                                                                                 addr194:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr53);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr191:
                                 }
                                 §§goto(addr194);
                              }
                           }
                        }
                     }
                     §§goto(addr191);
                  }
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr154);
               §§push(§2F§);
            }
         }
         §§goto(addr135);
      }
      
      public function §"`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;q§);
            if(_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           addr53:
                           §§pop();
                           return this.§;q§ == §2F§;
                        }
                     }
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
         if(_loc2_ || param1)
         {
            if(param1.delta != 0)
            {
               if(!(_loc3_ && param1))
               {
                  addr44:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§!<§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr215:
                        while(true)
                        {
                           §§push(!§;§.mReadyToRun);
                        }
                     }
                     addr214:
                  }
                  while(true)
                  {
                     loop5:
                     while(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(Boolean(§;§.slingshot.mDragging));
                           loop7:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 loop8:
                                 while(!_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(Boolean(§;§.camera.mDragging));
                                          addr122:
                                          if(_loc3_ || param1)
                                          {
                                             §§goto(addr19);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§;q§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§4!'§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop14:
                                                   while(!_loc4_)
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop17:
                                                               while(_loc3_ || this)
                                                               {
                                                                  §§push(this.§;q§);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§'X§);
                                                                     addr134:
                                                                     do
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                     while(_loc3_);
                                                                     
                                                                     addr152:
                                                                     continue loop11;
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§;q§);
                                                                        if(_loc4_ && param2)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§]]§);
                                                                        if(_loc3_ || param2)
                                                                        {
                                                                           if(!(_loc3_ || param2))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              while(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop14;
                                                                              addr144:
                                                                           }
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr134);
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           if(§;§.isPlayingReplay())
                                                                           {
                                                                              §;§.changeReplaySpeed(param1);
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           if(_loc4_ && param2)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §;§.camera.adjustManualScale(param1,param2 == 0 ? Number(§?Z§.§;!;§) : Number(param2));
                                                                           if(_loc4_ && this)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           §§goto(addr122);
                                                                        }
                                                                        §§goto(addr19);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr73);
                                                         }
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          addr19:
                                          return;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr214);
                              §§goto(addr215);
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §<!2§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0s§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            if(!this.§!<§)
            {
               if(!_loc6_)
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
         do
         {
            §4N§.§7J§();
         }
         while(!_loc5_);
         
         if(this.§7q§(false))
         {
            return;
         }
         if(§;§.isPlayingReplay())
         {
            §;§.camera.startDragging(param1,param2);
            §;§.resetReplaySpeed();
            return;
         }
         §§push(Boolean(§;§.activeObject));
         §§push(Boolean(§;§.activeObject));
         while(true)
         {
            if(§§pop())
            {
               loop2:
               while(true)
               {
                  §§pop();
                  §§push(this.§;q§ == §^!%§);
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc6_ && this))
                     {
                        while(true)
                        {
                           addr100:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 break loop2;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(this.§>H§);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc5_ || this))
                                       {
                                          continue loop2;
                                       }
                                       addr79:
                                       this.§>H§ = false;
                                       §;§.activatePowerup();
                                       if(_loc5_)
                                       {
                                          return;
                                       }
                                    }
                                    addr151:
                                    addr163:
                                    _loc4_ = §;§.screenToBox2D(param1,param2);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(!§;§.slingshot.canStartDragging(_loc4_))
                                       {
                                          §;§.camera.startDragging(param1,param2);
                                          if(!(_loc5_ || param1))
                                          {
                                             addr196:
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc6_ && param1)
                                                {
                                                   addr226:
                                                   §;§.slingshot.startDragging();
                                                }
                                                addr165:
                                                return;
                                                addr220:
                                             }
                                             this.§1B§(§]]§);
                                             §§goto(addr196);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr220);
                                 }
                                 addr114:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr79);
                                 }
                                 else
                                 {
                                    §§goto(addr151);
                                 }
                              }
                              §§goto(addr163);
                           }
                        }
                        addr99:
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr100);
               }
               continue;
            }
            §§goto(addr99);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            §§push(this.§!<§);
            if(_loc5_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  addr181:
                  if(!isNaN(param2))
                  {
                     if(_loc5_)
                     {
                        §;§.camera.dragToNewPoint(param1,param2);
                     }
                     loop5:
                     while(true)
                     {
                        addr165:
                        while(true)
                        {
                           §;§.camera.stopDragging();
                           if(!(_loc4_ && this))
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                     }
                     addr162:
                     return;
                     addr189:
                     addr176:
                  }
                  §§goto(addr165);
                  addr160:
               }
               else
               {
                  do
                  {
                     §4N§.§>a§();
                     if(this.§;q§ != §=Y§)
                     {
                        break;
                     }
                     this.§1B§(§]]§);
                  }
                  while(false);
                  
                  if(§;§.slingshot.mDragging)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        _loc3_ = §;§.screenToBox2D(param1,param2);
                        if(_loc5_ || param2)
                        {
                           §;§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                           do
                           {
                              if(§;§.slingshot.canShootTheBird())
                              {
                                 continue;
                              }
                              §;§.slingshot.cancelDragging();
                              if(!_loc4_)
                              {
                                 if(!(_loc5_ || param2))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       this.§1B§(§^!%§);
                                    }
                                    addr98:
                                 }
                                 addr130:
                                 if(§;§.camera.mDragging)
                                 {
                                    §§push(!isNaN(param1));
                                    if(_loc5_ || param1)
                                    {
                                       addr145:
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             §§goto(addr160);
                                          }
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr162);
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc4_ && param1)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr98);
                                       continue loop3;
                                    }
                                    addr120:
                                 }
                                 §§goto(addr130);
                              }
                           }
                           while(_loc4_);
                           
                           §;§.slingshot.shoot();
                           §§goto(addr120);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr96);
               }
               §§goto(addr162);
            }
            §§goto(addr145);
         }
         §§goto(addr176);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            if(!this.§!<§)
            {
               if(!(_loc5_ && this))
               {
                  return;
               }
            }
            if(§;§.slingshot.mDragging)
            {
               if(_loc4_ || param2)
               {
                  _loc3_ = §;§.screenToBox2D(param1,param2);
                  if(_loc4_ || this)
                  {
                     §;§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!(_loc5_ && this))
                     {
                        addr115:
                        this.§>!5§ = param1;
                        if(_loc4_)
                        {
                           this.§%S§ = param2;
                        }
                        addr98:
                     }
                     return;
                  }
                  §§goto(addr98);
               }
               else
               {
                  addr110:
                  §;§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§;§.camera.mDragging)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §>n§() : Point
      {
         return new Point(this.§>!5§,this.§%S§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]r§.assign(this.§]r§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§3q§(§]1§);
               loop1:
               while(this.§;q§ == §4!'§)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§4!E§ = 2000;
                  }
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§'c§ = §4E§;
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc2_ && param1))
                           {
                              break loop1;
                           }
                           continue loop1;
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      override public function getScore() : int
      {
         return this.§]r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§#! §.§`'§.objects.mMightyEagleAdded)
            {
               if(!(_loc4_ && _loc1_))
               {
                  §§push(0);
                  if(!(_loc4_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  §§push(§`!K§.§!I§(§`!K§.§5g§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr59);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§!<§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§!<§ = param1;
         }
      }
   }
}
