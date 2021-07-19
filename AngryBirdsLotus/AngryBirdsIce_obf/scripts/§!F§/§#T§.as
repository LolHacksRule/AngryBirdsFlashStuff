package §!F§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §9_§.§ p§;
   import §9_§.§+>§;
   import §9_§.§4!;§;
   import §;8§.§!$§;
   import §[K§.§2!1§;
   import §[x§.§2^§;
   import §[x§.§9"§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §#T§ extends §`!&§
   {
      
      public static const §<h§:int = 0;
      
      public static const §^§:int = 1;
      
      public static const §%]§:int = 2;
      
      public static const §case §:int = 3;
      
      public static const § i§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §9!F§:int = 7;
      
      private static const §9!;§:Number = 0.001;
      
      public static const §;!5§:Number = 2000;
      
      public static const §&S§:Number = 2500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §%]§ = 2;
            while(_loc1_)
            {
               §case § = 3;
               while(!_loc2_)
               {
                  § i§ = 4;
                  loop3:
                  while(true)
                  {
                     LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                     if(_loc2_ && §#T§)
                     {
                        break;
                     }
                     LEVEL_STATE_VICTORY2_END = 6;
                     while(true)
                     {
                        §9!F§ = 7;
                        loop5:
                        while(true)
                        {
                           §§push(§§findproperty(§9!;§));
                           §§push(§2!1§.each);
                           if(_loc1_)
                           {
                              §§push(§§pop() / 100);
                           }
                           §§pop().§9!;§ = §§pop();
                           addr46:
                           while(true)
                           {
                              if(_loc1_ || §#T§)
                              {
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public var §5_§:int = 0;
      
      private var §>F§:int = 0;
      
      public var §]q§:Number;
      
      protected var §2f§:Number = 0;
      
      protected var §`!§:Boolean = false;
      
      public var §<=§:Number = 0;
      
      protected var §3R§:Boolean;
      
      private var §;i§:Number = 0;
      
      private var §8t§:Number = 0;
      
      protected var §=V§:Boolean = true;
      
      protected var §1!E§:§2N§;
      
      public function §#T§(param1:§2^§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!E§ = new §2N§();
         }
         do
         {
            super(param1);
         }
         while(!(_loc3_ || this));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.init();
         do
         {
            this.§1!E§.assign(0);
            this.§5_§ = -1;
            this.§>F§ = 0;
            this.§2f§ = 0;
            do
            {
               this.§`!§ = false;
            }
            while(!_loc1_);
            
            this.§>!6§(§<h§);
            this.§]q§ = §;!5§;
         }
         while(!_loc1_);
         
         §@T§(true);
         §1! §.objects.setDamageEnabled(true);
         do
         {
            §1! §.objects.setGroundTextureEnabled(true);
         }
         while(_loc2_);
         
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1 = §1! §.update(param1,true);
         }
         while(true)
         {
            this.§^!&§(param1);
            while(!_loc2_)
            {
               this.§?§(param1);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §^!&§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§>F§ != 0)
            {
               if(_loc2_)
               {
                  addr39:
                  §1! §.camera.adjustManualScale(this.§>F§ > 0,param1 * §9!;§);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1! §.clearLevel();
         }
         while(true)
         {
            removeEventListeners();
            while(_loc2_ || _loc2_)
            {
               this.§5_§ = -1;
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.addEventListeners();
         }
      }
      
      public function §]!;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§1! §.camera.mCurrentCameraSliderLocation >= §2!1§.§,J§)
            {
               while(!§1! §.objects.isWorldAtSleep())
               {
                  if(!(_loc1_ && this))
                  {
                     if(_loc2_)
                     {
                        addr72:
                        §§push(false);
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr89:
                        return false;
                     }
                     return §§pop();
                  }
                  if(_loc2_ || this)
                  {
                     addr82:
                     break;
                  }
               }
               §§push(true);
               if(!(_loc1_ && _loc2_))
               {
                  return §§pop();
               }
               §§goto(addr72);
            }
            §§goto(addr89);
         }
         §§goto(addr82);
      }
      
      public function §6Q§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2!1§ = §1! §.camera;
         §§push(_loc2_.§^G§);
         loop0:
         while(true)
         {
            §§push(0);
            addr107:
            while(true)
            {
               if(§§pop() <= §§pop())
               {
                  return;
               }
               addr21:
               §§push(_loc2_);
               §§push(_loc2_.§^G§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§^G§ = §§pop();
               continue loop0;
            }
         }
      }
      
      public function §>!6§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§9S§(false));
         loop0:
         while(true)
         {
            §§push(Boolean(§§pop()));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(param2);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
                  addr337:
               }
               else
               {
                  addr325:
               }
               if(§§pop())
               {
                  return;
               }
               if(param1 == §<h§)
               {
                  this.§<=§ = 2000;
               }
               else
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(§^§);
                     loop3:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(§%]§);
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 break loop3;
                              }
                              §§push(param1);
                              §§push(§case §);
                              loop5:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 loop6:
                                 while(_loc4_)
                                 {
                                    §§push(§ i§);
                                    loop7:
                                    while(!_loc3_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          this.§<=§ = 2000;
                                          §1! §.camera.goToCastleView();
                                          if(!_loc3_)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                §1! §.particles.moveTrailsNewToOld();
                                                addr260:
                                             }
                                          }
                                          else
                                          {
                                             addr250:
                                          }
                                       }
                                       §§push(param1);
                                       continue loop2;
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc3_ && param2)
                                          {
                                             continue loop7;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(param1);
                                             if(_loc3_ && param2)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§9!F§);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr168);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §@6§.§&t§();
                                                      loop13:
                                                      for(; _loc4_; while(!(_loc3_ && _loc3_))
                                                      {
                                                         §1! §.objects.makePigsSmile(5);
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr209:
                                                               this.§<=§ = 1200;
                                                               if(!§1! §.objects.mMightyEagleAdded)
                                                               {
                                                                  addr192:
                                                                  §1! §.camera.goToBirdView();
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr60);
                                                         }
                                                         §§goto(addr22);
                                                      })
                                                      {
                                                         §@6§.playSound("LevelFailedPigs1");
                                                         this.§<=§ = 1200;
                                                         while(_loc4_)
                                                         {
                                                            §1! §.camera.goToCastleView();
                                                            continue loop13;
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr118);
                                                      addr99:
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr99);
                                             }
                                             continue loop6;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             this.§<=§ = 1200;
                                             loop10:
                                             while(!§1! §.objects.mMightyEagleAdded)
                                             {
                                                while(true)
                                                {
                                                   §1! §.camera.goToBirdView();
                                                   if(_loc4_ || param1)
                                                   {
                                                      §1! §.slingshot.makeBirdsJumpForJoy();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break loop10;
                                                            }
                                                            break loop5;
                                                         }
                                                         §§goto(addr237);
                                                         addr118:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      break loop9;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§@6§);
                                                §§push("LevelCompletedBirdsMilitary");
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                }
                                                §§pop().playSound(§§pop());
                                                §§goto(addr118);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr284);
                                          }
                                       }
                                       this.§5_§ = param1;
                                       return;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              §1! §.camera.goToCastleView();
                              §§goto(addr250);
                           }
                           continue;
                        }
                        addr284:
                        §1! §.camera.goToBirdView();
                     }
                     this.§3R§ = false;
                     this.§<=§ = 5000;
                     §§goto(addr260);
                  }
               }
               §§goto(addr22);
            }
            §§goto(addr337);
         }
      }
      
      public function §1u§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2f§ = Math.max(this.§2f§,param1);
         }
      }
      
      protected function §[§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§1! §.slingshot.mSlingShotState == §9"§.§<g§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr50:
                     §§pop();
                     return !§1! §.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §?§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:§+>§ = null;
         §§push(this);
         §§push(this.§]q§);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() - param1);
         }
         §§pop().§]q§ = §§pop();
         §§push(this.§`!§);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§2f§);
                  if(_loc5_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§2f§ = §§pop();
                  loop2:
                  while(true)
                  {
                     if(this.§2f§ < 0)
                     {
                        while(true)
                        {
                           this.§]q§ = 0;
                        }
                        addr767:
                     }
                     addr667:
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     this.§2f§ = 6000;
                     loop29:
                     while(true)
                     {
                        this.§`!§ = true;
                        loop30:
                        while(true)
                        {
                           loop31:
                           while(true)
                           {
                              loop32:
                              while(true)
                              {
                                 §§push(this.§9S§(false));
                                 loop33:
                                 while(_loc5_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop30;
                                       }
                                       addr412:
                                       loop50:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§<=§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§<=§ = §§pop();
                                          §§push(this.§<=§);
                                          if(_loc5_)
                                          {
                                             §§push(0);
                                             loop51:
                                             while(true)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.§<=§ = 0;
                                                         if(!_loc4_)
                                                         {
                                                            addr374:
                                                            §§push(this.§5_§);
                                                            loop52:
                                                            while(true)
                                                            {
                                                               §§push(§case §);
                                                               while(true)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §1! §.updatePigAnimations(param1);
                                                                        addr359:
                                                                        addr389:
                                                                        §§push(!§1! §.camera.isOnCastleView());
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr370:
                                                                                 §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr334:
                                                                                    §§push(§1! §.camera.mCurrentAction != §2!1§.§^4§);
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       continue loop33;
                                                                                    }
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       addr348:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          this.§>!6§(§^§);
                                                                                          addr353:
                                                                                       }
                                                                                       break loop32;
                                                                                    }
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§1! §.objects.mMightyEagleAdded)
                                                                                             {
                                                                                                if(!§1! §.objects.mSardineCanAdded)
                                                                                                {
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      break loop32;
                                                                                                   }
                                                                                                   this.§=S§(§9!F§);
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             if(_loc4_ && _loc2_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§push(Boolean(§1! §.objects.mMightyEagleHasTouchedGround));
                                                                                             loop45:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§push(§1! §.objects.mMightyEagleTimer > 5500);
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§=S§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                         addr515:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr512:
                                                                                                   }
                                                                                                   else if(§1! §.objects.mMightyEagleHasTouchedGround)
                                                                                                   {
                                                                                                      addr476:
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         this.§]q§ = §;!5§;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                               addr451:
                                                                                                            }
                                                                                                         }
                                                                                                         addr496:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§]q§ = §;!5§;
                                                                                                            _loc2_ = §1! §.objects.isWorldAtSleep();
                                                                                                            §§push(!_loc2_);
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr730:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr732:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(!this.§`!§);
                                                                                                                           addr722:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr723:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§push(this.§2f§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > 0);
                                                                                                                                       continue loop50;
                                                                                                                                    }
                                                                                                                                    addr691:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr731:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§push(this.§`!§);
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              §§push(!§§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§2f§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(6000);
                                                                                                                                                addr682:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                   addr683:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§`!§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§push(this.§[§());
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr632:
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§2f§ = 15000;
                                                                                                                                                                     this.§`!§ = true;
                                                                                                                                                                     if(_loc4_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        break loop32;
                                                                                                                                                                     }
                                                                                                                                                                     addr993:
                                                                                                                                                                     addr993:
                                                                                                                                                                     addr993:
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                               addr643:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr667);
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                         addr665:
                                                                                                                                                      }
                                                                                                                                                      loop26:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         continue loop0;
                                                                                                                                                         addr598:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(!§1! §.objects.mSardineCanAdded);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop33;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr269:
                                                                                                                                                §§push(this.§<=§);
                                                                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop51;
                                                                                                                                                }
                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      if(§1! §.objects.isWorldAtSleep())
                                                                                                                                                      {
                                                                                                                                                         addr299:
                                                                                                                                                         §§push(§[o§.§='§.objects.mMightyEagleAdded);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop45;
                                                                                                                                                               }
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        this.§>!6§(§^§);
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr214:
                                                                                                                                                                           §§push(!§1! §.camera.isOnCastleView());
                                                                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr223:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§push(§1! §.camera.mCurrentAction == §2!1§.§^4§);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr223);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr185:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                       }
                                                                                                                                                                                       this.§>!6§(§^§);
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr993);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop32;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr214);
                                                                                                                                                                                 addr224:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr185);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr299);
                                                                                                                                                                           addr237:
                                                                                                                                                                           addr225:
                                                                                                                                                                        }
                                                                                                                                                                        addr978:
                                                                                                                                                                        if(this.§<=§ <= 0)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop51;
                                                                                                                                                                           }
                                                                                                                                                                           break loop32;
                                                                                                                                                                        }
                                                                                                                                                                        break loop32;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr515);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr496);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr237);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr359);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr334);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§]q§ = 0;
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            this.§<=§ = 2000;
                                                                                                                                                            addr236:
                                                                                                                                                            §§goto(addr225);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr588:
                                                                                                                                                            §§push(!§1! §.objects.mMightyEagleAdded);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§goto(addr588);
                                                                                                                                                               }
                                                                                                                                                               addr587:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§[§());
                                                                                                                                                                  continue loop43;
                                                                                                                                                               }
                                                                                                                                                               this.§=S§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop32;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr557:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr978);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr389);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §1! §.updatePigAnimations(param1);
                                                                                                                                                }
                                                                                                                                                §§goto(addr214);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr767);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    loop8:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§9S§(false));
                                                                                                                                       while(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             continue loop50;
                                                                                                                                          }
                                                                                                                                          addr39:
                                                                                                                                          if(_loc4_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr47:
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && param1))
                                                                                                                                             {
                                                                                                                                                addr61:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         this.§>!6§(§case §);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr124:
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§1! §.camera.mCurrentAction == §2!1§.§^4§);
                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr39);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr223);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr47);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr269);
                                                                                                                                                            }
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  addr83:
                                                                                                                                                                  break loop32;
                                                                                                                                                               }
                                                                                                                                                               addr798:
                                                                                                                                                               break loop32;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr512);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr978);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr224);
                                                                                                                                                   }
                                                                                                                                                   break loop32;
                                                                                                                                                }
                                                                                                                                                §§goto(addr798);
                                                                                                                                             }
                                                                                                                                             §§goto(addr707);
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr124);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr722);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr598);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr575);
                                                                                                                                                }
                                                                                                                                                addr596:
                                                                                                                                             }
                                                                                                                                             §§goto(addr370);
                                                                                                                                          }
                                                                                                                                          §§goto(addr61);
                                                                                                                                       }
                                                                                                                                       addr760:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr707:
                                                                                                                                 }
                                                                                                                                 §§goto(addr683);
                                                                                                                              }
                                                                                                                              addr706:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr731);
                                                                                                                           }
                                                                                                                           continue loop43;
                                                                                                                        }
                                                                                                                        §§goto(addr732);
                                                                                                                        addr697:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr596);
                                                                                                                        §§push(!§1! §.objects.isPigsAlive());
                                                                                                                     }
                                                                                                                     §§goto(addr686);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr634);
                                                                                                   }
                                                                                                   §§goto(addr451);
                                                                                                }
                                                                                                §§goto(addr706);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr697);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr529);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr723);
                                                                        }
                                                                        §§goto(addr643);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§5_§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§ i§);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              §§push(this.§5_§);
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 addr976:
                                                                                 if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                 {
                                                                                    §§goto(addr978);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr976:
                                                                              }
                                                                              continue loop52;
                                                                              break loop32;
                                                                           }
                                                                           §§goto(addr269);
                                                                           §§goto(addr978);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr811:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              addr812:
                                                                              _loc3_ = §1! §.activeObject;
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 addr970:
                                                                                 if(!_loc3_ || _loc3_.§8!'§ < _loc3_.§[!3§)
                                                                                 {
                                                                                    addr922:
                                                                                    §§push(_loc3_ && _loc3_ is § p§);
                                                                                    §§push(_loc3_ && _loc3_ is § p§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr933:
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                §§pop();
                                                                                                §§push(!(_loc3_ as §4!;§).§;$§);
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr909:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr914:
                                                                                                                  §§push(_loc3_.getSpecialAnimationProgress());
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() >= 0);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr860:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                 {
                                                                                                                                    this.§3R§ = true;
                                                                                                                                    this.§>!6§(§ i§);
                                                                                                                                    addr879:
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr830:
                                                                                                                                       §1! §.activeObject = null;
                                                                                                                                       if(!(_loc4_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§>!6§(§ i§);
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr830);
                                                                                                                                          }
                                                                                                                                          addr973:
                                                                                                                                          break loop32;
                                                                                                                                       }
                                                                                                                                       §§goto(addr879);
                                                                                                                                    }
                                                                                                                                    §§goto(addr972);
                                                                                                                                 }
                                                                                                                                 §§goto(addr914);
                                                                                                                              }
                                                                                                                              §§goto(addr879);
                                                                                                                           }
                                                                                                                           §§goto(addr830);
                                                                                                                        }
                                                                                                                        §§goto(addr922);
                                                                                                                     }
                                                                                                                     §§goto(addr909);
                                                                                                                  }
                                                                                                                  §§goto(addr945);
                                                                                                               }
                                                                                                               §§goto(addr955);
                                                                                                            }
                                                                                                            §§goto(addr933);
                                                                                                         }
                                                                                                         §§goto(addr860);
                                                                                                      }
                                                                                                      §§goto(addr922);
                                                                                                   }
                                                                                                   §§goto(addr955);
                                                                                                }
                                                                                                §§goto(addr909);
                                                                                                addr941:
                                                                                             }
                                                                                             §§goto(addr922);
                                                                                          }
                                                                                          §§goto(addr860);
                                                                                       }
                                                                                       §§goto(addr970);
                                                                                    }
                                                                                    §§goto(addr922);
                                                                                 }
                                                                                 §§goto(addr973);
                                                                              }
                                                                              §§goto(addr941);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§5_§);
                                                                           }
                                                                        }
                                                                        §§goto(addr976);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr803:
                                                                        §§push(§%]§);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§goto(addr811);
                                                                        }
                                                                     }
                                                                     §§goto(addr976);
                                                                  }
                                                                  §§goto(addr812);
                                                               }
                                                            }
                                                         }
                                                         addr990:
                                                         this.§<=§ = 1000;
                                                         §§goto(addr993);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr374);
                                                }
                                                addr757:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   §§push(§§pop() <= §§pop());
                                                   addr759:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr760);
                                                      }
                                                      §§goto(addr747);
                                                   }
                                                   continue loop51;
                                                }
                                             }
                                             if(!§1! §.slingshot.updateScoreForRemainingBirds())
                                             {
                                                this.§>!6§(LEVEL_STATE_VICTORY2_END,true);
                                                break loop32;
                                             }
                                             if(!_loc4_)
                                             {
                                                §§goto(addr990);
                                             }
                                             §§goto(addr993);
                                          }
                                          §§goto(addr691);
                                       }
                                    }
                                    §§goto(addr598);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr587);
                                          }
                                          §§goto(addr557);
                                       }
                                       §§goto(addr759);
                                    }
                                    §§goto(addr730);
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr757);
            }
         }
      }
      
      protected function §=S§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!this.§`!§)
            {
               this.§`!§ = true;
            }
            §§push(new Date().time - §1! §.slingshot.timeOfLastBirdShot);
            loop0:
            while(true)
            {
               §§push(6000);
               loop1:
               while(§§pop() >= §§pop())
               {
                  loop2:
                  while(!§1! §.slingshot.mDragging)
                  {
                     loop3:
                     while(true)
                     {
                        if(§1! §.objects.isWorldAtSleep())
                        {
                           loop4:
                           while(true)
                           {
                              this.§2f§ = Math.min(this.§2f§,3500);
                              while(true)
                              {
                                 addr49:
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§>!6§(param1,param2);
                                    addr65:
                                    while(true)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                §§goto(addr24);
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§2f§);
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(_loc3_ || param2)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr49);
                                    }
                                    §§goto(addr65);
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr24:
                        return;
                     }
                  }
                  return;
               }
               return;
            }
         }
         §§goto(addr61);
      }
      
      public function §9S§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5_§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                        }
                        else
                        {
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(this.§5_§);
                                             while(true)
                                             {
                                                §§push(§9!F§);
                                                addr122:
                                                while(_loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr134:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  return §§pop();
                                                                  addr147:
                                                               }
                                                               addr137:
                                                               while(_loc2_)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr99:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        §§push(!§§pop());
                                                                        addr101:
                                                                        while(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§pop();
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  continue loop18;
                                                                  §§goto(addr137);
                                                               }
                                                               continue loop5;
                                                               addr61:
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      addr132:
                                                   }
                                                   §§goto(addr147);
                                                }
                                                continue loop1;
                                                addr96:
                                                §§push(this.§5_§);
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc2_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr44:
                                                      §§push(!§§pop());
                                                      if(_loc2_ || param1)
                                                      {
                                                         addr52:
                                                         if(_loc3_ && param1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr86:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr96);
                                                                           }
                                                                           §§goto(addr150);
                                                                           §§goto(addr44);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr86:
                                                                        addr162:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr134);
                                                               }
                                                               §§goto(addr101);
                                                               §§goto(addr52);
                                                            }
                                                            §§goto(addr61);
                                                            addr70:
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr99);
                                                         }
                                                         §§goto(addr61);
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr122);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§5_§);
                                                continue loop0;
                                             }
                                             addr177:
                                          }
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
      
      public function §;Q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§5_§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc1_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           addr71:
                           return this.§5_§ == §9!F§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1.delta != 0)
            {
               if(_loc2_ || _loc3_)
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
            §§push(this.§=V§);
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
                     do
                     {
                        §§pop();
                        §§push(!§1! §.mReadyToRun);
                     }
                     while(_loc3_);
                     
                  }
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§1! §.slingshot.mDragging));
                        §§push(Boolean(§1! §.slingshot.mDragging));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(Boolean(§1! §.camera.mDragging));
                              }
                              addr151:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.§5_§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§ i§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop());
                                             loop10:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(§1! §.isPlayingReplay())
                                                                  {
                                                                     §1! §.changeReplaySpeed(param1);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr99:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5_§);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§^§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  §1! §.camera.adjustManualScale(param1);
                                                                  break;
                                                                  addr68:
                                                               }
                                                               §§goto(addr160);
                                                            }
                                                            addr107:
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         return;
                                                         addr55:
                                                      }
                                                      §§pop();
                                                      §§goto(addr99);
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop4;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr107);
                              }
                           }
                        }
                     }
                  }
                  addr160:
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §4f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>F§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || param2)
         {
            if(!this.§=V§)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
               loop0:
               while(true)
               {
                  if(!_loc3_.isDefaultPrevented())
                  {
                     loop1:
                     while(true)
                     {
                        §!$§.§"r§();
                        if(!this.§9S§(false))
                        {
                           if(!§1! §.isPlayingReplay())
                           {
                              if(_loc6_ && _loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§1! §.activeObject));
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc6_ && this)
                                          {
                                             break;
                                          }
                                          §§push(this.§5_§ == §%]§);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc6_ && _loc3_)
                                                {
                                                   break;
                                                   addr142:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      addr152:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  this.§3R§ = false;
                                                                  while(_loc5_)
                                                                  {
                                                                     continue loop0;
                                                                     §1! §.activatePowerup();
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break loop10;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                               addr98:
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         _loc4_ = §1! §.screenToBox2D(param1,param2);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!§1! §.slingshot.canStartDragging(_loc4_))
                                                            {
                                                               §1! §.camera.startDragging(param1,param2);
                                                               if(_loc6_ && param1)
                                                               {
                                                                  this.§>!6§(§^§);
                                                                  addr276:
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr273:
                                                                     §1! §.slingshot.startDragging();
                                                                     §§goto(addr276);
                                                                  }
                                                                  addr235:
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         else if(true)
                                                         {
                                                            addr277:
                                                            §1! §.camera.startDragging(param1,param2);
                                                            if(_loc5_)
                                                            {
                                                               §1! §.resetReplaySpeed();
                                                               break loop4;
                                                            }
                                                            break loop4;
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      addr94:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§3R§);
                                                      if(_loc5_ || param2)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr152);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr142);
                                 }
                              }
                           }
                           §§goto(addr277);
                        }
                        break;
                     }
                     return;
                  }
                  addr202:
                  return;
               }
            }
            §§goto(addr98);
         }
         addr36:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            §§push(this.§=V§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  addr200:
                  §1! §.camera.dragToNewPoint(param1,param2);
                  loop2:
                  while(true)
                  {
                     addr188:
                     while(true)
                     {
                        §1! §.camera.stopDragging();
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  addr205:
                  addr194:
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §!$§.§`?§();
                     while(this.§5_§ == §<h§)
                     {
                        if(!(_loc4_ && param1))
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           this.§>!6§(§^§);
                           if(_loc5_ || _loc3_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr200);
                        }
                        §§push(!isNaN(param1));
                        if(!_loc4_)
                        {
                           addr161:
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr180:
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    addr199:
                                    if(!isNaN(param2))
                                    {
                                       §§goto(addr200);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr205);
                              }
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr180);
                     }
                     if(§1! §.slingshot.mDragging)
                     {
                        _loc3_ = §1! §.screenToBox2D(param1,param2);
                        if(_loc5_ || param1)
                        {
                           §1! §.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                           do
                           {
                              if(§1! §.slingshot.canShootTheBird())
                              {
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       §1! §.slingshot.shoot();
                                    }
                                    addr131:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    addr110:
                                    while(true)
                                    {
                                       this.§>!6§(§%]§);
                                       continue loop6;
                                    }
                                 }
                                 addr134:
                              }
                              else
                              {
                                 §1! §.slingshot.cancelDragging();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(true)
                                    {
                                       §§goto(addr144);
                                    }
                                    §§goto(addr110);
                                 }
                              }
                              while(!_loc5_)
                              {
                                 §§goto(addr134);
                              }
                           }
                           while(_loc4_ && _loc3_);
                           
                           §§goto(addr144);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr144);
                  }
               }
               addr144:
               if(§1! §.camera.mDragging)
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr155);
                  }
                  §§goto(addr200);
               }
               return;
            }
            §§goto(addr161);
         }
         §§goto(addr194);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.§=V§)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr36);
               }
               else
               {
                  addr110:
                  §1! §.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§1! §.slingshot.mDragging)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc3_ = §1! §.screenToBox2D(param1,param2);
                  if(_loc4_ || _loc3_)
                  {
                     §1! §.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(_loc4_)
                     {
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr120);
               }
            }
            else if(§1! §.camera.mDragging)
            {
               if(!(_loc5_ && param1))
               {
                  §§goto(addr110);
               }
            }
            addr115:
            this.§;i§ = param1;
            if(!_loc5_)
            {
               addr120:
               this.§8t§ = param2;
            }
            return;
         }
         addr36:
      }
      
      public function §=z§() : Point
      {
         return new Point(this.§;i§,this.§8t§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§1!E§.assign(this.§1!E§.getValue() + param1);
            do
            {
               this.§1u§(§&S§);
            }
            while(_loc3_);
            
         }
      }
      
      override public function getScore() : int
      {
         return this.§1!E§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§[o§.§='§.objects.mMightyEagleAdded)
            {
               if(!(_loc4_ && _loc3_))
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
                  §§push(§0$§.§2Q§(§0$§.§[C§).getEagleScore());
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
         return this.§=V§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=V§ = param1;
         }
      }
   }
}
